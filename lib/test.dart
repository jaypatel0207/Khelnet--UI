



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
          
          
              
              Container(
                
                height: 57.h, 
                width: 356.w, 
          
                decoration: BoxDecoration(
                  color: Color.fromRGBO(241, 241, 241, 1) , 
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      const Text("Session Left", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Color.fromRGBO(186  , 186 , 186, 1)),), 
                      SizedBox(width: 150.w), 
                      Container(
                        width: 50.w, // Adjust the width as needed
                        height: 40.h,  // Adjust the height as needed
                        child: const TextField(
                          keyboardType: TextInputType.number, 
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            isDense: true,  // Reduces the height of the TextField
                            contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 10), // Adjust padding
                          ),
                        ),
                      ), 
                      
                      const Text(" /Month", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Color.fromRGBO(186  , 186 , 186, 1))),
                    ],
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
