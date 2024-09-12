import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';
import 'package:khelnet/Report/OverView.dart';
import 'package:khelnet/Report/ReportTab.dart';

class ReportsPage extends StatefulWidget {
  const ReportsPage({super.key});

  @override
  State<ReportsPage> createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: CustomAppBar(title: "Reports"),
            body: Column(
              children: [
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 12),
                  child: Container(
                    height: 35.h,
                    width: 346.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(36),
                    ),
                    child: TabBar(
                      indicator: BoxDecoration(
                        gradient:const  LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color.fromRGBO(13, 149, 211, 1),
                              Color.fromRGBO(9, 96, 186, 1)
                            ]),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      dividerColor: Colors.transparent,
                      unselectedLabelColor: Colors.grey,
                      labelColor: Colors.white,
                      tabs: const [
                        Tab(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.article),
                              SizedBox(
                                width: 4,
                              ),
                              Text("Reports")
                            ],
                          ),
                        ),
                        Tab(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.dashboard),
                              SizedBox(
                                width: 4,
                              ),
                              Text("Overview")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                
                 Expanded(
                  child: TabBarView(
                    children: [
                     Reporttab(), 
                     Overview(), 
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
