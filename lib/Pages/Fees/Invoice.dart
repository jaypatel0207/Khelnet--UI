import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';

class Invoice extends StatefulWidget {
  const Invoice({super.key});

  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  bool isSwitched = false;
  final TextEditingController _invoiceController = TextEditingController();
  final TextEditingController _bottomSheetController =
      TextEditingController(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Invoice Settings"),
      body: Column(
        children: [
          SizedBox(
            height: 25.h,
          ),
          Center(
            child: Container(
              height: 81.h,
              width: 353.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                      color: const Color.fromRGBO(241, 241, 241, 1), width: 1)),
              child: Padding(
                padding: const EdgeInsets.only(top: 8, right: 10, left: 10),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Auto Send Invoice",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600)),
                              SizedBox(
                                width: 50,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                "* This will automatically send the fee",
                                style: TextStyle(
                                    color: Color.fromRGBO(186, 186, 186, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "receipt whenever any payment made",
                                style: TextStyle(
                                    color: Color.fromRGBO(186, 186, 186, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                      Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        },
                        activeColor: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 302,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      border: Border.all(
                          width: 1,
                          color: const Color.fromRGBO(241, 241, 241, 1))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 17, right: 17),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Current Invoice No.",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color.fromRGBO(186, 186, 186, 1)),
                        ),
                        const SizedBox(
                          width: 70,
                        ),
                        Expanded(
                          child: TextField(
                            controller: _invoiceController,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              isDense: true,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.bottomSheet(
                      Container(
                        height: MediaQuery.of(context).size.height * 0.8,
                        width: 390.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.h),
                            topRight: Radius.circular(20.h),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: EdgeInsets.only(
                                bottom: MediaQuery.of(context)
                                    .viewInsets
                                    .bottom), 
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 25, left: 20),
                                  child: Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Get.back();
                                        },
                                        child: Container(
                                          height: 36,
                                          width: 36,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color.fromRGBO(
                                                13, 141, 207, 0.13),
                                          ),
                                          child: const Center(
                                            child: Icon(
                                              Icons.arrow_back_ios_new,
                                              color: Color.fromRGBO(
                                                  11, 121, 198, 1),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 95),
                                      const Center(
                                        child: Text(
                                          "Invoice Number",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 30.h),
                                Container(
                                  height: 62,
                                  width: 354,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(17),
                                    color:
                                        const Color.fromRGBO(241, 241, 241, 1),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 20.w),
                                      const Text(
                                        " Invoice Number.",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color:
                                              Color.fromRGBO(186, 186, 186, 1),
                                        ),
                                      ),
                                      SizedBox(width: 110.w),
                                      Expanded(
                                        child: TextField(
                                          controller: _bottomSheetController,
                                          decoration: const InputDecoration(
                                            border: UnderlineInputBorder(),
                                            isDense: true,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 15),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 235.h),
                                Center(
                                  child: InkWell(
                                    onTap: () {
                                      Future.delayed(
                                          Duration(milliseconds: 300), () {
                                        _showDialog(context);
                                      });
                                      Get.back();
                                    },
                                    child: Container(
                                      height: 57,
                                      width: 334,
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Color.fromRGBO(13, 149, 211, 1),
                                            Color.fromRGBO(9, 96, 186, 1),
                                          ],
                                        ),
                                        borderRadius: BorderRadius.circular(84),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "Done",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                            color: Color.fromRGBO(
                                                251, 251, 251, 1),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 45.0,
                    width: 45.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1,
                        color: const Color.fromRGBO(241, 241, 241, 1),
                      ),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.edit,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 368,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                border: Border.all(
                    width: 1, color: const Color.fromRGBO(241, 241, 241, 1))),
            child: const Padding(
              padding: EdgeInsets.only(left: 13, right: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Preview Invoice Design",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.remove_red_eye,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }


  void _showDialog(BuildContext context) {
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          height: 462.h,
          width: 337.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Image.asset("assets/images/invoicechange.png"),
              SizedBox(
                height: 20.h,
              ),
              const Text(
                "Invoice Changes",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20.h,
              ),
              const Text(
                "Invoice Number changes will be effectively",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(186, 186, 186, 1)),
              ),
              const Text(
                "seen in the new Invoices",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(186, 186, 186, 1)),
              ),
              SizedBox(
                height: 66.h,
              ),
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Center(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _invoiceController.text = _bottomSheetController.text;
                      });
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 47,
                      width: 272,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(84)),
                      child: Center(
                          child: Text(
                        "Confirm",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.blue),
                      )),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
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
                      height: 47,
                      width: 272,
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
                        "Cancel",
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
      ),
    );
  }
}
