import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';

class Upcoming extends StatefulWidget {
  const Upcoming({super.key});

  @override
  State<Upcoming> createState() => _UpcomingState();
}

class _UpcomingState extends State<Upcoming> {
  String? selectedYear; // Start as null to show the placeholder
  String? selectedMonth;
  List<bool> selectedItems = List.generate(10, (index) => false);
  bool isSelectionMode = false;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Upcoming Dues"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Center(child: Image.asset("assets/images/upcome.png")),
                const Positioned.fill(
                    child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 47),
                      child: Row(
                        children: [
                          Text(
                            "Estimated Revenue",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 3, left: 45),
                      child: Row(
                        children: [
                          Icon(
                            Icons.currency_rupee,
                            color: Colors.white,
                          ),
                          Text(
                            "900000",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Year Dropdown
                  Container(
                    height: 50,
                    width: 145,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(241, 241, 241, 1),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.white),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        hint: const Text('Year'),
                        value: selectedYear,
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(color: Colors.black, fontSize: 16),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedYear = newValue!;
                          });
                        },
                        items: <String>["2024", "2025"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                color: selectedYear == value
                                    ? Colors.blue
                                    : Colors.black,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
            
                  // Month Dropdown
                  Container(
                    height: 50,
                    width: 145,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(241, 241, 241, 1),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.white),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        hint: const Text('Month'),
                        value: selectedMonth,
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(color: Colors.black, fontSize: 16),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedMonth = newValue!;
                          });
                        },
                        items: <String>[
                          "January",
                          "February",
                          "March",
                          "April", 
                          "May",
                          "July",
                          "August",
                          "September",
                          "October",
                          "November",
                          "December"
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                color: selectedMonth == value
                                    ? Colors.blue
                                    : Colors.black,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
            
                  // Calendar Icon Button
                  IconButton(
                    onPressed: () async {
                      // Open the DatePicker
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                      );
            
                      if (pickedDate != null) {
                        // Update selected year and month based on picked date
                        setState(() {
                          selectedYear = pickedDate.year.toString();
                          selectedMonth = DateFormat.MMMM().format(pickedDate); // Formats to full month name
                        });
                      }
                    },
                    icon: const Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 1, right: 1, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    width: 300,
                    height: 42,
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Seach",
                            contentPadding: EdgeInsets.only(top: 2),
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(186, 186, 186, 1)),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color.fromRGBO(186, 186, 186, 1),
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(186, 186, 186, 1)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(28)))),
                      ),
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
                ],
              ),
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
                              child: InkWell(
                                onTap: () {
                                  Get.dialog(Dialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)),
                                    child: Container(
                                      height: 492,
                                      width: 307,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 80,
                                            width: 80,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.asset(
                                              "assets/images/modi.png",
                                              height: 80,
                                              width: 80,
                                            ),
                                          ),
                                          const Text(
                                            "Satyam",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          const Text(
                                            "Shine 1",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          const Text(
                                            "(4:00 AM - 5:00 AM)",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromRGBO(
                                                    186, 186, 186, 1)),
                                          ),
                                  const         SizedBox(
                                            height: 15,
                                          ),
                                          const Text(
                                            "Khelnet Plan 1",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          const Text(
                                            "14 July 2024",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          ),
        
        SizedBox(height: 15.h,), 
                                          Padding(
                                            padding: const EdgeInsets.only(left: 20,right: 20, top: 12),
                                            child: Container(
                                              height: 45.h, 
                                              width: 278.w, 
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(17), 
                                                border: Border.all(width: 1, color: Color.fromRGBO(241, 241, 241, 1)) 
                                                
                                              ),
                                              child: const  Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text("Total Installments : ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: Colors.grey ),), 
                                                          Text("  05", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: Colors.black ),)
        
                                                ],
                                              ),
                                            ),
                                          ), 
        
                                          Padding(
                                            padding: const EdgeInsets.only(left: 20,right: 20, top: 12),
                                            child: Container(
                                              height: 45.h, 
                                              width: 278.w, 
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(17), 
                                                border: Border.all(width: 1, color: Color.fromRGBO(241, 241, 241, 1)) 
                                                
                                              ),
                                              child: const  Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text("Sessions :  ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: Colors.grey ),), 
                                                          Text("30 / 30", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: Colors.black ),)
        
                                                ],
                                              ),
                                            ),
                                          ), 
        
                                          Padding(
                                            padding: const EdgeInsets.only(left: 20,right: 20, top: 12),
                                            child: Container(
                                              height: 45.h, 
                                              width: 278.w, 
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(17), 
                                                border: Border.all(width: 1, color: Color.fromRGBO(241, 241, 241, 1)) 
                                                
                                              ),
                                              child: const  Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text("Plan Amount : ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: Colors.grey ),), 
                                                          Text("\u{20B9}${5000}", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: Colors.black ),), 
        
        
                                                          
        
                                                ],
                                              ),
                                            ),
                                          ), 
        
        SizedBox(height: 30.h,), 
                                           Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Get.back(); 
                      },
                      child: Container(
                        height: 48,
                        width: 248,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color.fromRGBO(13, 149, 211, 1),
                                  Color.fromRGBO(9, 96, 186, 1),
                                ]),
                            borderRadius: BorderRadius.circular(84)),
                        child:const  Center(
                            child: Text(
                          "Okay",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color.fromRGBO(251, 251, 251, 1)),
                        )),
                      ),
                    ),
                  ),
                ),
                                        ],
                                      ),
                                    ),
                                  ));
                                },
                                child: Container(
                                  height: 75,
                                  width: 363,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(11),
                                      border: Border.all(
                                        width: 1,
                                        color: selectedItems[index]
                                            ? Colors.blue
                                            : const Color.fromRGBO(
                                                241, 241, 241, 1),
                                      )),
                                  child: const Row(
                                    children: [
                                      SizedBox(
                                        width: 5,
                                      ),
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                          "assets/images/modi.png",
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Narendra Modi",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  color:
                                                      Color.fromRGBO(0, 0, 0, 1)),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "Shine 1                    ",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 12,
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 1)),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              " (4:00 AM - 5:00 AM)",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  color: Color.fromRGBO(
                                                      186, 186, 186, 1)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 130,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "14",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1)),
                                          ),
                                          Text(
                                            "Aprl",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromRGBO(
                                                    186, 186, 186, 1)),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
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
                                    color: Colors.white, // Checkmark color
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
        ),
      ),
    );
  }
}
