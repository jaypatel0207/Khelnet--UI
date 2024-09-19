
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:intl/intl.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';




class DownloadController1 extends GetxController {
  // Observable variable to track the selected download type
  var selectedDownloadType1 = 'PDF'.obs;

  // Function to set the download type
  void setDownloadType(String type) {
    selectedDownloadType1.value = type;
  }



  // Function to trigger the download
  void download() {
    if (selectedDownloadType1.value == 'PDF') {
      Get.snackbar("Success", "PDF Download Successfully",
          snackPosition: SnackPosition.TOP);
    } else {
      Get.snackbar("Success", "Excel Download Successfully",
          snackPosition: SnackPosition.TOP);
    }
  }
}


class Coachreport extends StatefulWidget {
  const Coachreport({super.key});

  @override
  State<Coachreport> createState() => _ExpensereportState();
}

class _ExpensereportState extends State<Coachreport> {
  // List of coaches
  final List<String> coaches = [
    'Coach 1',
    'Coach 2',
    'Coach 3',
    'Coach 4',
    'Coach 5',
    'Coach 6'
  ];

   
  final DownloadController1 downloadController = Get.put(DownloadController1());
  // List to track which coaches are selected
  List<bool> selectedCoaches = [false, false, false, false, false, false];
  final TextEditingController reportTypeController = TextEditingController();
  // Controller for the TextField
  TextEditingController coachController = TextEditingController();

  // Flag to indicate if all items are selected
  bool selectAll = false;

  // Method to get the list of selected coach names
  List<String> getSelectedCoachNames() {
    List<String> selectedNames = [];
    for (int i = 0; i < coaches.length; i++) {
      if (selectedCoaches[i]) {
        selectedNames.add(coaches[i]);
      }
    }
    return selectedNames;
  }

  final List<String> durations = [
    'Today',
    'Last 7 Days',
    'Current Month',
    'Last Month',
    'Custom'
  ];

  List<String> reportTypes = [
    'Collection Report',
    'Transaction Report',
    'Extra Charges Report'
  ];
  String? selectedReportType;

