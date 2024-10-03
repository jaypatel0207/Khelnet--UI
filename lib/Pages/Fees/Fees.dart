import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:intl/intl.dart';
import 'package:khelnet/Controller/Tabcontroller.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';
import 'package:khelnet/Custome%20Widget/Gradient.dart';
import 'package:khelnet/Pages/Fees/History.dart';

import 'package:khelnet/Pages/Fees/Upcoming.dart';
import 'package:khelnet/Pages/Fees/setting.dart';
import 'package:khelnet/test.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class Fees1 extends StatefulWidget {
  const Fees1({super.key});

  @override
  State<Fees1> createState() => _FeesState();
}

class _FeesState extends State<Fees1> with SingleTickerProviderStateMixin {
  final CustomTabController tabController = Get.put(CustomTabController());
  List<bool> selectedItems = List.generate(10, (index) => false);
  bool isSelectionMode = false;
    int selectedContainerIndex = -1; // Variable to track the selected container


  void toggleSelection(int index) {
    if (isSelectionMode) {
      setState(() {
        selectedItems[index] = !selectedItems[index];
      });
    }
  }

  void handleSelectionMode() {
    setState(() {
      isSelectionMode = !isSelectionMode;
      if (!isSelectionMode) {
        selectedItems = List.generate(10, (index) => false); // Clear selections
      }
    });
  }

  void handleButtonPress() {
    List<int> selectedIndices = [];
    for (int i = 0; i < selectedItems.length; i++) {
      if (selectedItems[i]) {
        selectedIndices.add(i);
      }
    }
    // Process the selected items
    print("Selected items: $selectedIndices");
  }

  DateTimeRange? selectedDateRange;

  

  // Function to open date range picker
 Future<DateTimeRange?> _selectDateRange(BuildContext context) async {
  final DateTimeRange? picked = await showDateRangePicker(
    context: context,
    firstDate: DateTime(2020), // Start date for the picker
    lastDate: DateTime(2030),  // End date for the picker
  );

  if (picked != null) {
    print("Picked Start Date: ${picked.start}");
    print("Picked End Date: ${picked.end}");
    return picked; // Return the selected date range
  } else {
    print("No date range selected");
    return null;
  }
}


  Widget buildTabButton(String title, dynamic iconOrImage, String tab,
      {bool isImage = false}) {
    return GestureDetector(
      onTap: () => tabController.changeTab(tab),
      child: Obx(() {
        Color iconColor = tabController.selectedTab.value == tab
            ? Color.fromRGBO(204, 23, 23, 1)
            : Colors.blue;
        Color textColor = tabController.selectedTab.value == tab
            ? Color.fromRGBO(204, 23, 23, 1)
            : Colors.black;

        return GestureDetector(
          onTap: () => navigateToPage(tab),
          child: Container(
            height: 70,
            width: 85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                width: 1,
                color: const Color.fromRGBO(186, 186, 186, 1),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isImage
                    ? Image.asset(iconOrImage, height: 26, width: 26)
                    : Icon(iconOrImage, color: iconColor),
                // SizedBox(height: 7),
                Text(
                  title,
                  style: TextStyle(color: textColor),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  void navigateToPage(String tab) {
    switch (tab) {
      case 'past_dues':
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => PastDuesPage()),
        // );
        break;
      case 'upcoming':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Upcoming()),
        );
        break;
      case 'history':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => History()),
        );
        break;
      case 'installment':
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => InstallmentPage()),
        // );
        break;
      default:
        break;
    }
  }

  DateTime _selectedDate = DateTime.now(); // Current date initially

  // Function to show the date picker dialog
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000), // Define the range
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }

  // DateTimeRange? selectedDateRange;

  // // Function to open date range picker
  // Future<void> _selectDateRange(BuildContext context) async {
  //   final DateTimeRange? picked = await showDateRangePicker(
  //     context: context,
  //     firstDate: DateTime(2020),   // Start date for the picker
  //     lastDate: DateTime(2030),    // End date for the picker
  //   );

  //   // Ensure dates are picked, and update the state
  //   if (picked != null && picked != selectedDateRange) {
  //     setState(() {
  //       selectedDateRange = picked;   // Updating selected date range
  //     });
  //   }
  // }

