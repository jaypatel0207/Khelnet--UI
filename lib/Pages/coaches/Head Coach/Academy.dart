import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:khelnet/Pages/coaches/AddCoaches.dart';
import 'package:khelnet/Pages/Plans/AddPlans&Charges.dart';
import 'package:khelnet/Pages/Students/AddStudent.dart';
import 'package:khelnet/Pages/Center/centerfound.dart';
import 'package:khelnet/Pages/coaches/coachFound.dart';
import 'package:khelnet/Pages/Plans/plans&charges.dart';
import 'package:khelnet/Pages/coaches/Head%20Coach/NocoachesFound.dart';
import 'package:khelnet/Pages/coaches/Head%20Coach/datafound.dart';
import 'package:khelnet/Pages/Students/StudentFound.dart';

class Academy1 extends StatefulWidget {
  const Academy1({super.key});

  @override
  State<Academy1> createState() => _AcademyState();
}

class _AcademyState extends State<Academy1> {
  List<String> images = [
    "assets/images/13.png",
    "assets/images/12.png",
    "assets/images/11.png",
  ];

  bool hasCenterData = true;
  bool hasStudentData = true;
  bool hasCoachData = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Academy',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 23, bottom: 23, left: 15, right: 15),
            child: Container(
              height: 122,
              width: 383,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(251, 251, 251, 1),
                  border: Border.all(
                      color: Color.fromRGBO(241, 241, 241, 1), width: 1.5),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Addstudent();
                        },
                      ));
                    },
                    child: Container(
                      height: 76,
                      width: 63,
                      child: Column(
                        children: [
                          Image.asset("assets/images/plus.png"),
                          SizedBox(
                            height: 6,
                          ),
                          Center(
                            child: Text(
                              "Add",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Student",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(Addcoaches());
                    },
                    child: Container(
                      height: 76,
                      width: 63,
                      child: Column(
                        children: [
                          Image.asset("assets/images/coaches.png"),
                          SizedBox(
                            height: 6,
                          ),
                          Center(
                            child: Text(
                              "Add",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Coaches",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 76,
                      width: 63,
                      child: Column(
                        children: [
                          Image.asset("assets/images/center.png"),
                          SizedBox(
                            height: 6,
                          ),
                          Center(
                            child: Text(
                              "Add",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Center",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(AddplansCharges());
                    },
                    child: Container(
                      height: 76,
                      width: 63,
                      child: Column(
                        children: [
                          Image.asset("assets/images/charges.png"),
                          SizedBox(
                            height: 6,
                          ),
                          Center(
                            child: Text(
                              "Add Plans",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          Center(
                            child: Text(
                              "& Charges",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 126,
            width: 360,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 1.5,
                  color: Color.fromRGBO(9, 96, 186, 1),
                ),
                borderRadius: BorderRadius.circular(6)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 21),
                  child: Row(
                    children: [
                      Text(
                        "Your Setup Is Incomplete",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 21),
                  child: Row(
                    children: [
                      Text(
                        "Complete it now for a Better Experience!",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 10, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          for (int i = 0; i < images.length; i++)
                            Align(
                              widthFactor: 0.5,
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage(images[i]),
                                ),
                              ),
                            ),
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                            height: 36,
                            width: 98,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 4,
                                      spreadRadius: 0,
                                      color: Color.fromRGBO(0, 0, 0, 0.25))
                                ],
                                borderRadius: BorderRadius.circular(34),
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color.fromRGBO(13, 149, 211, 1),
                                      Color.fromRGBO(9, 96, 186, 1)
                                    ])),
                            child: Center(
                                child: Text(
                              "Start",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color.fromRGBO(251, 251, 251, 1)),
                            ))),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      if (hasCenterData) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Centerfound(),
                          ),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Centerfound(),
                          ),
                        );
                      }
                    },
                    child: Container(
                      height: 184,
                      width: 161,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              width: 1, color: Color.fromRGBO(9, 96, 186, 1))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8, left: 8, right: 8),
                            child: Row(
                              children: [
                                Text(
                                  "04 Centers",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Color.fromRGBO(9, 96, 186, 1)),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 2, left: 8, right: 8),
                            child: Row(
                              children: [
                                Text(
                                  "Manage or view center",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 8,
                                      color: Color.fromRGBO(9, 96, 186, 1)),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Image.asset("assets/images/lanch.png")
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Planscharges();
                        },
                      ));
                    },
                    child: Container(
                      height: 113,
                      width: 161,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              width: 1, color: Color.fromRGBO(9, 96, 186, 1))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8, left: 8, right: 8),
                            child: Row(
                              children: [
                                Text(
                                  "04 Plans",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Color.fromRGBO(9, 96, 186, 1)),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 2, left: 8, right: 8),
                            child: Row(
                              children: [
                                Text(
                                  "Manage or view plans",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 8,
                                      color: Color.fromRGBO(9, 96, 186, 1)),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset("assets/images/star.png"),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      if (hasCoachData) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Coachfound(),
                          ),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Coachfound(),
                          ),
                        );
                      }
                    },
                    child: Container(
                      height: 113,
                      width: 161,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              width: 1, color: Color.fromRGBO(9, 96, 186, 1))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8, left: 8, right: 8),
                            child: Row(
                              children: [
                                Text(
                                  "04 Coaches",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Color.fromRGBO(9, 96, 186, 1)),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 2, left: 8, right: 8),
                            child: Row(
                              children: [
                                Text(
                                  "Manage or view coaches",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 8,
                                      color: Color.fromRGBO(9, 96, 186, 1)),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                "assets/images/anno.png",
                                height: 70,
                                width: 70,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  InkWell(
                    onTap: () {
                      if (hasStudentData) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Studentfound(),
                          ),
                        );
                      } else {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => NoStudentFound(),
                        //   ),
                        // );
                      }
                    },
                    child: Container(
                      height: 184,
                      width: 161,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              width: 1, color: Color.fromRGBO(9, 96, 186, 1))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8, left: 8, right: 8),
                            child: Row(
                              children: [
                                Text(
                                  "24 Students",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Color.fromRGBO(9, 96, 186, 1)),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 2, left: 8, right: 8),
                            child: Row(
                              children: [
                                Text(
                                  "Manage or view students",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 8,
                                      color: Color.fromRGBO(9, 96, 186, 1)),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 38,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset("assets/images/guys.png"),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
