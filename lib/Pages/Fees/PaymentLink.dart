import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';

class Paymentlink extends StatefulWidget {
  const Paymentlink({super.key});

  @override
  State<Paymentlink> createState() => _PaymentlinkState();
}

class _PaymentlinkState extends State<Paymentlink> {
  bool _isSubmitted = false;
  List<String> data = [
    "Get Your Payments Instantly",
    "Direct settlement in your bank A/C",
    "Ease in Tracking Payments",
    "Personal Academy Link for payments",
    "100% Secure"
  ];

  final List<Image> images = [
    Image.asset(
      "assets/images/current.png",
      width: 18,
      height: 21,
    ),
    Image.asset(
      "assets/images/settlement.png",
      width: 18,
      height: 21,
    ),
    Image.asset(
      "assets/images/tracking.png",
      width: 18,
      height: 21,
    ),
    Image.asset(
      "assets/images/link.png",
      width: 18,
      height: 21,
    ),
    Image.asset(
      "assets/images/secure.png",
      width: 18,
      height: 21,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Logo"),
      backgroundColor: Colors.white,
      body: SafeArea(

          child: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Center(child: Image.asset("assets/images/klogo.png")),
          SizedBox(
            height: 50.h,
          ),
          Stack(
            children: [
              Image.asset("assets/images/request.png"),
              Positioned.fill(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 35.h,
                  ),
                  Text(
                    "Now NO need to Manually",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  Text(
                    "Update the Fee Status!",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  ListTile(
                    title: const Text(
                      "Get Your Payments Instantly",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                    leading: Image.asset("assets/images/current.png"),
                  ),
                  ListTile(
                    title: const Text(
                      "Direct settlement in your bank A/C",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                    leading: Image.asset(
                      "assets/images/settlement.png",
                      width: 18,
                      height: 21,
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      "Ease in Tracking Payments",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                    leading: Image.asset(
                      "assets/images/tracking.png",
                      width: 18,
                      height: 21,
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      "Personal Academy Link for payments",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                    leading: Image.asset(
                      "assets/images/link.png",
                      width: 18,
                      height: 21,
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      "100% Secure",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                    leading: Image.asset(
                      "assets/images/secure.png",
                      width: 18,
                      height: 21,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          "Many More ..",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ),
                      SizedBox()
                    ],
                  )
                ],
              ))
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          _isSubmitted
              ? Row(
                  key: const ValueKey("submitted"),
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFFFA500), 
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.access_time,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Flexible(
                      child: Text(
                        "We will Get in Touch with you soon",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                )
              : const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          "Please submit a request to enable the payment",
                          key: const ValueKey("not_submitted"),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color:Color.fromRGBO(186, 186, 186, 1),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                    ],
                  ),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          "gateway feature. Our team will get in touch with",
                          key: const ValueKey("not_submitted"),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color:Color.fromRGBO(186, 186, 186, 1),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                    ],
                  ),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          "you to initiate the process.",
                          key: const ValueKey("not_submitted"),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color:Color.fromRGBO(186, 186, 186, 1),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
SizedBox(height: 45.h,), 
                Positioned(
        bottom: 10,
        child: Center(
              child: InkWell(
                onTap: () {
                  setState(() {
                    _isSubmitted = true;
                  });
                },
                child: Container(
                  height: 57,
                  width: 358,
                  decoration: BoxDecoration(
                    gradient: _isSubmitted
                        ? null
                        : const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xFF0D95D3),
                              Color(0xFF0960BA),
                            ],
                          ),
                    color: _isSubmitted ? Colors.white : null,
                    borderRadius: BorderRadius.circular(84),
                    border: _isSubmitted
                        ? Border.all(color: const Color(0xFF0D95D3), width: 2)
                        : null,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (_isSubmitted)
                          const Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Icons.check_circle,
                              color: Color(0xFF0D95D3),
                              size: 24,
                            ),
                          ),
                        Text(
                          _isSubmitted ? "Request Submitted" : "Submit Request",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 19,
                            color: _isSubmitted
                                ? const Color(0xFF0D95D3)
                                : const Color(0xFFFBFBFB),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
      ),
         
        ],
      ), 

    
      
      
      ),
       
    
    );
   
  }
}


