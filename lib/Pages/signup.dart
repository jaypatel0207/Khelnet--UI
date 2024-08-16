import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Center(child: Text("Sign Up" ,style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24, ),)), 



            Stack(
              children: [
                Image.asset("assets/images/circle.png"), 
                Positioned.fill(child: Image.asset("assets/images/home.png"))
              ],
            ), 


            Center(child: Text("Academy Logo", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color.fromRGBO(186, 186, 186, 1)),))
          ],
        ),
      ),
    );
  }
}