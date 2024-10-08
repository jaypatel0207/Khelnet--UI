import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';
import 'package:khelnet/Pages/Center/AddCenter.dart';

class Centerfound extends StatefulWidget {
  const Centerfound({super.key});

  @override
  State<Centerfound> createState() => _CenterfoundState();
}





class _CenterfoundState extends State<Centerfound> {
  List<Map<String, dynamic>> Centers = [
    {"name": "Khelnet Gurgaon Sector -1", "batches": "Total Batches - 02"},
    {"name": "Khelnet Gurgaon Sector -1", "batches": "Total Batches - 02"},
    {"name": "Khelnet Gurgaon Sector -1", "batches": "Total Batches - 02"},
    {"name": "Khelnet Gurgaon Sector -1", "batches": "Total Batches - 02"},
    {"name": "Khelnet Gurgaon Sector -1", "batches": "Total Batches - 02"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar(title: "Center", 
     
      
      
      
      
      
      
      ),

      // AppBar(
      //   title: Text(
      //     "Center",
      //     style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
      //   ),
      //   centerTitle: true,
      // ),

      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.only(
          top: 15.0,
          left: 15,
          right: 15,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    // onChanged: (value) => _runFilter(value),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color.fromRGBO(186, 186, 186, 1),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(186, 186, 186, 1),
                            width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(9, 96, 186, 1), width: 1.5),
                      ),
                      hintText: 'Search',
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(186, 186, 186, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.payment,
                    color: Colors.black,
                  ),
                ),
                const Text("0"),
              ],
            ),
            const SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: Centers.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 63,
                      width: 358,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 1,
                              color: const Color.fromRGBO(241, 241, 241, 1))),
                      child: ListTile(
                        title: Text(
                          "${Centers[index]["name"]}",
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                        subtitle: Text("${Centers[index]["batches"]}",
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14)),
                        trailing: InkWell(
                            onTap: () {},
                            child: const Icon(Icons.arrow_forward_ios)),
                      ),
                    ),
                  );
                },
              ),
            ),
           
          ],
        ),
      ),
      floatingActionButton: Container(
           width: 347,
                    height: 51,
        child: FloatingActionButton(
          onPressed: () {
            // Define the action when the button is pressed
             Get.to(Addcenter(
                    startTime: '',
                    endTime: '',
                  ));
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0), // Rounded edges
          ),
          backgroundColor: Colors.transparent, // Make background transparent to use gradient
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
                'Add Centers',
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
