import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:khelnet/Pages/loginpage.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool value = false;
  File? _image;
  final TextEditingController _phoneController = TextEditingController();

  List<String> selectedSports = [];

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        _image = null;
      }
    });
  }

  void _openBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setModalState) {
            return DraggableScrollableSheet(
              expand: false,
              builder: (context, scrollController) {
                return Column(
                  children: [
                    Expanded(
                      child: GridView.count(
                        controller: scrollController,
                        crossAxisCount: 2,
                        childAspectRatio: 2,
                        padding: const EdgeInsets.all(16),
                        children: [
                          _buildSelectionItem("Cricket", setModalState),
                          _buildSelectionItem("Football", setModalState),
                          _buildSelectionItem("Tennis", setModalState),
                          _buildSelectionItem("Basketball", setModalState),
                          _buildSelectionItem("Badminton", setModalState),
                          _buildSelectionItem("Table Tennis", setModalState),
                          _buildSelectionItem("Martial Arts", setModalState),
                          _buildSelectionItem("Roller Sports", setModalState),
                          _buildSelectionItem("Gymnastics", setModalState),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: selectedSports.isEmpty
                                  ? const Color.fromARGB(255, 134, 193, 242)
                                  : Colors.blue),
                          child: const Center(
                              child: Text(
                            "Done",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 17),
                          )),
                        ),
                      ),
                    )
                  ],
                );
              },
            );
          },
        );
      },
    );
  }

  Widget _buildSelectionItem(String sportName, StateSetter setModalState) {
    bool isSelected = selectedSports.contains(sportName);

    return GestureDetector(
      onTap: () {
        setModalState(() {
          if (isSelected) {
            selectedSports.remove(sportName);
          } else {
            selectedSports.add(sportName);
          }
        });

        setState(() {});
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        // padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.black12),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                isSelected ? Icons.check_circle : Icons.circle_outlined,
                color: isSelected ? Colors.white : Colors.black,
              ),
              Text(
                sportName,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool> _isMobileNumberRegistered(String mobileNumber) async {
    // This should be replaced with actual logic to check in the database
    if (mobileNumber == "1234567890") {
      // Assume this number is already registered
      return true;
    }
    return false;
  }

  void _checkMobileNumber() async {
    String mobileNumber = _phoneController.text;
    bool isRegistered = await _isMobileNumberRegistered(mobileNumber);

    if (isRegistered) {
      // Show popup if mobile number is already registered
      _showAlreadyRegisteredDialog();
    } else {
      // Show snackbar and navigate to login after 3 seconds if not registered
      _showRegistrationSuccessSnackbar();
    }
  }

  void _showAlreadyRegisteredDialog() {
    Get.dialog(Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        height: 445,
        width: 300,
        decoration: const BoxDecoration(),
        child: Column(
          children: [
            const SizedBox(
              height: 37,
            ),
            Center(child: Image.asset("assets/images/man.png")),
            const SizedBox(
              height: 20,
            ),
            const Center(
                child: Text(
              "Existing Account ",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            )),
            const SizedBox(height: 25),
            const Center(
                child: Text(
              "Already An Account exist with ",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color.fromRGBO(90, 90, 90, 1)),
            )),
            const Center(
                child: Text(
              "this number . Try to LogIn into",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color.fromRGBO(90, 90, 90, 1)),
            )),
            const Center(
                child: Text(
              "the account",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color.fromRGBO(90, 90, 90, 1)),
            )),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Get.to(const Loginpage());
                },
                child: Container(
                  width: 220,
                  height: 51,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color.fromRGBO(13, 149, 211, 1),
                            Color.fromRGBO(9, 96, 186, 1)
                          ])),
                  child: const Center(
                      child: Text(
                    "Log In",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  void _showRegistrationSuccessSnackbar() {
    Get.snackbar("Registered Successfully", "Thank You !!!",
        backgroundGradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(13, 149, 211, 1),
              Color.fromRGBO(9, 96, 186, 1)
            ]),
        snackPosition: SnackPosition.BOTTOM,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(8),
        duration: const Duration(seconds: 2));
    // ScaffoldMessenger.of(context).showSnackBar(
    //   SnackBar(
    //     content: Text('Registered Successfully'),

    //     duration: Duration(seconds: 3),
    //   ),
    // );

    // Navigate to login page after 3 seconds
    Timer(const Duration(seconds: 3), () {
      _navigateToLogin();
    });
  }

  void _navigateToLogin() {
    // Navigate to login page
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) {
        return const Loginpage();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Center(
                  child: Text(
                "Sign Up",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              )),
              const SizedBox(
                height: 15,
              ),
              Stack(
                children: [
                  InkWell(
                    onTap: _pickImage,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: _image != null
                          ? Image.file(_image!).image
                          : Image.asset("assets/images/home.png").image,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Center(
                  child: Text(
                "Academy Logo",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(186, 186, 186, 1)),
              )),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
                child: SizedBox(
                  height: 50,
                  width: 353,
                  child: TextField(
                    //controller: ,

                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(241, 241, 241, 1),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(9, 96, 186, 1), width: 1.5),
                      ),
                      hintText: 'Full name *',
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(186, 186, 186, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, right: 20, left: 20),
                child: SizedBox(
                  height: 50,
                  width: 353,
                  child: TextField(
                    //controller: ,

                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(241, 241, 241, 1),
                      prefixIcon: const Icon(
                        Icons.sports_basketball,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(9, 96, 186, 1), width: 1.5),
                      ),
                      hintText: 'Academy name *',
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(186, 186, 186, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, right: 20, left: 20),
                child: SizedBox(
                  height: 50,
                  width: 353,
                  child: TextField(
                    controller: _phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(241, 241, 241, 1),
                      prefixIcon: const Icon(
                        Icons.phone,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(9, 96, 186, 1), width: 1.5),
                      ),
                      hintText: 'Mobile Number *',
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(186, 186, 186, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, right: 20, left: 20),
                child: SizedBox(
                  height: 50,
                  width: 353,
                  child: TextField(
                    //controller: ,

                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(241, 241, 241, 1),
                      prefixIcon: const Icon(
                        Icons.location_on,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(9, 96, 186, 1), width: 1.5),
                      ),
                      hintText: 'Academy Location *',
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(186, 186, 186, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, right: 20, left: 20),
                child: SizedBox(
                  height: 50,
                  width: 353,
                  child: TextField(
                    readOnly: true, // Make this field non-editable
                    onTap: _openBottomSheet, // Trigger the bottom sheet
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: _openBottomSheet, // Open bottom sheet here
                        icon: const Icon(Icons.keyboard_arrow_down),
                      ),
                      suffixIconColor: const Color.fromRGBO(13, 149, 211, 1),
                      filled: true,
                      fillColor: const Color.fromRGBO(241, 241, 241, 1),
                      prefixIcon: const Icon(
                        Icons.sports_kabaddi_rounded,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(9, 96, 186, 1), width: 1.5),
                      ),

                      hintText: selectedSports.isEmpty
                          ? 'Sports *'
                          : selectedSports
                              .join(', '), // Display selected sports

                      hintStyle: const TextStyle(
                        color: Color.fromRGBO(186, 186, 186, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, right: 20, left: 20),
                child: SizedBox(
                  height: 50,
                  width: 353,
                  child: TextField(
                    //controller: ,

                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(241, 241, 241, 1),
                      prefixIcon: const Icon(
                        Icons.email_outlined,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(9, 96, 186, 1), width: 1.5),
                      ),
                      hintText: 'Email Adress',
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(186, 186, 186, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  Checkbox(
                    activeColor: const Color.fromRGBO(13, 149, 211, 1),
                    checkColor: const Color.fromRGBO(237, 237, 237, 1),
                    focusColor: const Color.fromRGBO(237, 237, 237, 1),
                    value: value,
                    onChanged: (value) {
                      setState(() {
                        this.value = value!;
                      });
                    },
                  ),
                  const Text(
                    "I Agree All ",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                      onTap: () {},
                      child: const Text(
                        "Terms & Conditions",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(9, 96, 186, 1)),
                      ))
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      _checkMobileNumber();
                    },
                    child: Container(
                      width: 309,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color.fromRGBO(13, 149, 211, 1),
                                Color.fromRGBO(9, 96, 186, 1)
                              ])),
                      child: const Center(
                          child: Text(
                        "Create Profile",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
