import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khelnet/Pages/Students/CurrentMonth.dart';
import 'package:khelnet/Pages/Students/LastMonth.dart';

class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: [
                TabBar(
                          labelColor: Color.fromRGBO(9, 96, 186, 1),
                          dividerColor: Colors.transparent,
                          indicator: UnderlineTabIndicator(
                              borderSide: BorderSide(
                                  width: 2, color: Color.fromRGBO(9, 96, 186, 1))),
                          unselectedLabelColor: Colors.grey,
                          tabs: [
                            Tab(
                              child: Center(
                                child: Text(
                                  "Current Month",
                                  style: TextStyle(
                                    fontSize: 17.4,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                           
                            Tab(
                              child: Center(
                                child: Text(
                                  "Last Month",
                                  style: TextStyle(
                                    fontSize: 17.4,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                          Expanded(child: TabBarView(children: [
Currentmonth(), 
Lastmonth(), 
                          ]))
              ],
            ),


                      
          )),
    );
  }
}
