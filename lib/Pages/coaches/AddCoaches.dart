import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:khelnet/Controller/ManageAc_switch_controller.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';

class Addcoaches extends StatefulWidget {
  const Addcoaches({super.key});

  @override
  State<Addcoaches> createState() => _AddcoachesState();
}

class _AddcoachesState extends State<Addcoaches> {
  File? _image;
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

  final TextEditingController _CoachcenterController = TextEditingController();
  String selectedCoachCenter = "";
  bool passwordVisible = false;
  final TextEditingController _CoachbatchController = TextEditingController();
  String selectedCoachBatch = "";
  final SwitchController controller = Get.find();
  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  Widget _buildListTileCoach(String Coach, StateSetter setModalState) {
    return ListTile(
      title: Text(Coach),
      tileColor:
          selectedCoachCenter == Coach ? Colors.blue.withOpacity(0.2) : null,
      onTap: () {
        setModalState(() {
          selectedCoachCenter =
              Coach; // Update selected center in the bottom sheet
        });
      },
    );
  }

  List<String> selectedCoachBatches = [];

  Widget _buildListTileCoachBatch(
      String CoachBatch, StateSetter setModalState) {
    return ListTile(
      title: Text(CoachBatch),
      tileColor: selectedCoachBatches.contains(CoachBatch)
          ? Colors.blue.withOpacity(0.2)
          : null,
      onTap: () {
        setModalState(() {
          if (selectedCoachBatches.contains(CoachBatch)) {
            selectedCoachBatches.remove(CoachBatch);
          } else {
            selectedCoachBatches.add(CoachBatch);
          }
        });
      },
    );
  }

