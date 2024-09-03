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
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  physics:
                      NeverScrollableScrollPhysics(), // Prevent ListView from scrolling
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
                                  color: Color.fromRGBO(241, 241, 241, 1))),
                          child: ListTile(
                            leading: Image.asset("assets/images/mouth.png"),
                            title: Text(
                              studentList[index],
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text(
                              "Shine 1 ( 4:00 PM - 6:00 PM )",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            trailing: IconButton(
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                ),
                                onPressed: () {
                                 
                                }),
                          ),
                        ));
                  }),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Center(
            child: InkWell(
              onTap: () {
                Get.to(Addstudent());
              },
              child: Container(
                height: 64,
                width: 315,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromRGBO(13, 149, 211, 1),
                          Color.fromRGBO(9, 96, 186, 1),
                        ]),
                    borderRadius: BorderRadius.circular(84)),
                child: Center(
                    child: Text(
                  "Add Students",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color.fromRGBO(251, 251, 251, 1)),
                )),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
