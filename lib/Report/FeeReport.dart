import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';

class DownloadController extends GetxController {
  // Observable variable to track the selected download type
  var selectedDownloadType = 'PDF'.obs;

  // Function to set the download type
  void setDownloadType(String type) {
    selectedDownloadType.value = type;
  }



  // Function to trigger the download
  void download() {
    if (selectedDownloadType.value == 'PDF') {
      Get.snackbar("Success", "PDF Download Successfully",
          snackPosition: SnackPosition.TOP);
    } else {
      Get.snackbar("Success", "Excel Download Successfully",
          snackPosition: SnackPosition.TOP);
    }
  }
}

class Feereport extends StatefulWidget {
  const Feereport({super.key});

  @override
  State<Feereport> createState() => _FeereportState();
}

class _FeereportState extends State<Feereport> {
  final DownloadController downloadController = Get.put(DownloadController());

  final List<String> _nameList = [
    "Select Report Type",
    "Select Center",
    "Select Batch",
    "Select Duration",
  ];

  String? _selectedReportType;

  // Method to show bottom sheet
  void _showReportTypeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        String? _tempSelectedReportType = _selectedReportType;

        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setModalState) {
            return Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text('Select Report Type',
                      style: TextStyle(fontSize: 18.0)),
                  RadioListTile<String>(
                    title: const Text('Collection Report'),
                    value: 'Collection Report',
                    groupValue: _tempSelectedReportType,
                    onChanged: (String? value) {
                      setModalState(() {
                        _tempSelectedReportType = value;
                      });
                    },
                  ),
                  RadioListTile<String>(
                    title: const Text('Transaction Report'),
                    value: 'Transaction Report',
                    groupValue: _tempSelectedReportType,
                    onChanged: (String? value) {
                      setModalState(() {
                        _tempSelectedReportType = value;
                      });
                    },
                  ),
                  RadioListTile<String>(
                    title: const Text('Extra Charges Report'),
                    value: 'Extra Charges Report',
                    groupValue: _tempSelectedReportType,
                    onChanged: (String? value) {
                      setModalState(() {
                        _tempSelectedReportType = value;
                      });
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedReportType = _tempSelectedReportType;
                      });
                      Navigator.pop(context);
                    },
                    child: Text('Select'),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  final List<String> centers = [
    'Khelnet Badminton 1',
    'Khelnet Badminton 2',
    'Khelnet Badminton 3'
  ];

  // List to track which centers are selected
  List<bool> selectedCenters = [false, false, false];

  // Controller for the TextField
  TextEditingController centerController = TextEditingController();

  // Flag to indicate if all items are selected
  bool selectAll1 = false;

  // Method to get the list of selected center names
  List<String> getSelectedCenterNames() {
    List<String> selectedNames = [];
    for (int i = 0; i < centers.length; i++) {
      if (selectedCenters[i]) {
        selectedNames.add(centers[i]);
      }
    }
    return selectedNames;
  }

  // Method to update the TextField with selected center names
  void updateCenterTextField() {
    centerController.text = getSelectedCenterNames().join(', ');
  }

  // Method to show the Bottom Sheet
  void _showCenterSelectionSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                // "Select All" Checkbox
                CheckboxListTile(
                  title: Text('Select All'),
                  value: selectAll1,
                  onChanged: (bool? value) {
                    setState(() {
                      selectAll1 = value ?? false;
                      // Update all checkboxes based on selectAll value
                      for (int i = 0; i < selectedCenters.length; i++) {
                        selectedCenters[i] = selectAll1;
                      }
                    });
                  },
                ),
                // List of checkboxes for each center
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: centers.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CheckboxListTile(
                      title: Text(centers[index]),
                      value: selectedCenters[index],
                      onChanged: (bool? value) {
                        setState(() {
                          selectedCenters[index] = value ?? false;
                          // If any checkbox is deselected, uncheck "Select All"
                          if (!selectedCenters[index]) {
                            selectAll1 = false;
                          } else {
                            // If all checkboxes are selected, check "Select All"
                            selectAll1 =
                                selectedCenters.every((element) => element);
                          }
                        });
                      },
                    );
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      // Update the TextField in the main UI
                      updateCenterTextField();
                    });
                    Navigator.pop(context);
                  },
                  child: Text('Select'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Fee Report"),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 25.h,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: _nameList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 13, right: 13, top: 15),
                child: Container(
                  height: 50.h,
                  width: 353.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      color: const Color.fromRGBO(251, 251, 251, 1),
                      border: Border.all(
                          width: 2,
                          color: const Color.fromRGBO(241, 241, 241, 1))),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 13, right: 5, top: 3),
                    child: Center(
                      child: TextField(
                        readOnly: true,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  switch (_nameList[index]) {
                                    case 'Select Report Type ':
                                      _showReportTypeBottomSheet(context);
                                      // Navigator.pushNamed(context, '/feeReport');
                                      break;
                                    case 'Select Center':
                                      
                                      _showCenterSelectionSheet();
                                      break;
                                    case 'Select Batch':
                                      Navigator.pushNamed(
                                          context, '/attendanceReport');
                                      break;
                                    case 'Select Duration':
                                      Navigator.pushNamed(
                                          context, '/coachReport');
                                      break;
                                  }
                                },
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.blue,
                                  size: 17,
                                )),
                            border: InputBorder.none,
                            hintText: _nameList[index],
                            hintStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                      ),
                    ),
                  )),
                ),
              );
            },
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
                                downloadController.selectedDownloadType.value ==
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
                                            .selectedDownloadType.value ==
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
                                              .selectedDownloadType.value ==
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
                                downloadController.selectedDownloadType.value ==
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
                                            .selectedDownloadType.value ==
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
                                              .selectedDownloadType.value ==
                                          "Excel"
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ],
                          )),
                    ),

                    // ElevatedButton(
                    //     key: const ValueKey("download_excel_button"),
                    //     style: ElevatedButton.styleFrom(
                    //       foregroundColor: Colors.black,
                    //       backgroundColor:
                    //           downloadController.selectedDownloadType.value ==
                    //                   "Excel"
                    //               ? Colors.blue
                    //               : Colors.white,
                    //     ),
                    //     onPressed: () {
                    //       downloadController.setDownloadType("Excel");
                    //     },
                    //     child: const Column(
                    //       children: [
                    //         SizedBox(
                    //           height: 8,
                    //         ),
                    //         Icon(Icons.table_chart),
                    //         Text("Download as Excel"),
                    //       ],
                    //     )),
                  ],
                ),
              )),
          SizedBox(height: 20.h),
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

                    //  Center(
                    //     child:

                    //     Text(
                    //   "Add Students",
                    //   style: TextStyle(
                    //       fontWeight: FontWeight.w700,
                    //       fontSize: 16,
                    //       color: Color.fromRGBO(251, 251, 251, 1)),
                    // )),
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
