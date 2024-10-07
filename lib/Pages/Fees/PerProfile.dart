import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';
import 'package:khelnet/Pages/Fees/FeeInfo.dart';
import 'package:khelnet/Pages/Fees/FeesProfile.dart';
import 'package:khelnet/Pages/Fees/Transactions.dart';

class Perprofile extends StatefulWidget {
  const Perprofile({super.key});

  @override
  State<Perprofile> createState() => _PerprofileState();
}

class _PerprofileState extends State<Perprofile>
    with SingleTickerProviderStateMixin {
  final List<String> images = [
    "assets/images/currency.png",
    "assets/images/newrupee.png",
    "assets/images/bank.png",
    "assets/images/newrupee.png",
    "assets/images/bank.png",
    "assets/images/bank.png",
    "assets/images/currency.png",
    "assets/images/bank.png",
    "assets/images/newrupee.png",
    "assets/images/currency.png",
    "assets/images/bank.png",
  ];

  final List<DateTime> dates = [
    DateTime(2024, 06, 22),
    DateTime(2024, 05, 22),
    DateTime(2024, 04, 22),
    DateTime(2024, 05, 22),
    DateTime(2024, 04, 22),
    DateTime(2024, 04, 22),
    DateTime(2024, 06, 22),
    DateTime(2024, 04, 22),
    DateTime(2024, 05, 22),
    DateTime(2024, 06, 22),
    DateTime(2024, 04, 22),
  ];
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);


    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: const CustomAppBar(title: "Profile"),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 18, right: 18, top: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/modi.png"),
                    radius: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Narendra Modi",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                          SizedBox(
                            width: 5,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text("Khelnet Sports Academy Morning",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color.fromRGBO(0, 0, 0, 1))),
                      Row(
                        children: [
                          Text("(4:00 Am - 5:00 Am)",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Color.fromRGBO(186, 186, 186, 1))),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          const   SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 10,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(241, 241, 241, 1),
                  borderRadius: BorderRadius.circular(36),
                ),
                width: 375,
                height: 46.37,
                child: TabBar(
                  controller: _tabController,
                  dividerColor: Colors.transparent,
                  unselectedLabelColor: const Color.fromRGBO(186, 186, 186, 1),
                  labelColor: Colors.white,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(33),
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromRGBO(13, 149, 211, 1),
                        Color.fromRGBO(9, 96, 186, 1)
                      ],
                    ),
                  ),
                  labelPadding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  tabs: [
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/user.png",
                            color: _tabController.index == 0
                                ? Colors.white
                                : const  Color.fromRGBO(186, 186, 186, 1),
                          ),
                          const SizedBox(
                            width: 11,
                          ),
                          const Text(
                            "Fee Info",
                            style: TextStyle(
                              fontSize: 16.37,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/Stroke.png",
                            color: _tabController.index == 1
                                ? Colors.white
                                :const  Color.fromRGBO(186, 186, 186, 1),
                          ),
                       const    SizedBox(
                            width: 11,
                          ),
                          const Text(
                            "Transactions",
                            style: TextStyle(
                              fontSize: 16.37,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: TabBarView(controller: _tabController, children: const [
              Feeinfo(),
              Transactions(),
            ])),
          ],
        ),
      ),
    );
  }
}
