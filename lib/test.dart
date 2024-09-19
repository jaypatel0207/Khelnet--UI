

////// ---- select Coach ---------///////





// import 'package:flutter/material.dart';

// class CoachReportPage extends StatefulWidget {
//   @override
//   _CoachReportPageState createState() => _CoachReportPageState();
// }

// class _CoachReportPageState extends State<CoachReportPage> {
//   // List of coaches
//   final List<String> coaches = ['Coach 1', 'Coach 2', 'Coach 3', 'Coach 4', 'Coach 5', 'Coach 6'];

//   // List to track which coaches are selected
//   List<bool> selectedCoaches = [false, false, false, false, false, false];

//   // Controller for the TextField
//   TextEditingController coachController = TextEditingController();

//   // Flag to indicate if all items are selected
//   bool selectAll = false;

//   // Method to get the list of selected coach names
//   List<String> getSelectedCoachNames() {
//     List<String> selectedNames = [];
//     for (int i = 0; i < coaches.length; i++) {
//       if (selectedCoaches[i]) {
//         selectedNames.add(coaches[i]);
//       }
//     }
//     return selectedNames;
//   }

//   // Method to update the TextField with selected coach names
//   void updateCoachTextField() {
//     coachController.text = getSelectedCoachNames().join(', ');
//   }

//   // Method to show the Bottom Sheet
//   void _showCoachSelectionSheet() {
//     showModalBottomSheet(
//       context: context,
//       builder: (BuildContext context) {
//         return StatefulBuilder(
//           builder: (BuildContext context, StateSetter setState) {
//             return Column(
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 // "Select All" Checkbox
//                 CheckboxListTile(
//                   title: Text('Select All'),
//                   value: selectAll,
//                   onChanged: (bool? value) {
//                     setState(() {
//                       selectAll = value ?? false;
//                       // Update all checkboxes based on selectAll value
//                       for (int i = 0; i < selectedCoaches.length; i++) {
//                         selectedCoaches[i] = selectAll;
//                       }
//                     });
//                   },
//                 ),
//                 // List of checkboxes for each coach
//                 ListView.builder(
//                   shrinkWrap: true,
//                   itemCount: coaches.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     return CheckboxListTile(
//                       title: Text(coaches[index]),
//                       value: selectedCoaches[index],
//                       onChanged: (bool? value) {
//                         setState(() {
//                           selectedCoaches[index] = value ?? false;
//                           // If any checkbox is deselected, uncheck "Select All"
//                           if (!selectedCoaches[index]) {
//                             selectAll = false;
//                           } else {
//                             // If all checkboxes are selected, check "Select All"
//                             selectAll = selectedCoaches.every((element) => element);
//                           }
//                         });
//                       },
//                     );
//                   },
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       // Update the TextField in the main UI
//                       updateCoachTextField();
//                     });
//                     Navigator.pop(context);
//                   },
//                   child: Text('Select'),
//                 ),
//               ],
//             );
//           },
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Coach Reports'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             // TextField to show selected coaches
//             GestureDetector(
//               onTap: _showCoachSelectionSheet,
//               child: AbsorbPointer( // Prevent direct editing
//                 child: TextField(
//                   controller: coachController,
//                   decoration: InputDecoration(
//                     labelText: 'Select Coach',
//                     hintText: 'Select one or more coaches',
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: CoachReportPage(),
//   ));
// }


////// ----end of  select Coach ---------///////






////// ---- select center ---------///////






// import 'package:flutter/material.dart';

// class CenterSelectionPage extends StatefulWidget {
//   @override
//   _CenterSelectionPageState createState() => _CenterSelectionPageState();
// }

// class _CenterSelectionPageState extends State<CenterSelectionPage> {
//   // List of centers
//   final List<String> centers = ['Khelnet Badminton 1', 'Khelnet Badminton 2', 'Khelnet Badminton 3'];

