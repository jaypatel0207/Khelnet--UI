import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';
import 'package:khelnet/Pages/Fees/PerProfile.dart';

class Feesprofile extends StatefulWidget {
  const Feesprofile({super.key});

  @override
  State<Feesprofile> createState() => _FeesprofileState();
}

class _FeesprofileState extends State<Feesprofile> {
  DateTime? selectedDate;
  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Profile"),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 13,
          ),
          Center(
            child: Container(
              height: 80.h,
              width: 360.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(241, 241, 241, 1)),
              child: Center(
                child: ListTile(
                  leading: Image.asset("assets/images/modi.png"),
                  title: const Text(
                    "Narendra Modi",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                  subtitle: const Text(
                    "Khelnet Sports Academy Morning",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                  trailing: InkWell(
                    onTap: () {
                      Get.to(const Perprofile()); 
                    },
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Plan",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(186, 186, 186, 1)),
                ),
                Text("PP3 Monthly Plan",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700))
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18, right: 18, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Installment Number",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(186, 186, 186, 1)),
                ),
                Text("04 / 05",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 16, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Transaction Date",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(186, 186, 186, 1))),
                Row(
                  children: [
                    Text(
                      selectedDate != null
                          ? DateFormat('dd-MM-yyyy').format(selectedDate!)
                          : "Select Date",
                      style: const TextStyle(
                          fontSize: 18,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    InkWell(
                        onTap: () => _selectDate(context),
                        child: Image.asset(
                          "assets/images/Subtract.png",
                          height: 20,
                          width: 20,
                        ))
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 18, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Mode",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(186, 186, 186, 1)),
                ),
                Text("Cash",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700))
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 18, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Invoice No",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(186, 186, 186, 1)),
                ),
                Text("#258063",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700))
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 18, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Installment Amount",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(186, 186, 186, 1)),
                ),
                Text("\u{20B9}${8000}",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700))
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 18, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "GST",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(186, 186, 186, 1)),
                ),
                Text("\u{20B9}${24}",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700))
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 18, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Amount",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(186, 186, 186, 1)),
                ),
                Text("\u{20B9}${8024}",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700))
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 18, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Remarks",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(186, 186, 186, 1)),
                ),
                SizedBox(
                  width: 130,
                ),
                Expanded(
                  child: TextField(
                    maxLines: 2,
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),

      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 35, right: 1, top: 20),
        child: Row(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 57,
                width: 300,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromRGBO(13, 149, 211, 1),
                          Color.fromRGBO(9, 96, 186, 1),
                        ]),
                    borderRadius: BorderRadius.circular(84)),
                child: const Center(
                    child: Text(
                  "Download Invoice",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color.fromRGBO(251, 251, 251, 1)),
                )),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Container(
              height: 56.h,
              width: 56.w,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromRGBO(13, 149, 211, 1),
                        Color.fromRGBO(9, 96, 186, 1)
                      ])),
              child: const Icon(
                Icons.share,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),

      //   floatingActionButton: Container(
      //   height: 64.0, // Custom height for the button
      //   width: 315.0,  // Custom width for the button
      //   child: FloatingActionButton(
      //     onPressed: () {
      //       // Define the action when the button is pressed
      //      // Get.to(const Addstudent());
      //     },
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(30.0), // Rounded edges
      //     ),
      //     backgroundColor: Colors.transparent, // Make background transparent to use gradient
      //     elevation: 0,
      //     child:  Ink(
      //       decoration: BoxDecoration(
      //         gradient: const LinearGradient(
      //           colors: [Colors.lightBlue, Colors.blue],
      //           begin: Alignment.centerLeft,
      //           end: Alignment.centerRight,
      //         ),
      //         borderRadius: BorderRadius.circular(30.0),
      //       ),
      //       child: Container(
      //         alignment: Alignment.center,
      //         child: const Text(
      //           'Add Student',
      //           style: TextStyle(
      //             fontWeight: FontWeight.bold,
      //             fontSize: 16.0,
      //             color: Colors.white,
      //           ),
      //         ),
      //       ),
      //     ),  // Remove shadow if you want
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
