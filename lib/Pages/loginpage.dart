import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:khelnet/Pages/academy.dart';
import 'package:khelnet/Pages/coach.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromRGBO(13, 149, 211, 1),
                    Color.fromRGBO(9, 96, 186, 1)
                  ],
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 65),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/logo.png",
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(28),
                          topLeft: Radius.circular(28),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 45,
                          ),
                          Center(
                            child: Text(
                              "Log In",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 26,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Text(
                              "Hey ! Welcome Back",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(130, 130, 130, 1),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(242, 242, 242, 0.56),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              width: 343,
                              height: 46.37,
                              child: TabBar(
                                dividerColor: Colors.transparent,
                                unselectedLabelColor: Color.fromRGBO(115, 114, 114, 1),
                                labelColor: Colors.white,
                                indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color.fromRGBO(13, 149, 211, 1),
                                      Color.fromRGBO(9, 96, 186, 1)
                                    ],
                                  ),
                                ),
                                labelPadding: EdgeInsets.symmetric(
                                  vertical: 5,
                                  horizontal: 10,
                                ),
                                tabs: [
                                  Tab(
                                    child: Center(
                                      child: Text(
                                        "Academy",
                                        style: TextStyle(
                                          fontSize: 16.37,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Tab(
                                    child: Center(
                                      child: Text(
                                        "Coach",
                                        style: TextStyle(
                                          fontSize: 16.37,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                     const     Expanded(
                            child: TabBarView(
                              children: [
                                Academy(),
                                Coach()
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}