// if (picked != null && picked != selectedDateRange) {
//    print('Selected range: ${picked.start} to ${picked.end}');  // Add this line to check if dates are selected
//    setState(() {
//      selectedDateRange = picked;
//    });
// }

  Widget buildContent(String content) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        content,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }

  Future _navigateToUpcoming() {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Upcoming()),
    );
  }

  void showCustomBottomSheet() {
    // Resetting state when opening the BottomSheet
    setState(() {
      showOptions = false; // Ensure it's reset
    });

    Get.bottomSheet(
      isScrollControlled: true,
      Container(
        height: 641.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(16.0),
        child: StatefulBuilder(
          // Use StatefulBuilder to manage state within the BottomSheet
          builder: (BuildContext context, StateSetter setModalState) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 170.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 4,
                            width: 27,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(23),
                                color: Color.fromRGBO(241, 241, 241, 1)),
                          ),
                          SizedBox(
                            height: 1.5.h,
                          ),
                          Container(
                            height: 3,
                            width: 19,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(23),
                                color: Color.fromRGBO(241, 241, 241, 1)),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 130.w,
                      ),
                      InkWell(
                        onTap: () {
                          Get.back(); // Close the bottom sheet
                        },
                        child: Icon(
                          Icons.cancel,
                          color: Colors.grey,
                          size: 35,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 9, left: 10, right: 10, bottom: 9),
                    child: Container(
                      height: 64.h,
                      width: 374.w,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(241, 241, 241, 1),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 1,
                              color: Color.fromRGBO(241, 241, 241, 1))),
                      child: Center(
                        child: ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Image.asset("assets/images/modi.png"),
                          ),
                          title: Text(
                            "Narendra Modi",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(0, 0, 0, 1)),
                          ),
                          subtitle: Text(
                            "Khelnet Sports Academy Morning",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                color: Color.fromRGBO(0, 0, 0, 1)),
                          ),
                          trailing: InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Color.fromRGBO(186, 186, 186, 1),
                              )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 12, right: 12, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Monthly Khelent Plan",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color.fromRGBO(0, 0, 0, 1)),
                        ),
                        Container(
                          height: 32.h,
                          width: 81.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32),
                              color: Color.fromRGBO(223, 92, 92, 0.26),
                              border: Border.all(
                                  width: 1,
                                  color: Color.fromRGBO(204, 23, 23, 1))),
                          child: Center(
                              child: Text(
                            "Plan Due",
                            style: TextStyle(
                                color: Color.fromRGBO(204, 23, 23, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          )),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                     const  Padding(
                        padding:  EdgeInsets.only(left: 10),
                        child: const Text(
                          "Transaction Date : ",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color.fromRGBO(186, 186, 186, 1),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100.w,
                      ),
                      Text(
                        DateFormat('dd/MM/yyyy').format(_selectedDate),
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      InkWell(
                          onTap: () {
                            _selectDate(context);
                          },
                          child: Image.asset("assets/images/Subtract.png",
                              height: 25, width: 25))
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Stack(children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(29),
                        border: Border.all(color: Colors.grey),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            // Fixed height for the main section
                            child: Row(
                              children: [
                                Icon(Icons.grid_view_outlined,
                                    color: Colors.black, size: 24),
                                SizedBox(width: 10),
                                Text(
                                  chargesAdded
                                      ? "Charges Added"
                                      : "Add Extra Charges",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    // Use setModalState to update the state inside the BottomSheet
                                    setModalState(() {
                                      showOptions = !showOptions;
                                    });
                                  },
                                  child: Icon(
                                    showOptions ? Icons.close : Icons.add,
                                    color: Colors.blue,
                                    size: 24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          AnimatedSize(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                            child: showOptions
                                ? Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        ...options.map((option) {
                                          return ListTile(
                                            leading: GestureDetector(
                                              onTap: () {
                                                setModalState(() {
                                                  _toggleSelection(option);
                                                });
                                              },
                                              child: Icon(
                                                selectedOptions.contains(option)
                                                    ? Icons.check_circle
                                                    : Icons
                                                        .radio_button_unchecked,
                                                color: selectedOptions
                                                        .contains(option)
                                                    ? Colors.blue
                                                    : Colors.grey,
                                              ),
                                            ),
                                            title: Text(
                                              option['title'],
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            trailing: Text(
                                              '₹ ${option['amount']}',
                                              style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.blue),
                                            ),
                                          );
                                        }).toList(),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 15, bottom: 10),
                                          child: Center(
                                            child: InkWell(
                                              onTap: () {
                                                 setModalState(() {
                                                _onDone();
                                              });
                                              },
                                              child: Container(
                                                height: 62,
                                                width: 365,
                                                decoration: BoxDecoration(
                                                    border: Border.all(color: Colors.blue, width: 2),
                                          
                                                    borderRadius: BorderRadius.circular(103)),
                                                child: const Center(
                                                    child: Text(
                                                  "Done",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 18,
                                                      color: Colors.blue
                                                      ),
                                                )),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : SizedBox.shrink(),
                          ),
                        ],
                      ),
                    ),
                  ]),
    //    Padding(
    //   padding: const EdgeInsets.only(top: 20),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //     children: [
    //       // Cash Container
    //       GestureDetector(
    //         onTap: () {
    //           setState(() {
    //             selectedContainerIndex = 0; // Update the index for Cash
    //           });
    //         },
    //         child: AnimatedContainer(
    //           duration: Duration(milliseconds: 150), // Duration for the animation
    //           height: 40,
    //           width: 109,
    //           decoration: BoxDecoration(
    //             color: selectedContainerIndex == 0
    //                 ? Color.fromRGBO(13, 149, 211, 1) // Selected color
    //                 : Color.fromRGBO(248, 247, 247, 1), // Default color
    //             borderRadius: BorderRadius.circular(61),
    //             boxShadow: selectedContainerIndex == 0 // Shadow effect for selected
    //                 ? [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)]
    //                 : [],
    //           ),
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               Icon(
    //                 Icons.currency_rupee,
    //                 color: Color.fromRGBO(9, 96, 186, 1),
    //                 size: 15,
    //               ),
    //               SizedBox(width: 10),
    //               Text(
    //                 "Cash",
    //                 style: TextStyle(
    //                   fontSize: 15,
    //                   fontWeight: FontWeight.w500,
    //                   color: Color.fromRGBO(0, 0, 0, 1),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //       // UPI Container
    //       GestureDetector(
    //         onTap: () {
    //           setState(() {
    //             selectedContainerIndex = 1; // Update the index for UPI
    //           });
    //         },
    //         child: AnimatedContainer(
    //           duration: Duration(milliseconds: 150), // Duration for the animation
    //           height: 40,
    //           width: 109,
    //           decoration: BoxDecoration(
    //             color: selectedContainerIndex == 1
    //                 ? Color.fromRGBO(13, 149, 211, 1) // Selected color
    //                 : Color.fromRGBO(248, 247, 247, 1), // Default color
    //             borderRadius: BorderRadius.circular(61),
    //             boxShadow: selectedContainerIndex == 1 // Shadow effect for selected
    //                 ? [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)]
    //                 : [],
    //           ),
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               Icon(
    //                 Icons.account_balance,
    //                 color: Color.fromRGBO(9, 96, 186, 1),
    //                 size: 17,
    //               ),
    //               SizedBox(width: 10),
    //               Text(
    //                 "UPI",
    //                 style: TextStyle(
    //                   fontSize: 15,
    //                   fontWeight: FontWeight.w500,
    //                   color: Color.fromRGBO(0, 0, 0, 1),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //       // Others Container
    //       GestureDetector(
    //         onTap: () {
    //           setState(() {
    //             selectedContainerIndex = 2; // Update the index for Others
    //           });
    //         },
    //         child: AnimatedContainer(
    //           duration: Duration(milliseconds: 150), // Duration for the animation
    //           height: 40,
    //           width: 119,
    //           decoration: BoxDecoration(
    //             color: selectedContainerIndex == 2
    //                 ? Color.fromRGBO(13, 149, 211, 1) // Selected color
    //                 : Color.fromRGBO(248, 247, 247, 1), // Default color
    //             borderRadius: BorderRadius.circular(61),
    //             boxShadow: selectedContainerIndex == 2 // Shadow effect for selected
    //                 ? [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)]
    //                 : [],
    //           ),
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               Icon(
    //                 Icons.account_balance_wallet_outlined,
    //                 color: Color.fromRGBO(9, 96, 186, 1),
    //                 size: 17,
    //               ),
    //               SizedBox(width: 10),
    //               Text(
    //                 "Others",
    //                 style: TextStyle(
    //                   fontSize: 15,
    //                   fontWeight: FontWeight.w500,
    //                   color: Color.fromRGBO(0, 0, 0, 1),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // ), 


    Padding(
  padding: const EdgeInsets.only(top: 20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      // Cash Container
      GestureDetector(
        onTap: () {
          setModalState(() {
            selectedContainerIndex = 0; // Update the index for Cash
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 150), // Duration for the animation
          height: 40,
          width: 109,
          decoration: BoxDecoration(
            color: selectedContainerIndex == 0
                ? Color.fromRGBO(13, 149, 211, 1) // Selected color
                : Color.fromRGBO(248, 247, 247, 1), // Default color
            borderRadius: BorderRadius.circular(61),
            boxShadow: selectedContainerIndex == 0 // Shadow effect for selected
                ? [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)]
                : [],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Icon(
                Icons.currency_rupee,
color: selectedContainerIndex == 0
                ? Color.fromRGBO(248, 247, 247, 1) // Selected color
                : Color.fromRGBO(0, 0, 0, 1),                 size: 15,
              ),
              SizedBox(width: 10),
              Text(
                "Cash",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
 color: selectedContainerIndex == 0
                ? Color.fromRGBO(248, 247, 247, 1) // Selected color
                : Color.fromRGBO(0, 0, 0, 1),                ),
              ),
            ],
          ),
        ),
      ),
      // UPI Container
      GestureDetector(
        onTap: () {
          setModalState(() {
            selectedContainerIndex = 1; // Update the index for UPI
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 150), // Duration for the animation
          height: 40,
          width: 109,
          decoration: BoxDecoration(
            color: selectedContainerIndex == 1
                ? Color.fromRGBO(13, 149, 211, 1) // Selected color
                : Color.fromRGBO(248, 247, 247, 1), // Default color
            borderRadius: BorderRadius.circular(61),
            boxShadow: selectedContainerIndex == 1 // Shadow effect for selected
                ? [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)]
                : [],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.account_balance,
color: selectedContainerIndex == 1
                ? Color.fromRGBO(248, 247, 247, 1) // Selected color
                : Color.fromRGBO(0, 0, 0, 1),                 size: 17,
              ),
              SizedBox(width: 10),
              Text(
                "UPI",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
color: selectedContainerIndex == 1
                ? Color.fromRGBO(248, 247, 247, 1) // Selected color
                : Color.fromRGBO(0, 0, 0, 1),                 ),
              ),
            ],
          ),
        ),
      ),
      // Others Container
      GestureDetector(
        onTap: () {
          setModalState(() {
            selectedContainerIndex = 2; // Update the index for Others
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 150), // Duration for the animation
          height: 40,
          width: 119,
          decoration: BoxDecoration(
            color: selectedContainerIndex == 2
                ? Color.fromRGBO(13, 149, 211, 1) // Selected color
                : Color.fromRGBO(248, 247, 247, 1), // Default color
            borderRadius: BorderRadius.circular(61),
            boxShadow: selectedContainerIndex == 2 // Shadow effect for selected
                ? [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)]
                : [],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.account_balance_wallet_outlined,
color: selectedContainerIndex == 2
                ? Color.fromRGBO(248, 247, 247, 1) // Selected color
                : Color.fromRGBO(0, 0, 0, 1),                     size: 17,
              ),
              SizedBox(width: 10),
              Text(
                "Others",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
color: selectedContainerIndex == 2
                ? Color.fromRGBO(248, 247, 247, 1) // Selected color
                : Color.fromRGBO(0, 0, 0, 1),                     ),
              ),
            ],
          ),
        ),
      ),
    ],
  ),
), 


                  Padding(
                    padding: const EdgeInsets.only(top: 23),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.currency_rupee,
                            color: Color.fromRGBO(186, 186, 186, 1)),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          chargesAdded ? '${_calculateTotalAmount()}' : '',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "+525 (GST)",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(146, 146, 146, 1)),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 13.w,
                        ),
                        Column(
                          children: [
                            Image.asset("assets/images/Subtract.png"),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Total Amount ",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(186, 186, 186, 1)),
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                  selectedDateRange == null
                      ? 'Select Date Range'
                      : '${DateFormat('dd/MM/yy').format(selectedDateRange!.start)} - '
                        '${DateFormat('dd/MM/yy').format(selectedDateRange!.end)}',
                  style: TextStyle(fontSize: 18),
                ),

                IconButton(
                  icon: Icon(Icons.edit_calendar, color: Colors.blue),
                  onPressed: () async {
                    final DateTimeRange? picked = await _selectDateRange(context);
                    if (picked != null) {
                      setState(() {
                        selectedDateRange = picked;
                      });
                    }
                  },
                ),
                      ],
                    )
                  ),


