import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Paymentlink extends StatefulWidget {
  const Paymentlink({super.key});

  @override
  State<Paymentlink> createState() => _PaymentlinkState();
}

class _PaymentlinkState extends State<Paymentlink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        
        children: [
          SizedBox(height: 40.h,), 
          Center(child: Image.asset("assets/images/klogo.png")), 


   SizedBox(height: 50.h,), 
          Stack(
            children: [
              Image.asset("assets/images/request.png")
            ],
          )
        ],
      )),
    );
  }
}