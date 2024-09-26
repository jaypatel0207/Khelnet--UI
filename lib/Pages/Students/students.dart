import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khelnet/Pages/Students/AddStudent.dart';
import 'package:khelnet/Pages/Students/studentinfo.dart';

class Students extends StatefulWidget {
  const Students({super.key});

  @override
  State<Students> createState() => _StudentsState();
}

class _StudentsState extends State<Students> {
  List<String> studentList = [
    "Shivam Jain",
    "Shivam Jain",
    "Shivam Jain",
    "Shivam Jain",
    "Shivam Jain",
    "Shivam Jain",
    "Shivam Jain",
    "Shivam Jain",
    "Shivam Jain",
    "Shivam Jain"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: studentList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          top: 15, left: 20, right: 20, bottom: 10),
                      child: Container(
                        height: 63,
                        width: 360,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(241, 241, 241, 1),
                          ),
                        ),
                        child: ListTile(
                          leading: Image.asset("assets/images/mouth.png"),
                          title: Text(
                            studentList[index],
                            style: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                          subtitle: const Text(
                            "Shine 1 ( 4:00 PM - 6:00 PM )",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          trailing: IconButton(
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          
        ],
      ),
      floatingActionButton: Container(
        height: 64.0, 
        width: 315.0,  
        child: FloatingActionButton(
          onPressed: () {
            Get.to(const Addstudent());
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0), 
          ),
          backgroundColor: Colors.transparent, 
          elevation: 0,
          child:  Ink(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [  Color.fromRGBO(13, 149, 211, 1),
                          Color.fromRGBO(9, 96, 186, 1)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Container(
              alignment: Alignment.center,
              child: const Text(
                'Add Student',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),  // Remove shadow if you want
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
