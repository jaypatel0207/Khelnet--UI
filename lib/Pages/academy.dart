// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/get_navigation.dart';
// import 'package:khelnet/Pages/otp.dart';
// import 'package:khelnet/Pages/signup.dart';

// class Academy extends StatefulWidget {
//   const Academy({super.key});

//   @override
//   State<Academy> createState() => _AcademyState();
// }

// class _AcademyState extends State<Academy> {
//   TextEditingController _numberController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       resizeToAvoidBottomInset: false,
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             SizedBox(
//               height: 20,
//             ),
//             Padding(
//                 padding: const EdgeInsets.only(top: 35, right: 22, left: 22),
//                 child: TextField(
//                   controller: _numberController,
//                   maxLength: 10,
//                   keyboardType: TextInputType.phone,
//                   decoration: InputDecoration(
//                     filled: true,
//                     fillColor: Color.fromRGBO(241, 241, 241, 0.58),
//                     prefixIcon: Icon(
//                       Icons.phone,
//                       color: Colors.black,
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(26),
//                       borderSide:
//                           BorderSide(color: Colors.transparent, width: 1.0),
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(26),
//                       borderSide:
//                           BorderSide(color: Colors.transparent, width: 1.0),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(26),
//                       borderSide: BorderSide(
//                           color: Color.fromRGBO(9, 96, 186, 1), width: 1.5),
//                     ),
//                     hintText: 'Enter Mobile Number',
//                     hintStyle: TextStyle(
//                         color: Color.fromRGBO(186, 186, 186, 1),
//                         fontSize: 14,
//                         fontWeight: FontWeight.w600),
//                   ),
//                 )),
//             SizedBox(
//               height: 55,
//             ),
//             InkWell(
//               onTap: () {
//                 Get.dialog(Dialog(
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10)),
//                   child: Container(
//                     height: 445,
//                     width: 300,
//                     decoration: BoxDecoration(),
//                     child: Column(
//                       children: [
//                         SizedBox(
//                           height: 37,
//                         ),
//                         Center(
//                             child:
//                                 Image.asset("assets/images/Illustration.png")),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Center(
//                             child: Text(
//                           "No Account Found ",
//                           style: TextStyle(
//                             fontWeight: FontWeight.w600,
//                             fontSize: 20,
//                           ),
//                         )),
//                         SizedBox(height: 25),
//                         Center(
//                             child: Text(
//                           "Try with other number or create a",
//                           style: TextStyle(
//                               fontWeight: FontWeight.w500,
//                               fontSize: 16,
//                               color: Color.fromRGBO(90, 90, 90, 1)),
//                         )),
//                         Center(
//                             child: Text(
//                           "new account",
//                           style: TextStyle(
//                               fontWeight: FontWeight.w500,
//                               fontSize: 16,
//                               color: Color.fromRGBO(90, 90, 90, 1)),
//                         )),
//                         SizedBox(
//                           height: 25,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: InkWell(
//                             onTap: () {
//                               Get.to(Signup());
//                             },
//                             child: Container(
//                               width: 220,
//                               height: 51,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(8),
//                                   gradient: LinearGradient(
//                                       begin: Alignment.centerLeft,
//                                       end: Alignment.centerRight,
//                                       colors: [
//                                         Color.fromRGBO(13, 149, 211, 1),
//                                         Color.fromRGBO(9, 96, 186, 1)
//                                       ])),
//                               child: Center(
//                                   child: Text(
//                                 "Create Account",
//                                 style: TextStyle(
//                                     fontSize: 17,
//                                     fontWeight: FontWeight.w700,
//                                     color: Colors.white),
//                               )),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ));
//               },
//               child: InkWell(
//                 onTap: () {
//                   Get.to(Otp());
//                 },
//                 child: Container(
//                   width: 283,
//                   height: 51,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       gradient: LinearGradient(
//                           begin: Alignment.centerLeft,
//                           end: Alignment.centerRight,
//                           colors: [
//                             Color.fromRGBO(13, 149, 211, 1),
//                             Color.fromRGBO(9, 96, 186, 1)
//                           ])),
//                   child: Center(
//                       child: Text(
//                     "Log In",
//                     style: TextStyle(
//                         fontSize: 17,
//                         fontWeight: FontWeight.w700,
//                         color: Colors.white),
//                   )),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 70,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Center(
//                     child: Text(
//                   "Don’t have a account ?",
//                   style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
//                 )),
//                 SizedBox(
//                   width: 2,
//                 ),
//                 Center(
//                     child: InkWell(
//                   onTap: () {
//                     Get.to(Signup());
//                   },
//                   child: Text(
//                     "Sign Up",
//                     style: TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.w700,
//                         color: Colors.blue),
//                   ),
//                 ))
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }



















import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:khelnet/Pages/otp.dart';
import 'package:khelnet/Pages/signup.dart';

class Academy extends StatefulWidget {
  const Academy({super.key});

  @override
  State<Academy> createState() => _AcademyState();
}

class _AcademyState extends State<Academy> {
  TextEditingController _numberController = TextEditingController();

  // Simulating a backend call to check if the mobile number exists in the database
  Future<bool> checkMobileNumber(String mobileNumber) async {
    // You can replace this with your actual API call to check the mobile number
    await Future.delayed(Duration(seconds: 2)); // Simulating network delay

    // Simulated response - replace with actual logic
    List<String> registeredNumbers = ['1234567890', '9876543210']; // Sample data
    return registeredNumbers.contains(mobileNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 20),
            Padding(
                padding: const EdgeInsets.only(top: 35, right: 22, left: 22),
                child: TextField(
                  controller: _numberController,
                  maxLength: 10,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(241, 241, 241, 0.58),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: BorderSide(color: Colors.transparent, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: BorderSide(color: Colors.transparent, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(9, 96, 186, 1), width: 1.5),
                    ),
                    hintText: 'Enter Mobile Number',
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(186, 186, 186, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                )
                ),
            SizedBox(height: 55),
            InkWell(
              onTap: () async {
                String enteredNumber = _numberController.text.trim();

                // Check if the mobile number is in the database
                bool numberExists = await checkMobileNumber(enteredNumber);

                if (numberExists) {
                  // If number exists, navigate to the OTP page
                  Get.to(() => Otp(), arguments: {'mobileNumber': enteredNumber});
                } else {
                  // Show dialog if the number is not found
                  Get.dialog(Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      height: 445,
                      width: 300,
                      child: Column(
                        children: [
                          SizedBox(height: 37),
                          Center(
                              child:
                                  Image.asset("assets/images/Illustration.png")),
                          SizedBox(height: 20),
                          Center(
                              child: Text(
                            "No Account Found ",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          )),
                          SizedBox(height: 25),
                          Center(
                              child: Text(
                            "Try with other number or create a",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color.fromRGBO(90, 90, 90, 1)),
                          )),
                          Center(
                              child: Text(
                            "new account",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color.fromRGBO(90, 90, 90, 1)),
                          )),
                          SizedBox(height: 25),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                Get.to(Signup());
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
                                  "Create Account",
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
              },
              child: Container(
                width: 283,
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
                  "Log In",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                )),
              ),
            ),
            SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Text(
                  "Don’t have a account ?",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                )),
                SizedBox(width: 2),
                Center(
                    child: InkWell(
                  onTap: () {
                    Get.to(Signup());
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue),
                  ),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

