import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Addstudent extends StatefulWidget {
  const Addstudent({super.key});

  @override
  State<Addstudent> createState() => _AddstudentState();
}

class _AddstudentState extends State<Addstudent> {
  File? _image;
  bool _additionalInfoExpanded = false;

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
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Student',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 20),
            InkWell(
              onTap: _pickImage,
              child: Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: _image != null
                      ? Image.file(_image!).image
                      : Image.asset("assets/images/image.png").image,
                ),
              ),
            ),
            Theme(
              data: theme,
              child: Padding(
                padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
                child: ExpansionTile(
                  title: Text(
                    'Basic Info',
                    style: TextStyle(
                      color: Color.fromRGBO(9, 96, 186, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  initiallyExpanded: _additionalInfoExpanded,
                  onExpansionChanged: (value) {
                    setState(() {
                      _additionalInfoExpanded = value;
                    });
                  },
                  children: [
                    // Add additional information fields here
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(247, 247, 247, 1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(26),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(26),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(186, 186, 186, 1),
                              width: 1.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(26),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(186, 186, 186, 1),
                              width: 1.5),
                        ),
                        hintText: 'Student Name',
                                                  contentPadding:EdgeInsets.symmetric(vertical: 15, horizontal: 25),

                        hintStyle: TextStyle(
                          color: Color.fromRGBO(186, 186, 186, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                      Padding(
                        padding: const EdgeInsets.only(top: 11, right: 0, left: 0),
                        child: TextField(
                          keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(247, 247, 247, 1),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(26),
                            borderSide:
                                BorderSide(color: Colors.transparent, width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(26),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(186, 186, 186, 1),
                                width: 1.5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(26),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(186, 186, 186, 1),
                                width: 1.5),
                          ),
                          hintText: 'Contact Number',
                          contentPadding:EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                          hintStyle: TextStyle(
                            color: Color.fromRGBO(186, 186, 186, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                                            ),
                      ),

                        Padding(
                        padding: const EdgeInsets.only(top: 11, right: 0, left: 0),
                        child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(247, 247, 247, 1),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(26),
                            borderSide:
                                BorderSide(color: Colors.transparent, width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(26),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(186, 186, 186, 1),
                                width: 1.5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(26),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(186, 186, 186, 1),
                                width: 1.5),
                          ),
                          hintText: 'Student Name',
                                                    contentPadding:EdgeInsets.symmetric(vertical: 15, horizontal: 25),

                          hintStyle: TextStyle(
                            color: Color.fromRGBO(186, 186, 186, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                                            ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
