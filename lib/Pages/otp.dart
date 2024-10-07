import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khelnet/Pages/loginpage.dart';
import 'package:pinput/pinput.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _otpController = TextEditingController();
  String? errorMessage;

  int resendTime = 30;
  late Timer countdownTimer;
  bool isOtpFilled = false;

  final String correctOtp = "1234";
  int incorrectAttempts = 0; 
  final int maxAttempts = 3; 

  @override
  void initState() {
    startTimer();
    _otpController.addListener(() {
      setState(() {
        isOtpFilled = _otpController.text.length == 4;
        errorMessage = null; 
      });
    });
    super.initState();
  }

  startTimer() {
    countdownTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        resendTime = resendTime - 1;
      });
      if (resendTime < 1) {
        countdownTimer.cancel();
      }
    });
  }

  stopTimer() {
    if (countdownTimer.isActive) {
      countdownTimer.cancel();
    }
  }

  String strFormatting(n) => n.toString().padLeft(2, "0");

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  final defaultPinTheme = PinTheme(
    width: 67,
    height: 68,
    textStyle: TextStyle(
      fontSize: 24,
      color: Colors.white,
    ),
    decoration: BoxDecoration(
      color: Color.fromRGBO(233, 245, 251, 0.41),
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.blue),
    ),
  );


  void validateOtp() {
    if (_otpController.text == correctOtp) {
      
      Get.to(Loginpage()); 
   
      incorrectAttempts += 1;
      setState(() {
        errorMessage = "Invalid OTP";
      });

      if (incorrectAttempts >= maxAttempts) {
        showMaxAttemptsDialog();
      }
    }
  }

  void showMaxAttemptsDialog() {
    Get.dialog(Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        height: 437,
        width: 312,
        decoration: BoxDecoration(),
        child: Column(
          children: [
            SizedBox(
              height: 37,
            ),
            Center(child: Image.asset("assets/images/clock.png")),
            SizedBox(
              height: 28,
            ),
            Center(
                child: Text(
              "Oops ! Too many ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            )),
            Center(
                child: Text(
              "wrong inputs",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            )),
            SizedBox(
              height: 30,
            ),
            Center(
                child: Text(
              "Don’t worry , you can retry after",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color.fromRGBO(186, 186, 186, 1)),
            )),
            Center(
                child: Text(
              "some time",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color.fromRGBO(186, 186, 186, 1)),
            )),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Get.to(Loginpage());
                },
                child: Container(
                  width: 220,
                  height: 51,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color.fromRGBO(13, 149, 211, 1),
                            Color.fromRGBO(9, 96, 186, 1)
                          ])),
                  child: Center(
                      child: Text(
                    "Okay",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back)),
                ],
              ),
              SizedBox(height: 30),
              Stack(
                children: [
                  Center(child: Image.asset("assets/images/Ellipse.png")),
                  Positioned.fill(
                      child: Image.asset("assets/images/Ellipse1.png")),
                  Positioned.fill(
                      child: Image.asset("assets/images/Ellipse3.png")),
                  Positioned.fill(child: Image.asset("assets/images/lock.png")),
                ],
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  "Verification",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Center(
                child: Text(
                  "We have sent the verification code",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color.fromRGBO(186, 186, 186, 1),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "to your number",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color.fromRGBO(186, 186, 186, 1),
                  ),
                ),
              ),
              SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "1234567890",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color.fromRGBO(72, 72, 72, 1),
                    ),
                  ),
                  SizedBox(width: 20),
                  Stack(
                    children: [
                      Image.asset("assets/images/Ellipse4.png"),
                      Positioned.fill(
                          child: Image.asset("assets/images/pen.png")),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
              Center(
                child: Pinput(
                  length: 4,
                  controller: _otpController,
                  defaultPinTheme: defaultPinTheme,
                  submittedPinTheme: defaultPinTheme.copyWith(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromRGBO(13, 149, 211, 1),
                          Color.fromRGBO(9, 96, 186, 1),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.blue),
                    ),
                  ),
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromRGBO(13, 149, 211, 1),
                          Color.fromRGBO(9, 96, 186, 1),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.blue),
                    ),
                  ),
                  cursor: Container(
                    height: 20,
                    width: 2,
                    color: Colors.white,
                  ),
                  onChanged: (value) {},
                ),
              ),
        
              if (errorMessage != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    errorMessage!,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                    ),
                  ),
                ),
              SizedBox(height: 55),
              resendTime == 0
                  ? Center(
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          "Resend Code",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color.fromRGBO(9, 96, 186, 1),
                          ),
                        ),
                      ),
                    )
                  : SizedBox(),
              SizedBox(height: 5),
              resendTime != 0
                  ? Text(
                      "You can resend OTP after ${strFormatting(resendTime)} second(s)",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(186, 186, 186, 1)))
                  : SizedBox(),
              SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: InkWell(
                    onTap: isOtpFilled ? validateOtp : null,
                    child: Container(
                      width: 309,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: isOtpFilled
                              ? [
                                  Color.fromRGBO(13, 149, 211, 1),
                                  Color.fromRGBO(9, 96, 186, 1),
                                ]
                              : [
                                  Colors.grey,
                                  Colors.grey,
                                ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Submit",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