SizedBox(height: 15.h,), 

                 GradientText(text: "Add Remarks ( Optional )", 
                
                 
                 gradient:LinearGradient(
                  begin: Alignment.centerLeft, 
                  end: Alignment.centerRight,
                  
                  colors:[
                      Color.fromRGBO(13, 149, 211, 1),
                          Color.fromRGBO(9, 96, 186, 1)
                  ])), 


SizedBox(height: 35.h,), 
                   Center(
                     child: InkWell(
                       onTap: () {},
                       child: Container(
                         height: 64.h,
                         width: 365.w,
                         decoration: BoxDecoration(
                             gradient: LinearGradient(
                                 begin: Alignment.centerLeft,
                                 end: Alignment.centerRight,
                                 colors: [
                                   Color.fromRGBO(13, 149, 211, 1),
                                   Color.fromRGBO(9, 96, 186, 1),
                                 ]),
                             borderRadius: BorderRadius.circular(84)),
                         child: Center(
                             child: Text(
                           "Make Payment Received",
                           style: TextStyle(
                               fontWeight: FontWeight.w700,
                               fontSize: 18,
                               color: Color.fromRGBO(251, 251, 251, 1)),
                         )),
                       ),
                     ),
                   ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  bool showOptions = false;
  bool chargesAdded = false;
  List<Map<String, dynamic>> selectedOptions = [];

  // Dummy options list
  final List<Map<String, dynamic>> options = [
    {"title": "Shuttle Fee", "amount": 50000},
    {"title": "Uniform Fee", "amount": 50000},
    {"title": "Admission Fee", "amount": 50000},
    {"title": "Kit Fee", "amount": 50000},
    {"title": "Kit Fee", "amount": 50000},
  ];

  void _toggleOptions() {
    setState(() {
      showOptions = !showOptions;
    });
  }

  // Function to handle option selection
  void _toggleSelection(Map<String, dynamic> option) {
    setState(() {
      if (selectedOptions.contains(option)) {
        selectedOptions.remove(option);
      } else {
        selectedOptions.add(option);
      }
    });
  }

  void _onDone() {
    setState(() {
      chargesAdded = true;
      showOptions = false;
    });
  }

  // Calculate total amount
  int _calculateTotalAmount() {
    return selectedOptions.fold(
        0, (sum, option) => sum + (option['amount'] as int));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: "Fees",
        actions: [
          IconButton(
              onPressed: () {
                Get.to(const Setting()); // Navigate to Setting page
              },
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            Stack(
              children: [
                Center(child: Image.asset("assets/images/card.png")),
                Positioned.fill(
                    child: Column(
                  children: [
                    SizedBox(
                      height: 7.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13, top: 8),
                      child: Row(
                        children: [
                          SizedBox(width: 40.h),
                          const Text(
                            "Total Money received",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 3),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 52,
                          ),
                          Icon(
                            Icons.currency_rupee,
                            color: Colors.white,
                            size: 20,
                          ),
                          Text("800000",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.white))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13, top: 5),
                      child: Row(
                        children: [
                          SizedBox(width: 42.h),
                          const Text(

                            "Today",
                            
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 1.5),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 52,
                          ),
                          Icon(
                            Icons.currency_rupee,
                            color: Colors.white,
                            size: 15,
                          ),
                          Text("800000",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Colors.white))
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 53, right: 55, top: 11),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.dashboard,
                                color: Colors.white,
                                size: 20,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text("View Dashboard",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      )))
                            ],
                          ),

                          InkWell(
                              onTap: () {},
                              child: Image.asset(
                                "assets/images/arrowright.png",
                                color: Colors.white,
                              ))
                          // IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward, color: Colors.white, size: 20,))
                        ],
                      ),
                    )
                  ],
                ))
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13, right: 13, top: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildTabButton(
                      "Past Dues", 'assets/images/down.png', 'past_dues',
                      isImage: true),
                  buildTabButton(
                      "Upcoming", 'assets/images/upcoming.png', 'upcoming',
                      isImage: true),
                  buildTabButton("History", Icons.history, 'history'),
                  buildTabButton("Installment", 'assets/images/installment.png',
                      'installment',
                      isImage: true),
                      
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 0.3,
            ),
            InkWell(
              onTap: () {
                handleSelectionMode();
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      isSelectionMode ? "Cancel" : "Select Multiple",
                      style: const TextStyle(color: Colors.blue),
                    ),
                    const Icon(
                      Icons.dashboard,
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
            ),
            Obx(() {
              switch (tabController.selectedTab.value) {
                case 'past_dues':
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13, right: 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const SizedBox(
                              width: 264,
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Seach",
                                    hintStyle: TextStyle(
                                        color:
                                            Color.fromRGBO(186, 186, 186, 1)),
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: Color.fromRGBO(186, 186, 186, 1),
                                    ),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromRGBO(
                                                186, 186, 186, 1)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(28)))),
                              ),
                            ),
                            Container(
                              height: 45,
                              width: 45,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(241, 241, 241, 1)),
                              child: Image.asset(
                                "assets/images/Filter.png",
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              height: 45,
                              width: 45,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(241, 241, 241, 1)),
                              child: Image.asset(
                                "assets/images/alert.png",
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 500,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () => toggleSelection(index),
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 13),
                                        child: Container(
                                          height: 75,
                                          width: 363,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(11),
                                              border: Border.all(
                                                width: 1,
                                                color: selectedItems[index]
                                                    ? Colors.blue
                                                    : const Color.fromRGBO(
                                                        241, 241, 241, 1),
                                              )),
                                          child: Row(
                                            children: [
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const CircleAvatar(
                                                backgroundImage: AssetImage(
                                                  "assets/images/modi.png",
                                                ),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Narendra Modi",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 16,
                                                          color: Color.fromRGBO(
                                                              0, 0, 0, 1)),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Shine 1                    ",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 12,
                                                              color: Color
                                                                  .fromRGBO(0,
                                                                      0, 0, 1)),
                                                        ),
                                                      ],
                                                    ),
                                                    Text(
                                                      " (4:00 AM - 5:00 AM)",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 12,
                                                          color: Color.fromRGBO(
                                                              186,
                                                              186,
                                                              186,
                                                              1)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 40,
                                              ),
                                              const Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "14",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromRGBO(
                                                            0, 0, 0, 1)),
                                                  ),
                                                  Text(
                                                    "Aprl",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromRGBO(
                                                            186, 186, 186, 1)),
                                                  )
                                                ],
                                              ),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  showCustomBottomSheet();
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 80,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              29),
                                                      border: Border.all(
                                                          width: 1,
                                                          color: const Color
                                                              .fromRGBO(
                                                              204, 23, 23, 1))),
                                                  child: const Center(
                                                      child: Text(
                                                    "Unpaid",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromRGBO(
                                                            204, 23, 23, 1)),
                                                  )),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned.fill(
                                          bottom: 60,
                                          right: 270,
                                          top: 13,
                                          child: Container(
                                            height: 10,
                                            width: 86,
                                            decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    255, 202, 202, 1),
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(6),
                                                    bottomRight:
                                                        Radius.circular(11))),
                                            child: const Center(
                                                child: Text(
                                              "Plan Expired",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromRGBO(
                                                      204, 23, 23, 1)),
                                            )),
                                          )),
                                      if (selectedItems[index])
                                        Positioned(
                                          top: 10,
                                          left: 10,
                                          child: Container(
                                            height: 24,
                                            width: 24,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors
                                                  .blue, // Background color for the circle
                                            ),
                                            child: const Icon(
                                              Icons.check,
                                              color: Colors
                                                  .white, // Checkmark color
                                              size: 16,
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  );

                case 'upcoming':
                  return const Column(
                    children: [
                      CircularProgressIndicator(
                        color: Colors.blue,
                      ),
                    ],
                  );

                case 'history':
                  return History();
                case 'installment':
                  return buildContent("Installment Content");
                default:
                  return buildContent("Select a Tab");
              }
            }),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: 64.0,
        width: 315.0,
        child: FloatingActionButton(
          onPressed: () {
            isSelectionMode ? handleButtonPress : null;
            Get.dialog(Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                height: 437,
                width: 347,
                decoration: const BoxDecoration(),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 37,
                    ),
                    Center(child: Image.asset("assets/images/multiple.png")),
                    const SizedBox(
                      height: 20,
                    ),
                    const Center(
                        child: Text(
                      "Do You Want To Confirm ",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    )),
                    const Center(
                        child: Text(
                      "Multiple Payments ?",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    )),
                    SizedBox(height: 65.h),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          width: 235,
                          height: 47,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80),
                              border: Border.all(color: Colors.blue)),
                          child: const Center(
                              child: Text(
                            "Cancel",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Colors.blue),
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          width: 235,
                          height: 47,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80),
                              gradient: const LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color.fromRGBO(13, 149, 211, 1),
                                    Color.fromRGBO(9, 96, 186, 1)
                                  ])),
                          child: const Center(
                              child: Text(
                            "Confirm",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ));
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: Ink(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(13, 149, 211, 1),
                  Color.fromRGBO(9, 96, 186, 1)
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Container(
              alignment: Alignment.center,
              child: const Text(
                'Make Payment Sucess',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ),
          ), // Remove shadow if you want
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
