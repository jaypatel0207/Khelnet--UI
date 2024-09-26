import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';
import 'package:khelnet/Pages/Fees/Gst.dart';

class GstEditPage extends StatefulWidget {
  final String companyName;
  final String companyMobile;
  final String companyAddress;
  final String gstNumber;
  final String hsnSac;
  final File? signatureFile;

  const GstEditPage({
    Key? key,
    required this.companyName,
    required this.companyMobile,
    required this.companyAddress,
    required this.gstNumber,
    required this.hsnSac,
    this.signatureFile,
  }) : super(key: key);

  @override
  _GstEditPageState createState() => _GstEditPageState();
}

class _GstEditPageState extends State<GstEditPage> {
  File? _signatureFile;

  @override
  void initState() {
    super.initState();
    _signatureFile = widget.signatureFile;
  }

  Future<void> _editImage() async {
    if (_signatureFile == null) {
      print('No image to edit.');
      return;
    }

    try {
      CroppedFile? croppedFile = await ImageCropper().cropImage(
        sourcePath: _signatureFile!.path,
        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: 'Edit Image',
            toolbarColor: Colors.blue,
            toolbarWidgetColor: Colors.white,
            activeControlsWidgetColor: Colors.blue,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false,
          ),
          IOSUiSettings(
            title: 'Edit Image',
            minimumAspectRatio: 1.0,
          ),
        ],
      );

      if (croppedFile != null) {
        setState(() {
          _signatureFile = File(croppedFile.path);
        });
      } else {
        print('Image cropping was cancelled.');
      }
    } catch (e) {
      print('Error while cropping image: $e');
    }
  }

  Future<void> _replaceImage() async {
    // Create an instance of ImagePicker
    final ImagePicker _picker = ImagePicker();

    // Let the user pick an image from the gallery
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 800,
      maxHeight: 800,
      imageQuality: 80,
    );

    // Check if an image was picked
    if (pickedFile != null) {
      setState(() {
        // Assign the picked file to the _signatureFile variable
        _signatureFile = File(pickedFile.path);
      });
    } else {
      // If no image is selected, you can handle this case here
      print('No image selected.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "GST Setting"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 5),
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

            // Editable fields for company details
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 22),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    border:
                        Border.all(color: Color.fromARGB(255, 231, 223, 223))),
                child: TextFormField(
                  initialValue: widget.companyName,
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
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    border:
                        Border.all(color: Color.fromARGB(255, 231, 223, 223))),
                child: TextFormField(
                  initialValue: widget.companyMobile,
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
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    border:
                        Border.all(color: Color.fromARGB(255, 231, 223, 223))),
                child: TextFormField(
                  initialValue: widget.companyAddress,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(top: 12),
                    border: InputBorder.none,
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(right: 20, left: 20),
                      child: Icon(
                        Icons.location_on,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    border:
                        Border.all(color: Color.fromARGB(255, 231, 223, 223))),
                child: TextFormField(
                  initialValue: widget.gstNumber,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(top: 12),
                    border: InputBorder.none,
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(right: 20, left: 20),
                      child: Icon(
                        Icons.attach_money,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 15,
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    border:
                        Border.all(color: Color.fromARGB(255, 231, 223, 223))),
                child: TextFormField(
                  initialValue: widget.hsnSac,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(top: 12),
                    border: InputBorder.none,
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(
                        right: 20,
                        left: 20,
                      ),
                      child: Icon(
                        Icons.money,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 25),
              child: Text(
                "* Extra 18% GST will be added to the total fees amount being charged and the amount will reflect in Fee reminders , Reports , Dashboard and Invoices",
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
              ),
            ),
            // Image with replace and edit buttons
            SizedBox(
              height: 10,
            ),
            Center(
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
                  child: _signatureFile != null
                      ? Image.file(
                          _signatureFile!,
                          width: 100,
                          height: 100,
                        )
                      : const Text('No Signature Image'),
                ),
              ),
            ),

            const SizedBox(height: 5),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    _replaceImage();
                  },
                  child: Container(
                    height: 37.h,
                    width: 138.w,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(241, 241, 241, 1),
                        borderRadius: BorderRadius.circular(81)),
                    child: Center(child: const Text('Replace Image')),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  height: 37.h,
                  width: 138.w,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(241, 241, 241, 1),
                      borderRadius: BorderRadius.circular(81)),
                  child: Center(child: const Text('Edit Image')),
                ),
              ],
            ),
SizedBox(height: 12 .h,), 

            
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 64.0, // Custom height for the button
        width: 315.0,  // Custom width for the button
        child: FloatingActionButton(
          onPressed: () {
            // Define the action when the button is pressed
            Get.to(const Gst());
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
                'Update Details',
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
