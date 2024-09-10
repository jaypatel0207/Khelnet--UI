import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Fees extends StatefulWidget {
  const Fees({super.key});

  @override
  State<Fees> createState() => _FeesState(isPaid: false);
}

class _FeesState extends State<Fees> {
  final bool isPaid;

  _FeesState({required this.isPaid});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              height: 50.h,
              width: 356.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  color: Colors.white,
                  border: Border.all(
                      color: const Color.fromRGBO(241, 241, 241, 1))),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //SizedBox(width: 5.h,),

                    const Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: const Text(
                            'Payment Status',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),

                    // SizedBox(width: 30.w,),

                    Row(
                      children: [
                        Text(
                          isPaid ? 'Paid' : 'Unpaid',
                          style: TextStyle(
                            color: isPaid ? Colors.green : Colors.red,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        if (!isPaid)
                          IconButton(
                            icon: const Icon(Icons.more_vert),
                            onPressed: () {
                              Get.bottomSheet(showModalBottomSheet(
                                context: context,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(20.0)),
                                ),
                                builder: (BuildContext context) {
                                  return StatefulBuilder(
                                    builder: (BuildContext context,
                                        StateSetter setModalState) {
                                      return Container(
                                        height: 400.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)
, 
color: Colors.white                                    ),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                                              child: Row(
                                                children: [
                                              
                                                  Container(
                                              height: 26, 
                                              width: 26, 
                                              decoration:const  BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color.fromRGBO(13, 141, 207, 0.13)
                                              ),
                                              child:const Center(child:   Icon(Icons.arrow_back_ios_new_rounded, color: Color.fromRGBO(11, 121, 198, 1),)),
                                                                                        ),
                                                                                        SizedBox(width: 100.w,), 
                                              const     Text(
                                                    "More Setting",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ],
                                              ),
                                            ), 


                                            ListTile(
                                              
                                              title: Text("Send Payment Reminder", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                                            )
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                              ) as Widget);
                            },
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              height: 50.h,
              width: 356.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  color: Colors.white,
                  border: Border.all(
                      color: const Color.fromRGBO(241, 241, 241, 1))),
              child: Center(
                child: ListTile(
                    title: const Text(
                      "58000",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    leading: const Icon(
                      Icons.currency_rupee,
                      color: Colors.black,
                    ),
                    trailing: InkWell(
                        child: Image.asset(
                      "assets/images/edit.png",
                    ))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              height: 50.h,
              width: 356.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  color: Colors.white,
                  border: Border.all(
                      color: const Color.fromRGBO(241, 241, 241, 1))),
              child: Center(
                child: ListTile(
                    title: const Text(
                      "Shine 1 Plan (Monthly)",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    leading: const Icon(
                      Icons.credit_score,
                      color: Colors.black,
                    ),
                    trailing: InkWell(
                        child: Image.asset(
                      "assets/images/edit.png",
                    ))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              height: 50.h,
              width: 356.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  color: Colors.white,
                  border: Border.all(
                      color: const Color.fromRGBO(241, 241, 241, 1))),
              child: Center(
                child: ListTile(
                    title: const Text(
                      "Due Date",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    leading: const Icon(
                      Icons.date_range,
                      color: Colors.black,
                    ),
                    trailing: InkWell(
                        child: Image.asset(
                      "assets/images/edit.png",
                    ))),
              ),
            ),
          ),
          SizedBox(
            height: 90.h,
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 64,
                  width: 315,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color.fromRGBO(13, 149, 211, 1),
                            Color.fromRGBO(9, 96, 186, 1),
                          ]),
                      borderRadius: BorderRadius.circular(84)),
                  child: const Center(
                      child: Text(
                    "Update Fee Info",
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
    );
  }
}
