import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:khelnet/Controller/Days_switch_controller.dart';
import 'package:khelnet/Controller/TimeController.dart';
import 'package:khelnet/Controller/sportSwitchController.dart';
import 'package:khelnet/Pages/Add/AddCenter.dart';

class Addbatch extends StatefulWidget {
  const Addbatch({super.key});

  @override
  State<Addbatch> createState() => _AddbatchState();
}

class _AddbatchState extends State<Addbatch> {
  TimeOfDay _startTime = TimeOfDay.now();
  TimeOfDay _endTime = TimeOfDay.now();

  late TextEditingController _startTimeController;
  late TextEditingController _endTimeController;
  final DaySwitchController controller = Get.put(DaySwitchController());
  final SportSwitchController sportcontroller =
      Get.put(SportSwitchController());
final TimeController timeController = Get.put(TimeController());
  TextEditingController _BatchNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _startTimeController = TextEditingController(); // Initialize without text
    _endTimeController = TextEditingController(); // Initialize without text
  }

  @override
  void dispose() {
    _startTimeController.dispose();
    _endTimeController.dispose();
    super.dispose();
  }

 Future<void> selectStartTime(BuildContext context) async {
  final pickedStartTime = await showTimePicker(
    context: context,
    initialTime: _startTime,
  );

  if (pickedStartTime != null) {
    setState(() {
      _startTime = pickedStartTime;
      _startTimeController.text = _formatTimeOfDay(_startTime);
      timeController.setStartTime(_startTimeController.text); // Update in controller
    });
  }
}

  Future<void> selectEndTime(BuildContext context) async {
  final pickedEndTime = await showTimePicker(
    context: context,
    initialTime: _endTime,
  );


  if (pickedEndTime != null) {
    setState(() {
      _endTime = pickedEndTime;
      _endTimeController.text = _formatTimeOfDay(_endTime);
      timeController.setEndTime(_endTimeController.text); // Update in controller
    });
  }
}

  String _formatTimeOfDay(TimeOfDay time) {
    final now = DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, time.hour, time.minute);
    final formatter = DateFormat.jm(); // Format the time (e.g., 3:00 PM)
    return formatter.format(dt);
  }

  void showCustomBottomSheet() {
    Get.put(DaySwitchController());

    Get.bottomSheet(
      Container(
        //height: 700,
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
                'Select Days',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Obx(
                      () => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Monday',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.blue,
                            ),
                          ),
                          Switch(
                            value: Get.find<DaySwitchController>().monday.value,
                            onChanged: (value) {
                              Get.find<DaySwitchController>().monday.value =
                                  value;
                              Get.find<DaySwitchController>()
                                  .updateDisplayText();
                            },
                          ),
                        ],
                      ),
                    ),

                    Obx(
                      () => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Tuesday',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.blue,
                            ),
                          ),
                          Switch(
                            value:
                                Get.find<DaySwitchController>().tuesday.value,
                            onChanged: (value) {
                              Get.find<DaySwitchController>().tuesday.value =
                                  value;
                              Get.find<DaySwitchController>()
                                  .updateDisplayText();
                            },
                          ),
                        ],
                      ),
                    ),
                    // Repeat for other days (Wednesday, Thursday, etc.)
                    Obx(
                      () => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Wednesday',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.blue,
                            ),
                          ),
                          Switch(
                            value:
                                Get.find<DaySwitchController>().wednesday.value,
                            onChanged: (value) {
                              Get.find<DaySwitchController>().wednesday.value =
                                  value;
                              Get.find<DaySwitchController>()
                                  .updateDisplayText();
                            },
                          ),
                        ],
                      ),
                    ),

                    Obx(
                      () => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Thursday',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.blue,
                            ),
                          ),
                          Switch(
                            value:
                                Get.find<DaySwitchController>().thursday.value,
                            onChanged: (value) {
                              Get.find<DaySwitchController>().thursday.value =
                                  value;
                              Get.find<DaySwitchController>()
                                  .updateDisplayText();
                            },
                          ),
                        ],
                      ),
                    ),

                    Obx(
                      () => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Friday',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.blue,
                            ),
                          ),
                          Switch(
                            value: Get.find<DaySwitchController>().friday.value,
                            onChanged: (value) {
                              Get.find<DaySwitchController>().friday.value =
                                  value;
                              Get.find<DaySwitchController>()
                                  .updateDisplayText();
                            },
                          ),
                        ],
                      ),
                    ),

                    Obx(
                      () => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Saturday',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.blue,
                            ),
                          ),
                          Switch(
                            value:
                                Get.find<DaySwitchController>().saturday.value,
                            onChanged: (value) {
                              Get.find<DaySwitchController>().saturday.value =
                                  value;
                              Get.find<DaySwitchController>()
                                  .updateDisplayText();
                            },
                          ),
                        ],
                      ),
                    ),

                    Obx(
                      () => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Sunday',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.blue,
                            ),
                          ),
                          Switch(
                            value: Get.find<DaySwitchController>().sunday.value,
                            onChanged: (value) {
                              Get.find<DaySwitchController>().sunday.value =
                                  value;
                              Get.find<DaySwitchController>()
                                  .updateDisplayText();
                            },
                          ),
                        ],
                      ),
                    ),

                    // Add blocks for other days following the same pattern
                    // ... (Wednesday to Sunday)
                    SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(Get.context!);
                          // Close the bottom sheet
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
                                ],
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                "Done",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showSportBottomSheet() {
    Get.put(SportSwitchController());

    Get.bottomSheet(
      Container(
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
                'Select Sports',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: ListView(
                children: [
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Cricket',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.blue,
                          ),
                        ),
                        Switch(
                          value:
                              Get.find<SportSwitchController>().cricket.value,
                          onChanged: (value) {
                            Get.find<SportSwitchController>().cricket.value =
                                value;
                            Get.find<SportSwitchController>()
                                .updateDisplayText();
                          },
                        ),
                      ],
                    ),
                  ),

                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Football',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.blue,
                          ),
                        ),
                        Switch(
                          value:
                              Get.find<SportSwitchController>().football.value,
                          onChanged: (value) {
                            Get.find<SportSwitchController>().football.value =
                                value;
                            Get.find<SportSwitchController>()
                                .updateDisplayText();
                          },
                        ),
                      ],
                    ),
                  ),

                  // Repeat for other sports (Tennis, Basketball, etc.)
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Tennis',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.blue,
                          ),
                        ),
                        Switch(
                          value: Get.find<SportSwitchController>().tennis.value,
                          onChanged: (value) {
                            Get.find<SportSwitchController>().tennis.value =
                                value;
                            Get.find<SportSwitchController>()
                                .updateDisplayText();
                          },
                        ),
                      ],
                    ),
                  ),

                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Basketball',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.blue,
                          ),
                        ),
                        Switch(
                          value: Get.find<SportSwitchController>()
                              .basketball
                              .value,
                          onChanged: (value) {
                            Get.find<SportSwitchController>().basketball.value =
                                value;
                            Get.find<SportSwitchController>()
                                .updateDisplayText();
                          },
                        ),
                      ],
                    ),
                  ),

                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Badminton',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.blue,
                          ),
                        ),
                        Switch(
                          value:
                              Get.find<SportSwitchController>().badminton.value,
                          onChanged: (value) {
                            Get.find<SportSwitchController>().badminton.value =
                                value;
                            Get.find<SportSwitchController>()
                                .updateDisplayText();
                          },
                        ),
                      ],
                    ),
                  ),
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Table Tennis',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.blue,
                          ),
                        ),
                        Switch(
                          value: Get.find<SportSwitchController>()
                              .tableTennis
                              .value,
                          onChanged: (value) {
                            Get.find<SportSwitchController>()
                                .tableTennis
                                .value = value;
                            Get.find<SportSwitchController>()
                                .updateDisplayText();
                          },
                        ),
                      ],
                    ),
                  ),

                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'MaterialArts',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.blue,
                          ),
                        ),
                        Switch(
                          value: Get.find<SportSwitchController>()
                              .martialArts
                              .value,
                          onChanged: (value) {
                            Get.find<SportSwitchController>()
                                .martialArts
                                .value = value;
                            Get.find<SportSwitchController>()
                                .updateDisplayText();
                          },
                        ),
                      ],
                    ),
                  ),

                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Roller Sports',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.blue,
                          ),
                        ),
                        Switch(
                          value: Get.find<SportSwitchController>()
                              .rollerSports
                              .value,
                          onChanged: (value) {
                            Get.find<SportSwitchController>()
                                .rollerSports
                                .value = value;
                            Get.find<SportSwitchController>()
                                .updateDisplayText();
                          },
                        ),
                      ],
                    ),
                  ),

                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Gymnastics',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.blue,
                          ),
                        ),
                        Switch(
                          value: Get.find<SportSwitchController>()
                              .gymnastics
                              .value,
                          onChanged: (value) {
                            Get.find<SportSwitchController>().gymnastics.value =
                                value;
                            Get.find<SportSwitchController>()
                                .updateDisplayText();
                          },
                        ),
                      ],
                    ),
                  ),

                  // Add blocks for other sports following the same pattern

                  const SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8, right: 8, bottom: 8),
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
                              ],
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "Done",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
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
      appBar: AppBar(
        title: Text(
          'Add Batch',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0), // Add padding around the column
        child: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: TextField(
                      style: TextStyle(color: Colors.blue),
                      readOnly: true,
                      controller: _startTimeController,
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
                            width: 1.5,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(26),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(186, 186, 186, 1),
                            width: 1.5,
                          ),
                        ),
                        hintText: 'Start Time', // Hint text shown initially
                        suffixIcon: IconButton(
                          onPressed: () {
                            selectStartTime(context);
                          },
                          icon: Icon(Icons.watch_later_outlined),
                        ),
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
                  SizedBox(width: 10),
                  Container(
                    width: 20,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 2, color: Color.fromRGBO(186, 186, 186, 1)),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      style: TextStyle(color: Colors.blue),
                      readOnly: true,
                      controller: _endTimeController,
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
                            width: 1.5,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(26),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(186, 186, 186, 1),
                            width: 1.5,
                          ),
                        ),
                        hintText: 'End Time', // Hint text shown initially
                        suffixIcon: IconButton(
                          onPressed: () {
                            selectEndTime(context);
                          },
                          icon: Icon(Icons.watch_later_outlined),
                        ),
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 11, right: 10, left: 10),
              child: Obx(
                () => TextField(
                  readOnly: true,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.blue,
                  ),
                  controller: TextEditingController(
                    text: controller.displayText.value,
                  )..addListener(() {
                      // Optionally, you can update the controller text when the TextField changes
                      controller.displayText.value =
                          controller.displayText.value;
                    }),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: const BorderSide(
                          color: Colors.transparent, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(186, 186, 186, 1),
                        width: 1.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(186, 186, 186, 1),
                        width: 1.5,
                      ),
                    ),
                    hintText: 'Manage Days',
                    suffixIcon: IconButton(
                      onPressed: () {
                        showCustomBottomSheet(); // Show the bottom sheet
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.blue,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 25,
                    ),
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
            Padding(
              padding: const EdgeInsets.only(top: 11, right: 10, left: 10),
              child: Obx(
                () => TextField(
                  readOnly: true,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.blue,
                  ),
                  controller: TextEditingController(
                    text: sportcontroller.displayText.value,
                  )..addListener(() {
                      sportcontroller.displayText.value =
                          sportcontroller.displayText.value;
                    }),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: const BorderSide(
                          color: Colors.transparent, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(186, 186, 186, 1),
                        width: 1.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(186, 186, 186, 1),
                        width: 1.5,
                      ),
                    ),
                    hintText: 'Sports',
                    suffixIcon: IconButton(
                      onPressed: () {
                        showSportBottomSheet(); // Show the bottom sheet
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.blue,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 25,
                    ),
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
            Padding(
              padding: const EdgeInsets.only(top: 13, right: 10, left: 10),
              child: TextField(
                controller: _BatchNameController,
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
                        color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(26),
                    borderSide: BorderSide(
                        color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                  ),
                  hintText: 'Batch Name',
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


                ElevatedButton(onPressed: (){
                  Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => Addcenter(
      startTime: _startTimeController.text,
      endTime: _endTimeController.text,
      //batchName: _BatchNameController.text,
    ),
  ),
);

                }, child: Text("Submit"))


          ],
        ),
      ),
    );
  }
}
