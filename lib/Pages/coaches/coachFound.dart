import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';
import 'package:khelnet/Pages/coaches/AddCoaches.dart';
import 'package:khelnet/Pages/coaches/coachInfo.dart';

class Coachfound extends StatefulWidget {
  const Coachfound({super.key});

  @override
  State<Coachfound> createState() => _CoachfoundState();
}

class _CoachfoundState extends State<Coachfound> {
  List<String> nameList = [
    "Jay Patel",
    "Rajiv Prashad",
    "Rajiv Prashad",
    "Rajiv Prashad",
    "Rajiv Prashad"
  ];

  late int totalMembers;

  @override
  void initState() {
    super.initState();
    totalMembers = nameList.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: "Coaches",
        
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.tune,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color.fromRGBO(186, 186, 186, 1),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(186, 186, 186, 1),
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(9, 96, 186, 1),
                          width: 1.5,
                        ),
                      ),
                      hintText: 'Search',
                      hintStyle: const TextStyle(
                        color: Color.fromRGBO(186, 186, 186, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset("assets/images/vistel.png"),
                    ),
                    Text(
                      totalMembers.toString(),
                      style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: nameList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                    top: 8, left: 15, right: 15, bottom: 15),
                child: Container(
                  height: 63,
                  width: 360,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: const Color.fromRGBO(241, 241, 241, 1))),
                  child: ListTile(
                    title: Text(
                      nameList[index],
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    subtitle: const Text("Total Batches - 02"),
                    trailing: IconButton(
                        onPressed: () {
                          Get.to(const Coachinfo());
                        },
                        icon: const Icon(Icons.arrow_forward_ios)),
                    leading: Image.asset("assets/images/mouth.png"),
                  ),
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: Container(
        height: 64.0, // Custom height for the button
        width: 315.0,  // Custom width for the button
        child: FloatingActionButton(
          onPressed: () {
            // Define the action when the button is pressed
            Get.to(const Addcoaches());
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0), // Rounded edges
          ),
          backgroundColor: Colors.transparent, // Make background transparent to use gradient
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
                'Add Coaches',
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
