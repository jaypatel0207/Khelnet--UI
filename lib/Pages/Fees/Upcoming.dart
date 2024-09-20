import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
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
      body: Column(
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
                Container(
                  height: 50,
                  width: 145,
                  padding: const  EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color:const Color.fromRGBO(
                        241, 241, 241, 1), // Background color of the container
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.white), // Optional border
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      hint: const Text('Year'), // Placeholder text
                      value: selectedYear,
                      icon:const Icon(Icons.arrow_drop_down),
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
                                    : Colors.black),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 145,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color:const Color.fromRGBO(241, 241, 241, 1), //
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.white), // Optional border
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      hint:const Text('Month'), // Placeholder text
                      value: selectedMonth,
                      icon: const Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      elevation: 16,

                      style:const  TextStyle(color: Colors.black, fontSize: 16),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedMonth = newValue!;
                        });
                      },
                      items: <String>[
                        "July",
                        "August",
                        "September",
                        "october",
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
                                    : Colors.black),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon:const Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.blue,
                    ))
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
                      height: 375,
                      width: 307,
                      decoration: const BoxDecoration(),
                      child: Column(
                        children: [
                          Container(
                            height: 75, 
                            width: 75, 
                            decoration:const  BoxDecoration(
                              shape: BoxShape.circle, 
                              
                            ),
                            child: Image.asset("assets/images/modi.png", height: 75,width: 75,),
                          )
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
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "14",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromRGBO(0, 0, 0, 1)),
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
    );
  }
}