  void _showReportTypeSelectionSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Container(
              height: MediaQuery.of(context).size.height *
                  0.5, // 50% of the screen height
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Select Report Type',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: reportTypes.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(reportTypes[index]),
                          trailing: Radio<String>(
                            value: reportTypes[index],
                            groupValue: selectedReportType,
                            onChanged: (String? value) {
                              setState(() {
                                selectedReportType = value;
                              });
                            },
                          ),
                          onTap: () {
                            setState(() {
                              selectedReportType = reportTypes[index];
                            });
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (selectedReportType != null) {
                                // Update the TextField with the selected report type
                                reportTypeController.text =
                                    'Report Type: $selectedReportType';
                              }
                            });
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 53,
                            width: 237,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(41),
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color.fromRGBO(13, 149, 211, 1),
                                  Color.fromRGBO(9, 96, 186, 1),
                                ],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Select",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  String? selectedDuration;

  // Controller for the TextField
  TextEditingController durationController = TextEditingController();

  // Variable to store selected date range
  DateTimeRange? selectedDateRange;

  void _showDurationSelectionSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Allows us to control the height
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Container(
              height: MediaQuery.of(context).size.height *
                  0.5, // 50% of the screen height
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Select Duration',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: durations.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(durations[index]),
                          trailing: Radio<String>(
                            value: durations[index],
                            groupValue: selectedDuration,
                            onChanged: (String? value) {
                              if (value == 'Custom') {
                                _selectDateRange(context, setState);
                              } else {
                                setState(() {
                                  selectedDuration = value;
                                });
                              }
                            },
                          ),
                          onTap: () {
                            if (durations[index] == 'Custom') {
                              _selectDateRange(context, setState);
                            } else {
                              setState(() {
                                selectedDuration = durations[index];
                              });
                            }
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            )),
                        InkWell(
                          onTap: () {
                            setState(() {
                              // If custom date is selected, show the date range, otherwise show the selected duration
                              if (selectedDuration == 'Custom' &&
                                  selectedDateRange != null) {
                                durationController.text =
                                    '${DateFormat('dd/MM/yyyy').format(selectedDateRange!.start)} - ${DateFormat('dd/MM/yyyy').format(selectedDateRange!.end)}';
                              } else if (selectedDuration != null) {
                                durationController.text = selectedDuration!;
                              }
                            });
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 53.h,
                            width: 237.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(41),
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color.fromRGBO(13, 149, 211, 1),
                                  Color.fromRGBO(9, 96, 186, 1),
                                ],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Select",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Future<void> _selectDateRange(
      BuildContext context, StateSetter setState) async {
    DateTimeRange? picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        selectedDateRange = picked;
        selectedDuration = 'Custom';
      });
    }
  }

  // Method to update the TextField with selected coach names
  void updateCoachTextField() {
    coachController.text = getSelectedCoachNames().join(', ');
  }

  // Method to show the Bottom Sheet
  void _showCoachSelectionSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Allow the bottom sheet to take full height
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.white,
              ),

              height: MediaQuery.of(context).size.height *
                  0.65, // 80% of screen height
              padding: EdgeInsets.all(15), // Optional padding for better look
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    height: 5.h,
                    width: 47.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(33),
                        color: Color.fromRGBO(241, 241, 241, 1)),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    height: 5.h,
                    width: 29.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(33),
                        color: Color.fromRGBO(241, 241, 241, 1)),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Text(
                    "Select Coach",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CheckboxListTile(
                    activeColor: Colors.blue,
                    title: Text('Select All'),
                    value: selectAll,
                    onChanged: (bool? value) {
                      setState(() {
                        selectAll = value ?? false;
                        for (int i = 0; i < selectedCoaches.length; i++) {
                          selectedCoaches[i] = selectAll;
                        }
                      });
                    },
                  ),
                  Expanded(
                    // Make list scrollable by expanding it
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: coaches.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CheckboxListTile(
                          activeColor: Colors.blue,
                          title: Text(coaches[index]),
                          value: selectedCoaches[index],
                          onChanged: (bool? value) {
                            setState(() {
                              selectedCoaches[index] = value ?? false;
                              if (!selectedCoaches[index]) {
                                selectAll = false;
                              } else {
                                selectAll =
                                    selectedCoaches.every((element) => element);
                              }
                            });
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            )),
                        InkWell(
                          onTap: () {
                            setState(() {
                              updateCoachTextField();
                            });
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 53.h,
                            width: 237.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(41),
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color.fromRGBO(13, 149, 211, 1),
                                  Color.fromRGBO(9, 96, 186, 1),
                                ],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Select",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Coach Reports"),
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 25.h,
            ),
            // Container for "Select Report Type" - unchanged
            Container(
              height: 50.h,
              width: 353.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                color: Color.fromRGBO(255, 255, 255, 1),
                border: Border.all(
                    width: 1, color: Color.fromRGBO(241, 241, 241, 1)),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 15, top: 3, right: 5),
                        child: GestureDetector(
                          onTap: _showReportTypeSelectionSheet,
                          child: AbsorbPointer(
                            child: TextField(
                              style: TextStyle(color: Colors.blue),
                              controller: reportTypeController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Select Report Type",
                                
                                hintStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                                suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_forward_ios,
                                      color: Colors.blue),
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
            SizedBox(height: 15.h),
            // Container for "Select Coach" with coach selection logic
            GestureDetector(
              onTap: _showCoachSelectionSheet,
              child: Container(
                height: 50.h,
                width: 353.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  color: Color.fromRGBO(255, 255, 255, 1),
                  border: Border.all(
                      width: 1, color: Color.fromRGBO(241, 241, 241, 1)),
                ),
                child: Center(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, top: 3.5, right: 5),
                          child: TextField(
                            readOnly: true,
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                            controller: coachController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Select Coach",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                              suffixIcon: IconButton(
                                onPressed: _showCoachSelectionSheet,
                                icon: Icon(Icons.arrow_forward_ios,
                                    color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.h),
            // Container for "Select Duration" - unchanged
            Container(
              height: 50.h,
              width: 353.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                color: Color.fromRGBO(255, 255, 255, 1),
                border: Border.all(
                    width: 1, color: Color.fromRGBO(241, 241, 241, 1)),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 15, top: 3, right: 5),
                        child: GestureDetector(
                          onTap:
                              _showDurationSelectionSheet, // Open bottom sheet on tap
                          child: TextField(
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                            controller:
                                durationController, // This is important to update the text
                            readOnly:
                                true, // Makes sure you can't type manually
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Select Duration",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                              suffixIcon: IconButton(
                                onPressed:
                                    _showDurationSelectionSheet, // Open the bottom sheet when icon is pressed
                                icon: Icon(Icons.arrow_forward_ios,
                                    color: Colors.blue),
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
            Obx(() => Padding(
                padding: const EdgeInsets.only(left: 13, right: 13, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 88.h,
                      width: 163.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: ElevatedButton(
                          key: const ValueKey("download_pdf_button"),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor:
                                downloadController.selectedDownloadType1.value ==
                                        "PDF"
                                    ? const Color.fromRGBO(13, 149, 211, 1)
                                    : Colors.white,
                          ),
                          onPressed: () {
                            downloadController.setDownloadType("PDF");
                          },
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 18,
                              ),
                              Icon(
                                Icons.picture_as_pdf,
                                color: downloadController
                                            .selectedDownloadType1.value ==
                                        "PDF"
                                    ? Colors.white
                                    : Colors.red,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Download as PDF",
                                style: TextStyle(
                                  color: downloadController
                                              .selectedDownloadType1.value ==
                                          "PDF"
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ],
                          )),
                    ),

                    Container(
                      height: 88.h,
                      width: 163.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: ElevatedButton(
                          key: const ValueKey("download_excel_button"),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor:
                                downloadController.selectedDownloadType1.value ==
                                        "Excel"
                                    ? const Color.fromRGBO(13, 149, 211, 1)
                                    : Colors.white,
                          ),
                          onPressed: () {
                            downloadController.setDownloadType("Excel");
                          },
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 18,
                              ),
                              Icon(
                                Icons.table_chart,
                                color: downloadController
                                            .selectedDownloadType1.value ==
                                        "Excel"
                                    ? Colors.white
                                    : Colors.green,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Download as Excle",
                                style: TextStyle(
                                  color: downloadController
                                              .selectedDownloadType1.value ==
                                          "Excel"
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ],
                          )),
                    ),

                    
                  ],
                ),
              )),

 SizedBox(height: 100.h),
          SizedBox(height: 240.h),
              Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: InkWell(
                onTap: () {},
                child: Container(
                    height: 64,
                    width: 315,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color.fromRGBO(13, 149, 211, 1),
                              Color.fromRGBO(9, 96, 186, 1),
                            ]),
                        borderRadius: BorderRadius.circular(84)),
                    child: ElevatedButton(
                        onPressed: () {
                          downloadController.download();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(13, 149, 211, 1),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 15),
                        ),
                        child: const Text(
                          "Download",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ))

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
