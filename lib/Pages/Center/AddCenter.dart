import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:khelnet/Pages/coaches/AddBatch.dart';

class Addcenter extends StatefulWidget {
  final String startTime;
  final String endTime;

  Addcenter({
    required this.startTime,
    required this.endTime,
  });

  @override
  State<Addcenter> createState() => _AddcenterState();
}

class _AddcenterState extends State<Addcenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Center',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(top: 11, right: 20, left: 20),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(251, 251, 251, 1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                    ),
                    hintText: 'Center Name',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(186, 186, 186, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 13, right: 20, left: 20),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(251, 251, 251, 1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                    ),
                    hintText: 'Address',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(186, 186, 186, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 11, right: 20, left: 20),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(251, 251, 251, 1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {
                          Get.to(Addbatch());
                        },
                        icon: Icon(
                          Icons.add,
                          color: Colors.blue,
                        )),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                    ),
                    hintText: 'Add Batch',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(186, 186, 186, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  readOnly: true,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Batches",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 67,
                  width: 356,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Color.fromRGBO(186, 186, 186, 1)),
                      borderRadius: BorderRadius.circular(6)),
                  child: ListTile(
                    //title: Text(widget.batchName.toString(), style: TextStyle(color: Colors.blue),),
                    subtitle: Text(
                      "(" +
                          widget.startTime.toString() +
                          "  -  " +
                          widget.endTime.toString() +
                          ")",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 350,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
         width: 347,
                        height: 51,
        child: FloatingActionButton(
          onPressed: () {
            // Define the action when the button is pressed
            Get.snackbar("Centers Add Sucessfully", "Thank You");
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0), // Rounded edges
          ),
          backgroundColor:
              Colors.transparent, // Make background transparent to use gradient
          elevation: 0,
          child: Ink(
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
          ), // Remove shadow if you want
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
