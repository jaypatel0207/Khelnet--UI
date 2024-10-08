import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khelnet/Controller/CoachManageAc.dart';
import 'package:khelnet/Controller/Textcontroller.dart';

class Basicinfo extends StatefulWidget {
  const Basicinfo({super.key});

  @override
  State<Basicinfo> createState() => _BasicinfoState();
}

class _BasicinfoState extends State<Basicinfo> {
  final TextController textController = Get.put(TextController());

  final Coachmanageac controller = Get.put(Coachmanageac());

  void showCustomBottomSheet() {
    Get.put(Coachmanageac());

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
                          value: Get.find<Coachmanageac>().attendance.value,
                          onChanged: (value) {
                            Get.find<Coachmanageac>().attendance.value = value;
                            Get.find<Coachmanageac>().updateDisplayText();
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
                          value: Get.find<Coachmanageac>().fees.value,
                          onChanged: (value) {
                            Get.find<Coachmanageac>().fees.value = value;
                            Get.find<Coachmanageac>().updateDisplayText();
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
                          value: Get.find<Coachmanageac>().expenses.value,
                          onChanged: (value) {
                            Get.find<Coachmanageac>().expenses.value = value;
                            Get.find<Coachmanageac>().updateDisplayText();
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
                          value: Get.find<Coachmanageac>().skillRating.value,
                          onChanged: (value) {
                            Get.find<Coachmanageac>().skillRating.value = value;
                            Get.find<Coachmanageac>().updateDisplayText();
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
         
              Container(
                margin: EdgeInsets.symmetric(vertical: 8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6.0,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: TextField(
                  onChanged: (value) =>
                      textController.contactNumber.value = value,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    hintText: 'Contact Number',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(16),
                  ),
                ),
              ),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6.0,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Obx(() => TextField(
                            controller: textController.passwordController.value,
                            obscureText:
                                !textController.isPasswordVisible.value,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              hintText: 'Password',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(16),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  textController.isPasswordVisible.value
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed:
                                    textController.togglePasswordVisibility,
                              ),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                      width:
                          10), 
                  GestureDetector(
                    onTap: () {
                      textController
                          .resetPassword(); 
                    },
                    child: Text(
                      'Reset',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Obx(
                  () => TextField(
                    readOnly: true,
                    style: TextStyle(
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
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide:
                            BorderSide(color: Colors.transparent, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: BorderSide(
                            color: Color.fromRGBO(186, 186, 186, 1),
                            width: 1.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: BorderSide(
                            color: Color.fromRGBO(186, 186, 186, 1),
                            width: 1.5),
                      ),
                      hintText: 'Manage Access',
                      suffixIcon: IconButton(
                          onPressed: () {
                            showCustomBottomSheet(); 
                          },
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.blue,
                          )),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                      hintStyle: TextStyle(
                        color: Colors.blue,
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
                height: 175,
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
        
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0), 
          ),
          backgroundColor: Colors.transparent, 
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
                'Update Info',
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
