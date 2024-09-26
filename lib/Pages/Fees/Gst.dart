import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';
import 'package:khelnet/Pages/Fees/gstedit.dart';

class Gst extends StatefulWidget {
  const Gst({super.key});

  @override
  State<Gst> createState() => _GstState();
}

class _GstState extends State<Gst> {
  File? _selectedFile; // Variable to hold the selected file

  // Function to handle file picking
  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image, // Allow only image files
    );

    if (result != null && result.files.isNotEmpty) {
      String? filePath = result.files.single.path;
      if (filePath != null) {
        setState(() {
          _selectedFile = File(filePath); // Update the selected file
        });
      }
    } else {
      // User canceled the picker
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('No file selected')),
      );
    }
  }

  final TextEditingController _companyNameController = TextEditingController();
  final TextEditingController _companyMobileController =
      TextEditingController();
  final TextEditingController _companyAddressController =
      TextEditingController();
  final TextEditingController _gstNumberController = TextEditingController();
  final TextEditingController _hsnSacController = TextEditingController();

  void _saveAndNavigate() {
    // Capture the user input
    String companyName = _companyNameController.text;
    String companyMobile = _companyMobileController.text;
    String companyAddress = _companyAddressController.text;
    String gstNumber = _gstNumberController.text;
    String hsnSac = _hsnSacController.text;

    // Perform validation if necessary (e.g., check for empty fields)
    if (companyName.isEmpty ||
        companyMobile.isEmpty ||
        companyAddress.isEmpty ||
        gstNumber.isEmpty ||
        hsnSac.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in all fields')),
      );
      return;
    }

    // Navigate to another page after saving
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Gstedit(
          companyName: companyName,
          companyMobile: companyMobile,
          companyAddress: companyAddress,
          gstNumber: gstNumber,
          hsnSac: hsnSac,
          signatureFile: _selectedFile, // Pass the selected file
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "GST Setting"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(
                left: 17,
                top: 10,
              ),
              child: Row(
                children: [
                  Text(
                    "Comapany Details",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  )
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
                  controller: _companyNameController,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
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
                    hintText: "Company Name",
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(186, 186, 186, 1),
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
                  controller: _companyMobileController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
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
                    hintText: "Company Mobile Number",
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(186, 186, 186, 1),
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
                  controller: _companyAddressController,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
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
                    hintText: "Company Adress",
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(186, 186, 186, 1),
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
                  controller: _gstNumberController,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
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
                    hintText: "GST Number",
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(186, 186, 186, 1),
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
                  controller: _hsnSacController,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
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
                    hintText: "999292 (HSN/SAC)",
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(186, 186, 186, 1),
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
                onTap: _pickFile,
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
                    child: _selectedFile != null
                        ? Image.file(
                            _selectedFile!,
                            fit: BoxFit.cover,
                          )
                        : const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.cloud_upload_outlined,
                                color: Colors.blue,
                                size: 40,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Upload Signature / Stamp",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
         height: 62,
                        width: 352,
        child: FloatingActionButton(
          onPressed: () {
            // Define the action when the button is pressed
            _saveAndNavigate();
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
                colors: [
                  Color.fromRGBO(13, 149, 211, 1),
                  Color.fromRGBO(9, 96, 186, 1)
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Container(
              alignment: Alignment.center,
              child: const Text(
                'Add Gst',
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
