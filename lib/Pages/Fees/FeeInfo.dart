
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class Feeinfo extends StatefulWidget {
  const Feeinfo({super.key});

  @override
  State<Feeinfo> createState() => _FeeinfoState();
}

class _FeeinfoState extends State<Feeinfo> {
  List<String> charges = [
    'Charges 1',
    'Charges 2',
    'Charges 3',
    'Charges 4',
    'Charges 5'
  ];

  List<int> amount = [50000, 50000, 20000, 50000, 50000];
  List<bool> isSelected = [false, false, false, false, false];
  String? selectedYear;
  bool isChargesAdded = false;
  bool removeAllSelected = false;
  int totalSelectedCharges = 0; // To store the total amount of selected charges

  DateTime? selectedDate;
  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }
  String? selectedValue; // For storing the selected dropdown value
  final TextEditingController _controller = TextEditingController(); // Controller for TextField

  // Options for dropdown
  final List<String> options = ['Paid', 'Unpaid'];


  void _showAddChargesBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setModalState) {
            return Container(
              padding: const  EdgeInsets.all(16.0),
              height: MediaQuery.of(context).size.height * 0.6,
              child: Column(
                children: [
               const    Text(
                    'Charges Selected',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  CheckboxListTile(
                    title: const Text('Remove All Charges'),
                    value: removeAllSelected,
                    onChanged: (bool? value) {
                      setModalState(() {
                        removeAllSelected = value ?? false;

                        if (removeAllSelected) {
                          // Unselect all items
                          for (int i = 0; i < isSelected.length; i++) {
                            isSelected[i] = false;
                          }

                          // Reset total selected charges
                          totalSelectedCharges = 0;
                        }
                      });
                    },
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: charges.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: GestureDetector(
                            onTap: () {
                              setModalState(() {
                                isSelected[index] = !isSelected[index];
                                if (isSelected[index]) {
                                  removeAllSelected = false;
                                }
                              });
                            },
                            child: Icon(
                              isSelected[index]
                                  ? Icons.check_circle
                                  : Icons.radio_button_unchecked,
                              color:
                                  isSelected[index] ? Colors.blue : Colors.grey,
                            ),
                          ),
                          title: Text(charges[index]),
                          subtitle: Text('₹ ${amount[index]}'),
                        );
                      },
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (isSelected.contains(true)) {
                        setState(() {
                          isChargesAdded = true;
                          totalSelectedCharges = 0;

                          // Calculate total of selected charges
                          for (int i = 0; i < isSelected.length; i++) {
                            if (isSelected[i]) {
                              totalSelectedCharges += amount[i];
                            }
                          }
                        });
                      } else if (removeAllSelected) {
                        // If "Remove All Charges" is selected, reset everything
                        setState(() {
                          isChargesAdded = false;
                          totalSelectedCharges = 0; // Reset to 0
                        });
                      }
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                      const     EdgeInsets.symmetric(horizontal: 60, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      backgroundColor: Colors.blueAccent,
                    ),
                    child:  Text('Okay'),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(bottom: 12, top: 12, left: 15, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    _showAddChargesBottomSheet(context);
                  },
                  child: Container(
                    height: 45,
                    width: 187,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29),
                      color: const Color.fromRGBO(251, 251, 251, 1),
                      border: Border.all(
                        width: 0.7,
                        color: const Color.fromRGBO(241, 241, 241, 1),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/images/Vector.png",
                          color: Colors.blue,
                        ),
                        Text(
                          isChargesAdded
                              ? 'Charges Added'
                              : 'Add Extra Charges',
                          style:const  TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 46.h,
                  width: 166.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    color: const Color.fromRGBO(251, 251, 251, 1),
                    border: Border.all(
                      width: 0.7,
                      color: const Color.fromRGBO(241, 241, 241, 1),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/images/sent.png",
                        color: Colors.blue,
                      ),
                      const Text(
                        "Sent Reminder",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 22,
              right: 22,
              top: 10,
            ),
            child: TextField(
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Contact Number",
                hintStyle:const  TextStyle(color: Color.fromRGBO(186, 186, 186, 1)),
                prefixIcon:const  Icon(
                  Icons.phone,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide:const  BorderSide(
                    color: Color.fromRGBO(241, 241, 241, 1),
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide:const  BorderSide(
                    color: Color.fromRGBO(241, 241, 241, 1),
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 22,
              right: 22,
              top: 15,
            ),
            child: TextField(
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Plan",
                hintStyle:const  TextStyle(color: Color.fromRGBO(186, 186, 186, 1)),
                prefixIcon: Image.asset("assets/images/plan.png"),
                suffixIcon: Image.asset(
                  "assets/images/Subtract.png",
                  height: 50,
                  width: 50,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide:const  BorderSide(
                    color: Color.fromRGBO(241, 241, 241, 1),
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(241, 241, 241, 1),
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 22,
              right: 22,
              top: 15,
            ),
            child: TextField(
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              keyboardType: TextInputType.number,
              controller: TextEditingController(
                text: totalSelectedCharges != 0
                    ? totalSelectedCharges.toString()
                    : null,
              ),
              decoration: InputDecoration(
                hintText: totalSelectedCharges == 0 ? "Extra Charges" : null,
                hintStyle:const  TextStyle(color: Color.fromRGBO(186, 186, 186, 1)),
                prefixIcon: const Icon(
                  Icons.currency_rupee,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
                suffixIcon: InkWell(
                  onTap: () {
                    _showAddChargesBottomSheet(context);
                  },
                  child:const  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blue,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(241, 241, 241, 1),
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(241, 241, 241, 1),
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 22,
              right: 22,
              top: 10,
            ),
            child: TextField(
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: totalSelectedCharges.toString() + " +525 (GST)",
                hintStyle:const  TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
                prefixIcon:const  Icon(
                  Icons.phone,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide:const  BorderSide(
                    color: Color.fromRGBO(241, 241, 241, 1),
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide:const  BorderSide(
                    color: Color.fromRGBO(241, 241, 241, 1),
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 22,
              right: 22,
              top: 10,
            ),
            child: TextField(
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: selectedDate != null
                    ? "${DateFormat('dd-MM-yyyy').format(selectedDate!)} (Due Date )"
                    : "Select Date",
                hintStyle: const TextStyle(
                    fontSize: 15,
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w500),
                //  hintStyle: TextStyle(color: Color.fromRGBO(186, 186, 186, 1)),
                prefixIcon: InkWell(
                  onTap: () {
                    _selectDate(context);
                  },
                  child: const Icon(
                    Icons.calendar_month_outlined,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(241, 241, 241, 1),
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(241, 241, 241, 1),
                    width: 1,
                  ),
                ),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(
              left: 22,
              right: 22,
              top: 15,
            ),
            child: TextField(
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Plan",
                hintStyle:const  TextStyle(color: Color.fromRGBO(186, 186, 186, 1)),
                prefixIcon: Image.asset("assets/images/status.png"),
                suffixIcon: InkWell(
                  onTap: () {
                    
                  },
                  
                  child: Icon(Icons.keyboard_arrow_down, color: Colors.blue,)), 
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide:const  BorderSide(
                    color: Color.fromRGBO(241, 241, 241, 1),
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(241, 241, 241, 1),
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
        //   Padding(
        //   padding: const EdgeInsets.only(left: 22, right: 22, top: 10),
        //   child: Column(
        //     children: [
        //       TextField(
        //         controller: _controller, // Set the controller here
        //         style: const TextStyle(
        //             fontSize: 15, fontWeight: FontWeight.w500),
        //         readOnly: true, // Make it read-only to prevent manual input
        //         decoration: InputDecoration(
        //           hintText: "Status",
        //           hintStyle: TextStyle(
        //               color: Color.fromRGBO(186, 186, 186, 1)),
        //           prefixIcon: GestureDetector(
        //             onTap: () async {
        //               // Show dropdown when prefix icon is tapped
        //               final RenderBox renderBox =
        //                   context.findRenderObject() as RenderBox;
        //               final overlay =
        //                   Overlay.of(context).context.findRenderObject() as RenderBox;

        //               // Show dropdown menu
        //               final result = await showMenu(
        //                 context: context,
        //                 position: RelativeRect.fromRect(
        //                   Rect.fromPoints(
        //                     renderBox.localToGlobal(Offset.zero, ancestor: overlay),
        //                     renderBox.localToGlobal(
        //                         renderBox.size.bottomRight(Offset.zero),
        //                         ancestor: overlay),
        //                   ),
        //                   Offset.zero & overlay.size,
        //                 ),
        //                 items: options
        //                     .map(
        //                       (value) => PopupMenuItem<String>(
        //                         value: value,
        //                         child: Text(value),
        //                       ),
        //                     )
        //                     .toList(),
        //               );

        //               // Update selected value and text field if an option is selected
        //               if (result != null) {
        //                 setState(() {
        //                   selectedValue = result;
        //                   _controller.text = selectedValue!;
        //                 });
        //               }
        //             },
        //             child: Icon(Icons.calendar_today, color: Colors.blue),
        //           ),
        //           suffixIcon: Icon(Icons.keyboard_arrow_down, color: Colors.grey),
        //           border: OutlineInputBorder(
        //             borderRadius: BorderRadius.circular(26),
        //             borderSide: BorderSide(
        //               color: Color.fromRGBO(241, 241, 241, 1),
        //               width: 1,
        //             ),
        //           ),
        //           focusedBorder: OutlineInputBorder(
        //             borderRadius: BorderRadius.circular(26),
        //             borderSide: BorderSide(
        //               color: Color.fromRGBO(241, 241, 241, 1),
        //               width: 1,
        //             ),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        ],
      ),
    );
  }
}
