import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool value = false;
  File? _image;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        _image = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Text(
                "Sign Up",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              )),
              SizedBox(height: 15,), 
Stack(
  children: [
    InkWell(
      onTap: _pickImage,
      child: CircleAvatar(
        radius: 50, 
        backgroundImage: _image != null
          ? Image.file(_image!).image
          : Image.asset("assets/images/home.png").image,
      ),
    ),
  ],
), 

SizedBox(height: 15,), 
              Center(
                  child: Text(
                "Academy Logo",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(186, 186, 186, 1)),
              )),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
                child: Container(
                  height: 50,
                  width: 353,
                  child: TextField(
                    //controller: ,

                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(241, 241, 241, 1),
                      prefixIcon: Icon(
                        Icons.person,
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
                      hintText: 'Full name *',
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(186, 186, 186, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, right: 20, left: 20),
                child: Container(
                  height: 50,
                  width: 353,
                  child: TextField(
                    //controller: ,

                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(241, 241, 241, 1),
                      prefixIcon: Icon(
                        Icons.sports_basketball,
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
                      hintText: 'Academy name *',
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(186, 186, 186, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, right: 20, left: 20),
                child: Container(
                  height: 50,
                  width: 353,
                  child: TextField(
                    //controller: ,

                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(241, 241, 241, 1),
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
                      hintText: 'Mobile Number *',
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(186, 186, 186, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, right: 20, left: 20),
                child: Container(
                  height: 50,
                  width: 353,
                  child: TextField(
                    //controller: ,

                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(241, 241, 241, 1),
                      prefixIcon: Icon(
                        Icons.location_on,
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
                      hintText: 'Academy Location *',
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(186, 186, 186, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, right: 20, left: 20),
                child: Container(
                  height: 50,
                  width: 353,
                  child: TextField(
                    //controller: ,

                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.keyboard_arrow_down)),
                      suffixIconColor: Color.fromRGBO(13, 149, 211, 1),
                      filled: true,
                      fillColor: Color.fromRGBO(241, 241, 241, 1),
                      prefixIcon: Icon(
                        Icons.sports_kabaddi_rounded,
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
                      hintText: 'Sports *',
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(186, 186, 186, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, right: 20, left: 20),
                child: Container(
                  height: 50,
                  width: 353,
                  child: TextField(
                    //controller: ,

                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(241, 241, 241, 1),
                      prefixIcon: Icon(
                        Icons.email_outlined,
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
                      hintText: 'Email Adress',
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(186, 186, 186, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Checkbox(
                    activeColor: Color.fromRGBO(13, 149, 211, 1),
                    checkColor: Color.fromRGBO(237, 237, 237, 1),
                    focusColor: Color.fromRGBO(237, 237, 237, 1),
                    value: this.value,
                    onChanged: (value) {
                      setState(() {
                        this.value = value!;
                      });
                    },
                  ),
                  Text(
                    "I Agree All ",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                      onTap: () {},
                      child: Text(
                        "Terms & Conditions",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(9, 96, 186, 1)),
                      ))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: InkWell(
                 
                  child: Container(
                    width: 309,
                    height: 45,
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
                      "Create Profile",
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
      ),
    );
  }
}
