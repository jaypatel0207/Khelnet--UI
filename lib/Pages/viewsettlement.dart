import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';
import 'package:khelnet/detailsettelment.dart';

class Viewsettlement extends StatefulWidget {
  const Viewsettlement({super.key});

  @override
  State<Viewsettlement> createState() => _ViewsettlementState();
}

class _ViewsettlementState extends State<Viewsettlement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: "Transaction",
        actions: [
          Image.asset(
            "assets/images/Cashfree.png",
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: Container(
              height: 68,
              width: 354,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(241, 241, 241, 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Update On Settlement",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Text(
                            "The amount will be securely deposited in your bank account by the next business day at 4:00 PM",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 27, top: 25),
            child: Row(
              children: [
                SvgPicture.asset("assets/images/Filterss.svg"),
                const SizedBox(width: 17),
                const Text(
                  "Filter",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 15, right: 12),
            child: InkWell(
              onTap: () {
                Get.to(Detailsettelment()); 
              },
              child: ListTile(
                leading: SvgPicture.asset("assets/images/updown.svg"),
                title: const Text(
                  "In Progress",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                subtitle: const Text(
                  "12 Aug , 2024",
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
                ),
                trailing: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.currency_rupee,
                      color: Color.fromRGBO(237, 196, 13, 1),
                      size: 17,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "5000",
                      style: TextStyle(
                          color: Color.fromRGBO(237, 196, 13, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 3, right: 12),
            child: ListTile(
              leading: SvgPicture.asset("assets/images/updown.svg"),
              title: const Text(
                "In Progress",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              subtitle: const Text(
                "12 Aug , 2024",
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
              ),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.currency_rupee,
                    color: Color.fromRGBO(237, 196, 13, 1),
                    size: 17,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "5000",
                    style: TextStyle(
                        color: Color.fromRGBO(237, 196, 13, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 3, right: 12),
            child: ListTile(
              leading: SvgPicture.asset("assets/images/cross.svg"),
              title: const Text(
                "Settled In Bank Account",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              subtitle: const Text(
                "12 Aug , 2024",
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
              ),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.currency_rupee,
                    color: Color.fromRGBO(0, 162, 95, 1),
                    size: 17,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "5000",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 162, 95, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 3, right: 12),
            child: ListTile(
              leading: SvgPicture.asset("assets/images/cross.svg"),
              title: const Text(
                "Settled In Bank Account",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              subtitle: const Text(
                "12 Aug , 2024",
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
              ),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.currency_rupee,
                    color: Color.fromRGBO(0, 162, 95, 1),
                    size: 17,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "5000",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 162, 95, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 3, right: 12),
            child: ListTile(
              leading: SvgPicture.asset("assets/images/cross.svg"),
              title: const Text(
                "Settled In Bank Account",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              subtitle: const Text(
                "12 Aug , 2024",
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
              ),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.currency_rupee,
                    color: Color.fromRGBO(0, 162, 95, 1),
                    size: 17,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "5000",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 162, 95, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