//   // List to track which centers are selected
//   List<bool> selectedCenters = [false, false, false];

//   // Controller for the TextField
//   TextEditingController centerController = TextEditingController();

//   // Flag to indicate if all items are selected
//   bool selectAll = false;

//   // Method to get the list of selected center names
//   List<String> getSelectedCenterNames() {
//     List<String> selectedNames = [];
//     for (int i = 0; i < centers.length; i++) {
//       if (selectedCenters[i]) {
//         selectedNames.add(centers[i]);
//       }
//     }
//     return selectedNames;
//   }

//   // Method to update the TextField with selected center names
//   void updateCenterTextField() {
//     centerController.text = getSelectedCenterNames().join(', ');
//   }

//   // Method to show the Bottom Sheet
//   void _showCenterSelectionSheet() {
//     showModalBottomSheet(
//       context: context,
//       builder: (BuildContext context) {
//         return StatefulBuilder(
//           builder: (BuildContext context, StateSetter setState) {
//             return Column(
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 // "Select All" Checkbox
//                 CheckboxListTile(
//                   title: Text('Select All'),
//                   value: selectAll,
//                   onChanged: (bool? value) {
//                     setState(() {
//                       selectAll = value ?? false;
//                       // Update all checkboxes based on selectAll value
//                       for (int i = 0; i < selectedCenters.length; i++) {
//                         selectedCenters[i] = selectAll;
//                       }
//                     });
//                   },
//                 ),
//                 // List of checkboxes for each center
//                 ListView.builder(
//                   shrinkWrap: true,
//                   itemCount: centers.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     return CheckboxListTile(
//                       title: Text(centers[index], ),
//                       value: selectedCenters[index],
//                       onChanged: (bool? value) {
//                         setState(() {
//                           selectedCenters[index] = value ?? false;
//                           // If any checkbox is deselected, uncheck "Select All"
//                           if (!selectedCenters[index]) {
//                             selectAll = false;
//                           } else {
//                             // If all checkboxes are selected, check "Select All"
//                             selectAll = selectedCenters.every((element) => element);
//                           }
//                         });
//                       },
//                     );
//                   },
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       // Update the TextField in the main UI
//                       updateCenterTextField();
//                     });
//                     Navigator.pop(context);
//                   },
//                   child: Text('Select'),
//                 ),
//               ],
//             );
//           },
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Select Center'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             // TextField to show selected centers
//             GestureDetector(
//               onTap: _showCenterSelectionSheet,
//               child: AbsorbPointer( // Prevent direct editing
//                 child: TextField(
//                   controller: centerController,
//                   decoration: InputDecoration(
//                     labelText: 'Select Center',
//                     hintText: 'Select one or more centers',
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: CenterSelectionPage(),
//   ));
// }








import 'package:flutter/material.dart';

class ReportTypeSelector extends StatefulWidget {
  @override
  _ReportTypeSelectorState createState() => _ReportTypeSelectorState();
}

class _ReportTypeSelectorState extends State<ReportTypeSelector> {
  List<String> reportTypes = ['Collection Report', 'Transaction Report', 'Extra Charges Report'];
  String? selectedReportType;
  TextEditingController reportTypeController = TextEditingController();

  void _showReportTypeSelectionSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Container(
              height: MediaQuery.of(context).size.height * 0.5, // 50% of the screen height
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Select Report Type',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Cancel",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (selectedReportType != null) {
                                reportTypeController.text = 'Report Type: $selectedReportType';
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
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
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
      appBar: AppBar(
        title: Text('Report Type Selector'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: _showReportTypeSelectionSheet, // Open the bottom sheet on tap
              child: AbsorbPointer( // Prevents the TextField from being editable
                child: TextField(
                  controller: reportTypeController,
                  readOnly: true,
                  decoration: InputDecoration(
                    labelText: 'Select Report Type',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(
  home: ReportTypeSelector(),
));
