import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';
import 'package:khelnet/Pages/Fees/Gst.dart';
import 'package:khelnet/Pages/Fees/Invoice.dart';
import 'package:khelnet/Pages/Fees/Reminder.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Fee Setting"),
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13, top: 14),
            child: Center(
              child: Container(
                height: 73,
                width: 363,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
               
                    border: Border.all(
                        width: 1,
                        color: const Color.fromRGBO(241, 241, 241, 1))),
                child: Center(
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/gst.png",
                    ),
                    title: const Text(
                      "GST Settings",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    trailing: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Gst()));
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        )),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13, top: 14),
            child: Center(
              child: Container(
                height: 73,
                width: 363,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    //color: Color.fromRGBO(251, 251, 251, 1),
                    border: Border.all(
                        width: 1,
                        color: const Color.fromRGBO(241, 241, 241, 1))),
                child: Center(
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/invoice.png",
                    ),
                    title: const Text(
                      "Invoice Setting",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    trailing: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Invoice()));
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        )),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13, top: 14),
            child: Center(
              child: Container(
                height: 73,
                width: 363,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    //color: Color.fromRGBO(251, 251, 251, 1),
                    border: Border.all(
                        width: 1,
                        color: const Color.fromRGBO(241, 241, 241, 1))),
                child: Center(
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/notify.png",
                    ),
                    title: const Text(
                      "Reminder Settings",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    trailing: InkWell(
                        onTap: () {
                          Get.to(Reminder());
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        )),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
