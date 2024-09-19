import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';

class Fees1 extends StatefulWidget {
  const Fees1({super.key});

  @override
  State<Fees1> createState() => _FeesState();
}

class _FeesState extends State<Fees1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: "Fees",
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
              ))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15.h,
          ),
          Stack(
            children: [
              Center(child: Image.asset("assets/images/card.png")),
              Positioned.fill(
                  child: Column(
                children: [
                  SizedBox(
                    height: 7.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13, top: 8),
                    child: Row(
                      children: [
                        SizedBox(width: 40.h),
                        const Text(
                          "Total Money received",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 3),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 52,
                        ),
                        Icon(
                          Icons.currency_rupee,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text("800000",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Colors.white))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13, top: 5),
                    child: Row(
                      children: [
                        SizedBox(width: 42.h),
                        const Text(
                          "Today",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 1.5),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 52,
                        ),
                        Icon(
                          Icons.currency_rupee,
                          color: Colors.white,
                          size: 15,
                        ),
                        Text("800000",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors.white))
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 53, right: 55, top: 11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.dashboard,
                              color: Colors.white,
                              size: 20,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text("View Dashboard",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    )))
                          ],
                        ),

                        InkWell(
                            onTap: () {},
                            child: Image.asset(
                              "assets/images/arrowright.png",
                              color: Colors.white,
                            ))
                        // IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward, color: Colors.white, size: 20,))
                      ],
                    ),
                  )
                ],
              ))
            ],
          ),
          DefaultTabController(
              length: 4,
              child: TabBar(
                dividerColor: Colors.transparent,
                 unselectedLabelColor: Colors.grey,
                      
                indicator: BoxDecoration(),
                tabs:[ Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 68,
                        width: 75,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: Color.fromRGBO(186, 186, 186, 1)),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/down.png"),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              "Past Dues",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  ),
                            )
                          ],
                        ),
                      ),
                     Container(
                        height: 68,
                        width: 75,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: Color.fromRGBO(186, 186, 186, 1)),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/upcoming.png"),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              "Upcoming",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 68,
                        width: 75,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: Color.fromRGBO(186, 186, 186, 1)),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/watch.png"),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              "History",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                 ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 68,
                        width: 75,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: Color.fromRGBO(186, 186, 186, 1)),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/installment.png"),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              "installment",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),] 
              ))
        ],
      ),
    );
  }
}
