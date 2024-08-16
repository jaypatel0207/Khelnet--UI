import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';


class Coach extends StatefulWidget {
  const Coach({super.key});

  @override
  State<Coach> createState() => _CoachState();
}

class _CoachState extends State<Coach> {
  TextEditingController _numberController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.only(top: 35, right: 22, left: 22),
                child: TextField(
                  maxLength: 10,
                  controller: _numberController,
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
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 1.0),
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
                )),
            Padding(
                padding: const EdgeInsets.only(top: 35, right: 22, left: 22),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(241, 241, 241, 0.58),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(9, 96, 186, 1), width: 1.5),
                    ),
                    hintText: 'Enter password',
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(186, 186, 186, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                )),
            SizedBox(
              height: 55,
            ),
            InkWell(
              onTap: () {
                //Get.to(Incorrect());
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
            SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
