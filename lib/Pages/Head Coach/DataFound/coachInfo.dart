import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Coachinfo extends StatefulWidget {
  const Coachinfo({super.key});

  @override
  State<Coachinfo> createState() => _CoachinfoState();
}

class _CoachinfoState extends State<Coachinfo> {
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(length: 3, child: Scaffold(
        backgroundColor: Colors.white, 
      appBar: AppBar(
        backgroundColor: Colors.white,
         title: const Text(
          'Coach Info',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
          
        ),
        centerTitle: true,
        actions: [
      
          Container(
            height: 36, 
            width: 36, 
            decoration: const BoxDecoration(
              shape: BoxShape.circle, 
              color: Color.fromARGB(255, 233, 201, 212)
            ),
            child: const Center(child: Icon(Icons.delete, color: Color.fromRGBO(223, 92, 92, 1),)),
          ),
          
          const SizedBox(width: 10,), 
          
        ],
      ),

      body: Column(
        children: [
           InkWell(
                onTap: _pickImage,
                child: Center(
                  child: CircleAvatar(
                    radius: 65,
                    backgroundColor: Colors.white,
                    backgroundImage: _image != null
                        ? Image.file(_image!).image
                        : Image.asset("assets/images/addcoaches.png").image,
                  ),
                ),
              ),




               Padding(
                padding: const EdgeInsets.only(top: 11, right: 20, left: 20),
                child: TextField(
           
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide:
                          const BorderSide(color: Colors.transparent, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                    ),
                    prefixIcon: const Icon(Icons.person, color: Colors.black), 
                    hintText: 'Name',
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                    hintStyle: const TextStyle(
                      color: Color.fromRGBO(186, 186, 186, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),





              const TabBar(tabs: [
                 Tab(
                          child: Center(
                            child: Text(
                              "Basic Info",
                              style: TextStyle(
                                fontSize: 16.37,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                         Tab(
                          child: Center(
                            child: Text(
                              "Charges",
                              style: TextStyle(
                                fontSize: 16.37,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),

                         Tab(
                          child: Center(
                            child: Text(
                              "Charges",
                              style: TextStyle(
                                fontSize: 16.37,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),



              ])
        ],
      ),
      )),
    );
  }
}