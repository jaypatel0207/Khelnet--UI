import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:khelnet/Pages/Students/AddStudent.dart';
import 'package:khelnet/Pages/Students/studentbasicinfo.dart';
import 'package:khelnet/Pages/Students/studentinfo.dart';

class Studentfound extends StatefulWidget {
  const Studentfound({super.key});

  @override
  State<Studentfound> createState() => _NodatafoundState();
}

class _NodatafoundState extends State<Studentfound> {
  String status = "Active"; 

  List<Map<String, dynamic>> activeMembers = [
    {
      "name": "Shivam Jain",
    },
    {
      "name": "Shivam Jain",
    },
    {
      "name": "Shivam Jain",
    },
    {
      "name": "Kanha Jain",
    },
    {
      "name": "Krishna Jain",
    },
    {
      "name": "Narayan Jain",
    },
    {
      "name": "Narayan 3",
    }
  ];
  List<String> inactiveMembers = ["Bob White", "Charlie Black", "David Gray"];

  List<Map<String, dynamic>> _foundcenter = [];

  @override
  void initState() {
    _foundcenter = activeMembers.cast<Map<String, dynamic>>();
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = activeMembers.cast<Map<String, dynamic>>();
    } else {
      results = activeMembers
          .where((user) =>
              user["name"]
                  .toLowerCase()
                  .contains(enteredKeyword.toLowerCase()) ||
              user["Number"].toString().contains(enteredKeyword))
          .cast<Map<String, dynamic>>()
          .toList();
    }

    setState(() {
      _foundcenter = results;
    });
  }

  @override
  Widget build(BuildContext context) {
 
    List<Object> membersToShow =
        status == "Active" ? activeMembers : inactiveMembers;

 
    int totalMembers = activeMembers.length + inactiveMembers.length;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Student",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.tune,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
              )),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 80.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.0,
                      left: 15,
                      right: 15,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            onChanged: (value) => _runFilter(value),
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color.fromRGBO(186, 186, 186, 1),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(35),
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(186, 186, 186, 1),
                                    width: 1.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(26),
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(9, 96, 186, 1),
                                    width: 1.5),
                              ),
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                  color: Color.fromRGBO(186, 186, 186, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.person,
                                  color: Colors.black,
                                )),
                            Text(
                              totalMembers
                                  .toString(), 
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(status,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color.fromRGBO(9, 96, 186, 1))),
                          SizedBox(width: 10),
                          PopupMenuButton<String>(
                            icon: const Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.blue,
                            ),
                            onSelected: (String value) {
                              setState(() {
                                status = value; 
                              });
                            },
                            itemBuilder: (BuildContext context) {
                              return [
                                const PopupMenuItem<String>(
                                  value: "Active",
                                  child: Text("Active"),
                                ),
                                const PopupMenuItem<String>(
                                  value: "Inactive",
                                  child: Text("Inactive"),
                                ),
                              ];
                            },
                          ),
                        ],
                      )
                    ],
                  ),
              const     SizedBox(
                    height: 15,
                  ),
             
                  membersToShow.isNotEmpty
                      ? ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: membersToShow.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromRGBO(241, 241, 241, 1),
                                      width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ListTile(
                                  leading: const CircleAvatar(
                                    backgroundImage:
                                        AssetImage("assets/images/mouth.png"),
                                    radius: 20,
                                  ),
                                  title: Text(_foundcenter[index]["name"]),
                                  subtitle: const Text(
                                    "Shine 1 ( 4:00 PM - 6:00 PM )",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                  trailing: IconButton(
                                    onPressed: () {
                                      Get.to(Studentinfo(
                                        name: "",
                                        key: Key(""),
                                      ));
                                
                                    },
                                    icon: const Icon(
                                      Icons.arrow_forward_ios,
                                      size: 18,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        )
                      : Padding(
                          padding: const EdgeInsets.only(
                              top: 16.0, right: 25, left: 25),
                          child: Column(
                            children: [
                              Image.asset("assets/images/play.png"),
                              SizedBox(height: 15),
                              Text("No Students Found",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16)),
                            ],
                          ),
                        ),
                  SizedBox(
                    height: 210,
                  ),
                ],
              ),
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
                colors: [Colors.lightBlue, Colors.blue],
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
          ),  
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, 
    );
  }
}
