import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';
import 'package:khelnet/Pages/coaches/basicinfo.dart';
import 'package:khelnet/Pages/coaches/batches.dart';
import 'package:khelnet/Pages/Students/students.dart';

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
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: CustomAppBar(title: "Coach Info",
             actions: [
                Container(
                  height: 36,
                  width: 36,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 233, 201, 212)),
                  child: const Center(
                      child: Icon(
                    Icons.delete,
                    color: Color.fromRGBO(223, 92, 92, 1),
                  )),
                ),
                const SizedBox(
                  width: 10,
                ),
              ], 
            
            leading: Row(
                children: [
                 const SizedBox(
                    width: 13,
                  ),
                  Builder(builder: (context) {
                    return InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                          height: 36,
                          width: 36,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(13, 141, 207, 0.13)),
                          child: const Center(
                              child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Color.fromRGBO(11, 121, 198, 1),
                          ))),
                    );
                  }),
                ],
              ),
            
            
            
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
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(186, 186, 186, 1),
                            width: 1.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(186, 186, 186, 1),
                            width: 1.5),
                      ),
                      prefixIcon: const Icon(Icons.person, color: Colors.black),
                      hintText: 'Name',
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 25),
                      hintStyle: const TextStyle(
                        color: Color.fromRGBO(186, 186, 186, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
             const    SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      left: 22.0, right: 22, top: 15, bottom: 25),
                  child: TabBar(
                      labelColor: Color.fromRGBO(9, 96, 186, 1),
                      dividerColor: Colors.transparent,
                      indicator: UnderlineTabIndicator(
                          borderSide: BorderSide(
                              width: 2, color: Color.fromRGBO(9, 96, 186, 1))),
                      unselectedLabelColor: Color.fromRGBO(186, 186, 186, 1),
                      tabs: [
                        Tab(
                          child: Center(
                            child: Text(
                              "Basic Info",
                              style: TextStyle(
                                fontSize: 18.4,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Center(
                            child: Text(
                              "Batches",
                              style: TextStyle(
                                fontSize: 18.4,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Center(
                            child: Text(
                              "Students",
                              style: TextStyle(
                                fontSize: 18.4,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
           const      Expanded(
                    child: TabBarView(children: [
                  Basicinfo(),
                  Batches(),
                 Students(),
                ]))
              ],
            ),
          )),
    );
  }
}
