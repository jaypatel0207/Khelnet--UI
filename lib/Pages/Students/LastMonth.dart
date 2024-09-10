import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Lastmonth extends StatefulWidget {
  const Lastmonth({super.key});

  @override
  State<Lastmonth> createState() => _LastmonthState();
}

class _LastmonthState extends State<Lastmonth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Padding(
            padding:  EdgeInsets.only(left: 25, right: 25, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Total Attendance",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "19 / 30 Days",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/attendance.png"),
            ],
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
                    "Download Attendance Report",
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