import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:khelnet/Pages/viewsettlement.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  DateTimeRange? selectedDateRange;
  final DateFormat dateFormat = DateFormat('dd MMM yyyy');

  // Initial values for the date range
  DateTimeRange initialDateRange = DateTimeRange(
    start: DateTime(2024, 1, 1),
    end: DateTime(2024, 1, 30),
  );

  void _selectDateRange(BuildContext context) async {
    final DateTimeRange? picked = await showDateRangePicker(
      context: context,
      initialDateRange: selectedDateRange ?? initialDateRange,
      firstDate: DateTime(2022),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDateRange) {
      setState(() {
        selectedDateRange = picked;
      });
    }
  }

  void _resetDateRange() {
    setState(() {
      selectedDateRange = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Stack(
              children: [
                Center(child: Image.asset("assets/images/Rectangle.png")),
                Positioned.fill(
                    left: 270,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset("assets/images/Group.png"))),
                const Positioned.fill(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 15, left: 50),
                            child: Text(
                              "Total Money In Wallet ",
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 0.8),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, left: 45),
                        child: Row(
                          children: [
                            Icon(
                              Icons.currency_rupee,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                              "800000",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 15, left: 50),
                                child: Text(
                                  "Today",
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 0.8),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5, left: 45),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.currency_rupee,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    Text(
                                      "800000",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 15, left: 50),
                                child: Text(
                                  "Settlement Due Today",
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 0.8),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5, left: 45),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.currency_rupee,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    Text(
                                      "800000",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27, right: 27, top: 16),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 160.w,
                      height: 34.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(55),
                          border: Border.all(
                              width: 1,
                              color: const Color.fromRGBO(241, 241, 241, 1))),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.account_balance,
                            size: 17,
                            color: Color.fromRGBO(186, 186, 186, 1),
                          ),
                          Text(
                            "69847453738398",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                        width: 180.w,
                        height: 34.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(55),
                            border: Border.all(
                                width: 1,
                                color: Color.fromRGBO(241, 241, 241, 1))),
                        child: const Center(
                            child: Text(
                          "IFSC - 8789700SBI00054",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(0, 0, 0, 1)),
                        ))),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                        width: 180.w,
                        height: 34.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(55),
                            border: Border.all(
                                width: 1,
                                color: Color.fromRGBO(241, 241, 241, 1))),
                        child:const  Center(
                            child: Text(
                          "IFSC - 8789700SBI00054",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(0, 0, 0, 1)),
                        )))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27, right: 27, top: 15),
              child: Container(
                width: 354.w,
                height: 54.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        width: 1, color:const Color.fromRGBO(241, 241, 241, 1))),
                child: ListTile(
                  title: const Text("View Settlement Status",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      )),
                  leading: Image.asset("assets/images/view.png"),
                  trailing: GestureDetector(
                      onTap: () {
                        Get.to(const Viewsettlement());
                      },
                      child: Image.asset(
                        "assets/images/arrow.png",
                        height: 15,
                        width: 15,
                      )),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 15),
              child: Row(
                children: [
                  Text(
                    "Transaction History",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 29, top: 15),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      _selectDateRange(context);
                    },
                    child: Container(
                      height: 32.h,
                      width: 113.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(31),
                          gradient: const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color.fromRGBO(13, 149, 211, 1),
                                Color.fromRGBO(9, 96, 186, 1)
                              ])),
                      child: Center(
                        child: Text(
                          selectedDateRange != null
                              ? dateFormat.format(selectedDateRange!.start)
                              : '---', // Show dash when no date is selected
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                    width: 10.w,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(186, 186, 186, 1),
                        border: Border.all(
                            width: 1, color: Color.fromRGBO(186, 186, 186, 1))),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      _selectDateRange(context);
                    },
                    child: Container(
                      height: 32.h,
                      width: 113.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(31),
                          gradient: const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color.fromRGBO(13, 149, 211, 1),
                                Color.fromRGBO(9, 96, 186, 1)
                              ])),
                      child: Center(
                        child: Text(
                          selectedDateRange != null
                              ? dateFormat.format(selectedDateRange!.end)
                              : '---', // Show dash when no date is selected
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 15),
                  // Cross button
                  GestureDetector(
                    onTap: () {
                      _resetDateRange();
                    },
                    child: Container(
                        height: 24,
                        width: 24,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(255, 11, 11, 0.1)),
                        child: const Icon(
                          Icons.clear,
                          size: 17,
                          color: Color.fromRGBO(204, 23, 23, 1),
                        )),
                  ),
                  SizedBox(width: 15),
                  // Calendar button
                  GestureDetector(
                    onTap: () {
                      _selectDateRange(context);
                    },
                    child: Image.asset(
                      "assets/images/Union.png",
                      height: 32,
                      width: 32,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 29, right: 29, top: 10),
                    child: Container(
                      height: 70.h,
                      width: 355.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const  Color.fromRGBO(251, 251, 251, 1),
                          border: Border.all(
                              width: 1,
                              color: Color.fromRGBO(241, 241, 241, 1))),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 5, left: 11),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Fee received from Ramesh Jaishwal",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color.fromRGBO(0, 0, 0, 1)),
                                ),
                                Text(
                                  "7658785859",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color.fromRGBO(186, 186, 186, 1)),
                                ),
                                Text(
                                  "12 Sept 2024",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color.fromRGBO(186, 186, 186, 1)),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.currency_rupee,
                                    size: 18,
                                  ),
                                  Text(
                                    "5000",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(0, 0, 0, 1)),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
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
