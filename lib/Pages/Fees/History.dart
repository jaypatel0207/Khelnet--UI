import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';
import 'package:khelnet/Pages/Fees/FeesProfile.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  String? selectedYear; 
  String? selectedMonth;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const  CustomAppBar(title: "History"),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Center(child: Image.asset("assets/images/History.png")),
              const Positioned.fill(
                  child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15, left: 47),
                    child: Row(
                      children: [
                        Text(
                          "Estimated Revenue",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 45),
                    child: Row(
                      children: [
                        Text(
                          "30",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 47),
                    child: Row(
                      children: [
                        Text(
                          "Total Amount Received",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 45),
                    child: Row(
                      children: [
                        Icon(
                          Icons.currency_rupee,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        Text(
                          "100000",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
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

        
                IconButton(
                  onPressed: () async {
           
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );

                    if (pickedDate != null) {
                      setState(() {
                        selectedYear = pickedDate.year.toString();
                        selectedMonth = DateFormat.MMMM()
                            .format(pickedDate); 
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
                          hintText: "Seach Name, Invoice Number",
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
          Expanded(
              child: ListView.builder(
            itemCount: 7,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, top: 10, right: 15),
                    child: InkWell(
                      onTap: () {
                        Get.to(const Feesprofile());
                      },
                      child: Container(
                        height: 75.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            border: Border.all(
                                width: 1,
                                color:const  Color.fromRGBO(241, 241, 241, 1))),
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
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    "Narendra Modi",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Color.fromRGBO(0, 0, 0, 1)),
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
                                            color: Color.fromRGBO(0, 0, 0, 1)),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    " (4:00 AM - 5:00 AM)",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color:
                                            Color.fromRGBO(186, 186, 186, 1)),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "22 -04",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(0, 0, 0, 1)),
                                ),
                                Text(
                                  "\u{20B9}${8024}",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromRGBO(0, 0, 0, 1),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                      bottom: 60,
                      right: 270,
                      top: 10,
                      left: 15,
                      child: Container(
                        height: 10,
                        width: 86,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(213, 251, 183, 1),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(11),
                                bottomRight: Radius.circular(11))),
                        child: const Center(
                            child: Text(
                          "Renewed",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(16, 139, 36, 1)),
                        )),
                      )),
                ],
              );
            },
          ))
        ],
      ),
    );
  }
}
