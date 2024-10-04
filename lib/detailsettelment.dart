import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Detailsettelment extends StatefulWidget {
  const Detailsettelment({super.key});

  @override
  State<Detailsettelment> createState() => _DetailsettelmentState();
}

class _DetailsettelmentState extends State<Detailsettelment> {
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
        SizedBox(height: 40.h,), 
         Padding(
           padding: const EdgeInsets.only(left: 22),
           child: SvgPicture.asset("assets/images/cross.svg", height: 22, width: 22, ),
         ), 

      ],
     ),
    );
  }
}