  void showCustomBottomSheet() {
    Get.put(SwitchController());

    Get.bottomSheet(
      Container(
        height: 650,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'Additional Info',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: Column(
                children: [
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Attendance',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.blue),
                        ),
                        Switch(
                          value: Get.find<SwitchController>().attendance.value,
                          onChanged: (value) {
                            Get.find<SwitchController>().attendance.value =
                                value;
                            Get.find<SwitchController>().updateDisplayText();
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Fees',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors.blue)),
                        Switch(
                          value: Get.find<SwitchController>().fees.value,
                          onChanged: (value) {
                            Get.find<SwitchController>().fees.value = value;
                            Get.find<SwitchController>().updateDisplayText();
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Expenses',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors.blue)),
                        Switch(
                          value: Get.find<SwitchController>().expenses.value,
                          onChanged: (value) {
                            Get.find<SwitchController>().expenses.value = value;
                            Get.find<SwitchController>().updateDisplayText();
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Skill Rating',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors.blue)),
                        Switch(
                          value: Get.find<SwitchController>().skillRating.value,
                          onChanged: (value) {
                            Get.find<SwitchController>().skillRating.value =
                                value;
                            Get.find<SwitchController>().updateDisplayText();
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(Get.context!);
               
                      },
                      child: Center(
                        child: Container(
                          width: 347,
                          height: 51,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(103),
                              gradient: const LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color.fromRGBO(13, 149, 211, 1),
                                    Color.fromRGBO(9, 96, 186, 1)
                                  ])),
                          child: const Center(
                              child: Text(
                            "Done",
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
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: "Add Coaches",
        leading: Row(
          children: [
            const SizedBox(
              width: 13,
            ),
            Builder(builder: (context) {
              return InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                    height: 36,
                    width: 36,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(13, 141, 207, 0.13)),
                    child: const Center(
                        child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Color.fromRGBO(11, 121, 198, 1),
                    ))),
              );
            }),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: _pickImage,
                child: Center(
                  child: CircleAvatar(
                    radius: 65,
                    backgroundColor: Colors.white,
                    backgroundImage: _image != null
                        ? Image.file(_image!).image
                        : Image.asset("assets/images/addcoaches.png").image,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromRGBO(253, 252, 252, 1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: const BorderSide(
                          color: Colors.transparent, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                    ),
                    hintText: 'Coach Name',
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 25),
                    hintStyle: const TextStyle(
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
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromRGBO(253, 252, 252, 1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: const BorderSide(
                          color: Colors.transparent, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                    ),
                    hintText: 'Contact Number',
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 25),
                    hintStyle: const TextStyle(
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
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  obscureText: passwordVisible,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromRGBO(253, 252, 252, 1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: const BorderSide(
                          color: Colors.transparent, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                    ),
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.blue,
                      ),
                      onPressed: () {
                        setState(
                          () {
                            passwordVisible = !passwordVisible;
                          },
                        );
                      },
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 25),
                    hintStyle: const TextStyle(
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
                  controller: _CoachcenterController,
                  style: const TextStyle(color: Colors.blue),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromRGBO(253, 252, 252, 1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: const BorderSide(
                          color: Colors.transparent, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        Get.bottomSheet(showModalBottomSheet(
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20.0)),
                          ),
                          builder: (BuildContext context) {
                            return StatefulBuilder(
                              builder: (BuildContext context,
                                  StateSetter setModalState) {
                                return Container(
                                  height: 550,
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Center(
                                        child: Text(
                                          'Assign Center',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 25.0),
                                      Container(
                                        height: 135,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: const Color.fromRGBO(
                                                  238, 234, 234, 1)),
                                        ),
                                        child: Column(
                                          children: [
                                            _buildListTileCoach(
                                                'Shine 1', setModalState),
                                            const Divider(
                                              height: 10,
                                              color: Colors.white,
                                            ),
                                            _buildListTileCoach(
                                                'Shine 2', setModalState),
                                            const Divider(
                                              height: 10,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 125,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              _CoachcenterController.text =
                                                  selectedCoachCenter;
                                            });
                                            Navigator.pop(
                                                context); 
                                          },
                                          child: Center(
                                            child: Container(
                                              width: 347,
                                              height: 51,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          103),
                                                  gradient:
                                                      const LinearGradient(
                                                          begin: Alignment
                                                              .centerLeft,
                                                          end: Alignment
                                                              .centerRight,
                                                          colors: [
                                                        Color.fromRGBO(
                                                            13, 149, 211, 1),
                                                        Color.fromRGBO(
                                                            9, 96, 186, 1)
                                                      ])),
                                              child: const Center(
                                                  child: Text(
                                                "Done",
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
                                );
                              },
                            );
                          },
                        ) as Widget);
                      },
                      icon: const Icon(Icons.keyboard_arrow_down),
                      color: Colors.blue,
                    ),
                    hintText: 'Assign Center',
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 25),
                    hintStyle: const TextStyle(
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
                  controller: _CoachbatchController,
                  style: const TextStyle(color: Colors.blue),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromRGBO(253, 252, 252, 1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: const BorderSide(
                          color: Colors.transparent, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        Get.bottomSheet(showModalBottomSheet(
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20.0)),
                          ),
                          builder: (BuildContext context) {
                            return StatefulBuilder(
                              builder: (BuildContext context,
                                  StateSetter setModalState) {
                                return Container(
                                  height: 550,
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 10),
                                      const Center(
                                        child: Text(
                                          'Assign Center',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 25.0),
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: const Color.fromRGBO(
                                                    238, 234, 234, 1)),
                                          ),
                                          child: ListView(
                                            children: [
                                              _buildListTileCoachBatch(
                                                  'Batch 1', setModalState),
                                              const Divider(
                                                  height: 10,
                                                  color: Colors.white),
                                              _buildListTileCoachBatch(
                                                  'Batch 2', setModalState),
                                              const Divider(
                                                  height: 10,
                                                  color: Colors.white),
                                              _buildListTileCoachBatch(
                                                  'Batch 3', setModalState),
                                              const Divider(
                                                  height: 10,
                                                  color: Colors.white),
                                              _buildListTileCoachBatch(
                                                  'Batch 4', setModalState),
                                              const Divider(
                                                  height: 10,
                                                  color: Colors.white),
                                              _buildListTileCoachBatch(
                                                  'Batch 5', setModalState),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              _CoachbatchController.text =
                                                  selectedCoachBatches
                                                      .join(', ');
                                            });
                                            Navigator.pop(
                                                context); 
                                          },
                                          child: Center(
                                            child: Container(
                                              width: 347,
                                              height: 51,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          103),
                                                  gradient:
                                                      const LinearGradient(
                                                          begin: Alignment
                                                              .centerLeft,
                                                          end: Alignment
                                                              .centerRight,
                                                          colors: [
                                                        Color.fromRGBO(
                                                            13, 149, 211, 1),
                                                        Color.fromRGBO(
                                                            9, 96, 186, 1)
                                                      ])),
                                              child: const Center(
                                                  child: Text(
                                                "Done",
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
                                );
                              },
                            );
                          },
                        ) as Widget);
                      },
                      icon: const Icon(Icons.keyboard_arrow_down),
                      color: Colors.blue,
                    ),
                    hintText: 'Assign Batch',
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 25),
                    hintStyle: const TextStyle(
                        color: Color.fromRGBO(186, 186, 186, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 11, right: 20, left: 20),
                child: Obx(
                  () => TextField(
                    readOnly: true,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.blue),
                    controller: TextEditingController(
                        text: controller.displayText.value)
                      ..addListener(() {
                        controller.displayText.value =
                            controller.displayText.value;
                      }),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(253, 252, 252, 1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(186, 186, 186, 1),
                            width: 1.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(186, 186, 186, 1),
                            width: 1.5),
                      ),
                      hintText: 'Manage Access',
                      suffixIcon: IconButton(
                          onPressed: () {
                            showCustomBottomSheet(); 
                          },
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.blue,
                          )),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 25),
                      hintStyle: const TextStyle(
                        color: Color.fromRGBO(186, 186, 186, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onChanged: (text) {
                      controller.displayText.value = text;
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 130.h,
              ),
              InkWell(
                onTap: () {},
                child: Center(
                  child: Positioned.fill(
                    top: 600,
                    left: 8,
                    right: 8,
                    child: Container(
                      width: 347,
                      height: 51,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(103),
                          gradient: const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color.fromRGBO(13, 149, 211, 1),
                                Color.fromRGBO(9, 96, 186, 1)
                              ])),
                      child: const Center(
                          child: Text(
                        "Add Coach",
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
