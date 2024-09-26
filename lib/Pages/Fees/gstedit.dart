// import 'dart:io';

// import 'package:flutter/material.dart';

// class GstConfirmationPage extends StatelessWidget {
//   final String companyName;
//   final String companyMobile;
//   final String companyAddress;
//   final String gstNumber;
//   final String hsnSac;
//   final File? signatureFile;

//   const GstConfirmationPage({
//     Key? key,
//     required this.companyName,
//     required this.companyMobile,
//     required this.companyAddress,
//     required this.gstNumber,
//     required this.hsnSac,
//     this.signatureFile,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('GST Details Confirmation'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('Company Name: $companyName'),
//             Text('Company Mobile: $companyMobile'),
//             Text('Company Address: $companyAddress'),
//             Text('GST Number: $gstNumber'),
//             Text('HSN/SAC: $hsnSac'),
//             SizedBox(height: 20),
//             if (signatureFile != null) // Show signature image if it's available
//               Image.file(
//                 signatureFile!,
//                 width: 100,
//                 height: 100,
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';
import 'package:khelnet/Pages/Fees/gsteditpage.dart';

class Gstedit extends StatelessWidget {
  final String companyName;
  final String companyMobile;
  final String companyAddress;
  final String gstNumber;
  final String hsnSac;
  final File? signatureFile;

  const Gstedit({
    Key? key,
    required this.companyName,
    required this.companyMobile,
    required this.companyAddress,
    required this.gstNumber,
    required this.hsnSac,
    this.signatureFile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "GST Setting"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 17, top: 10, right: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Comapany Details",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(251, 251, 251, 1),
                          border: Border.all(
                              width: 1,
                              color: Color.fromRGBO(241, 241, 241, 1))),
                      child: InkWell(
                          onTap: () {
                          Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => GstEditPage(
                                    companyName: companyName,
                                    companyMobile: companyMobile,
                                    companyAddress: companyAddress,
                                    gstNumber: gstNumber,
                                    hsnSac: hsnSac,
                                    signatureFile: signatureFile,
                                  ),
                                ),
                              );
                          },
                          child: Icon(Icons.edit)))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 22),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    border: Border.all(
                        color: const Color.fromRGBO(241, 241, 241, 1))),
                child: TextField(
                  readOnly: true,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 12),
                    border: InputBorder.none,
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(right: 20, left: 20),
                      child: Icon(
                        Icons.maps_home_work_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    hintText: "$companyName",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    border: Border.all(
                        color: const Color.fromRGBO(241, 241, 241, 1))),
                child: TextField(
                  readOnly: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 12),
                    border: InputBorder.none,
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(right: 20, left: 20),
                      child: Icon(
                        Icons.phone,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    hintText: "$companyMobile",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    border: Border.all(
                        color: const Color.fromRGBO(241, 241, 241, 1))),
                child: TextField(
                  readOnly: true,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 11),
                    border: InputBorder.none,
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(right: 20, left: 20),
                      child: Icon(
                        Icons.location_on,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    hintText: "$companyAddress",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    border: Border.all(
                        color: const Color.fromRGBO(241, 241, 241, 1))),
                child: TextField(
                  readOnly: true,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 12),
                    border: InputBorder.none,
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(right: 20, left: 20),
                      child: Icon(
                        Icons.attach_money_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    hintText: "$gstNumber",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    border: Border.all(
                        color: const Color.fromRGBO(241, 241, 241, 1))),
                child: TextField(
                  readOnly: true,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 11),
                    border: InputBorder.none,
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(right: 20, left: 20),
                      child: Icon(
                        Icons.money,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    hintText: "$hsnSac",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 25),
              child: Text(
                "* Extra 18% GST will be added to the total fees amount being charged and the amount will reflect in Fee reminders , Reports , Dashboard and Invoices",
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Center(
              child: GestureDetector(
                child: DottedBorder(
                  color: Colors.blue,
                  strokeWidth: 2,
                  dashPattern: const [6, 4],
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(20),
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 150,
                    color: Colors.white,
                    child: signatureFile != null
                        ? Image.file(
                            signatureFile!,
                            width: 100,
                            height: 100,
                          )
                        : Container(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
