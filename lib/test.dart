

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';
import 'package:khelnet/Custome%20Widget/Gradient.dart';
import 'package:khelnet/Pages/Fees/Invoice.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

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








// import 'package:flutter/material.dart';

// class ReportTypeSelector extends StatefulWidget {
//   @override
//   _ReportTypeSelectorState createState() => _ReportTypeSelectorState();
// }

// class _ReportTypeSelectorState extends State<ReportTypeSelector> {
//   List<String> reportTypes = ['Collection Report', 'Transaction Report', 'Extra Charges Report'];
//   String? selectedReportType;
//   TextEditingController reportTypeController = TextEditingController();

//   void _showReportTypeSelectionSheet() {
//     showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       builder: (BuildContext context) {
//         return StatefulBuilder(
//           builder: (BuildContext context, StateSetter setState) {
//             return Container(
//               height: MediaQuery.of(context).size.height * 0.5, // 50% of the screen height
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Text(
//                       'Select Report Type',
//                       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//                     ),
//                   ),
//                   Expanded(
//                     child: ListView.builder(
//                       shrinkWrap: true,
//                       itemCount: reportTypes.length,
//                       itemBuilder: (BuildContext context, int index) {
//                         return ListTile(
//                           title: Text(reportTypes[index]),
//                           trailing: Radio<String>(
//                             value: reportTypes[index],
//                             groupValue: selectedReportType,
//                             onChanged: (String? value) {
//                               setState(() {
//                                 selectedReportType = value;
//                               });
//                             },
//                           ),
//                           onTap: () {
//                             setState(() {
//                               selectedReportType = reportTypes[index];
//                             });
//                           },
//                         );
//                       },
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 15, right: 15, bottom: 12),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         InkWell(
//                           onTap: () {
//                             Navigator.pop(context);
//                           },
//                           child: Text(
//                             "Cancel",
//                             style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//                           ),
//                         ),
//                         InkWell(
//                           onTap: () {
//                             setState(() {
//                               if (selectedReportType != null) {
//                                 reportTypeController.text = 'Report Type: $selectedReportType';
//                               }
//                             });
//                             Navigator.pop(context);
//                           },
//                           child: Container(
//                             height: 53,
//                             width: 237,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(41),
//                               gradient: LinearGradient(
//                                 begin: Alignment.centerLeft,
//                                 end: Alignment.centerRight,
//                                 colors: [
//                                   Color.fromRGBO(13, 149, 211, 1),
//                                   Color.fromRGBO(9, 96, 186, 1),
//                                 ],
//                               ),
//                             ),
//                             child: Center(
//                               child: Text(
//                                 "Select",
//                                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
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
//         title: Text('Report Type Selector'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             GestureDetector(
//               onTap: _showReportTypeSelectionSheet, // Open the bottom sheet on tap
//               child: AbsorbPointer( // Prevents the TextField from being editable
//                 child: TextField(
//                   controller: reportTypeController,
//                   readOnly: true,
//                   decoration: InputDecoration(
//                     labelText: 'Select Report Type',
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() => runApp(MaterialApp(
//   home: ReportTypeSelector(),
// ));







// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:khelnet/Controller/Tabcontroller.dart';
// //import 'controller/custom_tab_controller.dart'; // Import the renamed controller

// class TabSwitcher extends StatelessWidget {
//   final CustomTabController tabController = Get.put(CustomTabController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Tab Switcher"),
//       ),
//       body: Column(
//         children: [
//           // Top Tab Buttons
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               buildTabButton("Past Dues", Icons.arrow_downward, 'past_dues'),
//               buildTabButton("Upcoming", Icons.event, 'upcoming'),
//               buildTabButton("History", Icons.history, 'history'),
//               buildTabButton("Installment", Icons.account_tree, 'installment'),
//             ],
//           ),
//           SizedBox(height: 20),

//           // Display the content based on the selected tab
//           Obx(() {
//             switch (tabController.selectedTab.value) {
//               case 'past_dues':
//                 return buildContent("Past Dues Content");
//               case 'upcoming':
//                 return buildContent("Upcoming Content");
//               case 'history':
//                 return buildContent("History Content");
//               case 'installment':
//                 return buildContent("Installment Content");
//               default:
//                 return buildContent("Select a Tab");
//             }
//           }),
//         ],
//       ),
//     );
//   }

//   // Function to build each tab button
//   Widget buildTabButton(String title, IconData icon, String tab) {
//     return GestureDetector(
//       onTap: () => tabController.changeTab(tab),
//       child: Obx(() {
//         // Determine the colors based on whether the tab is selected or not
//         Color iconColor = tabController.selectedTab.value == tab ? Colors.red : Colors.blue;
//         Color textColor = tabController.selectedTab.value == tab ? Colors.red : Colors.black;

//         return Column(
//           children: [
//             Icon(icon, color: iconColor),
//             Text(
//               title,
//               style: TextStyle(color: textColor),
//             ),
//           ],
//         );
//       }),
//     );
//   }

//   // Function to build the content for each tab
//   Widget buildContent(String content) {
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: Text(
//         content,
//         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }





// import 'package:flutter/material.dart';

// class CollapsibleAppBarScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: <Widget>[
     
//           SliverAppBar(
//             floating: false,
//             pinned: true,
//             snap: false,
//             expandedHeight: 50.0,
//             flexibleSpace: FlexibleSpaceBar(
//               title: Text('Collapsible App Bar'),
             
//             ),
//           ),
          
//           SliverPersistentHeader(
//             pinned: true,
//             delegate: _SliverAppBarDelegate(
//               minHeight: 60.0,
//               maxHeight: 60.0,
//               child: Container(
//                 color: Colors.white,
//                 padding: EdgeInsets.symmetric(horizontal: 16.0),
//                 alignment: Alignment.center,
//                 child: TextField(
//                   decoration: InputDecoration(
//                     hintText: 'Search...',
//                     prefixIcon: Icon(Icons.search),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(30.0),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),

       
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (BuildContext context, int index) {
//                 return ListTile(
//                   title: Text('Item #$index'),
//                 );
//               },
//               childCount: 50, // Number of items in the list
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
//   final double minHeight;
//   final double maxHeight;
//   final Widget child;

//   _SliverAppBarDelegate({
//     required this.minHeight,
//     required this.maxHeight,
//     required this.child,
//   });

//   @override
//   double get minExtent => minHeight;

//   @override
//   double get maxExtent => maxHeight;

//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return SizedBox.expand(child: child);
//   }

//   @override
//   bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
//     return maxHeight != oldDelegate.maxHeight ||
//         minHeight != oldDelegate.minHeight ||
//         child != oldDelegate.child;
//   }
// }


// import 'package:flutter/material.dart';

// class MultiSelectExample extends StatefulWidget {
//   @override
//   _MultiSelectExampleState createState() => _MultiSelectExampleState();
// }

// class _MultiSelectExampleState extends State<MultiSelectExample> {
//   List<bool> selectedItems = List.generate(10, (index) => false);
//   bool isSelectionMode = false;

//   void toggleSelection(int index) {
//     if (isSelectionMode) {
//       setState(() {
//         selectedItems[index] = !selectedItems[index];
//       });
//     }
//   }

//   void handleSelectionMode() {
//     setState(() {
//       isSelectionMode = !isSelectionMode;
//       if (!isSelectionMode) {
//         selectedItems = List.generate(10, (index) => false); // Clear selections
//       }
//     });
//   }

//   void handleButtonPress() {
//     List<int> selectedIndices = [];
//     for (int i = 0; i < selectedItems.length; i++) {
//       if (selectedItems[i]) {
//         selectedIndices.add(i);
//       }
//     }
//     // Process the selected items
//     print("Selected items: $selectedIndices");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Multi-Select Example")),
//       body: Column(
//         children: [
//           ElevatedButton(
//             onPressed: handleSelectionMode,
//             child: Text(isSelectionMode ? "Cancel" : "Select Multiple"),
//           ),
//           SizedBox(
//             height: 400,
//             child: ListView.builder(
//               itemCount: 10,
//               itemBuilder: (context, index) {
//                 return GestureDetector(
//                   onTap: () => toggleSelection(index),
//                   child: Stack(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(top: 13),
//                         child: Container(
//                           height: 75,
//                           width: 363,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(11),
//                             border: Border.all(
//                               width: 1,
//                               color: selectedItems[index]
//                                   ? Colors.blue
//                                   : const Color.fromRGBO(241, 241, 241, 1),
//                             ),
//                           ),
//                           child: Row(
//                             children: [
//                               const SizedBox(width: 5),
//                               const CircleAvatar(
//                                 backgroundImage: AssetImage("assets/images/modi.png"),
//                               ),
//                               const Padding(
//                                 padding: EdgeInsets.all(8.0),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       "Narendra Modi",
//                                       style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
//                                     ),
//                                     Text(
//                                       "Shine 1",
//                                       style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
//                                     ),
//                                     Text(
//                                       " (4:00 AM - 5:00 AM)",
//                                       style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: Color.fromRGBO(186, 186, 186, 1)),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               const SizedBox(width: 40),
//                               const Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text("14", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
//                                   Text("Aprl", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
//                                 ],
//                               ),
//                               const SizedBox(width: 20),
//                               InkWell(
//                                 onTap: () {},
//                                 child: Container(
//                                   height: 40,
//                                   width: 80,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(29),
//                                     border: Border.all(width: 1, color: const Color.fromRGBO(204, 23, 23, 1)),
//                                   ),
//                                   child: const Center(
//                                     child: Text("Unpaid", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       // Circular checkmark for selected items
//                       if (selectedItems[index])
//                         Positioned(
//                           top: 10,
//                           left: 10,
//                           child: Container(
//                             height: 24,
//                             width: 24,
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: Colors.blue, // Background color for the circle
//                             ),
//                             child: const Icon(
//                               Icons.check,
//                               color: Colors.white, // Checkmark color
//                               size: 16,
//                             ),
//                           ),
//                         ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//           ElevatedButton(
//             onPressed: isSelectionMode ? handleButtonPress : null,
//             child: Text("Submit Selected"),
//           ),
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DropdownExample(),
//     );
//   }
// }

// class DropdownExample extends StatefulWidget {
//   @override
//   _DropdownExampleState createState() => _DropdownExampleState();
// }

// class _DropdownExampleState extends State<DropdownExample> {
//   String? selectedYear; // Start as null to show the placeholder

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Dropdown in Container')),
//       body: Center(
//         child: Container(
//           height: 50,
//           width: 145,
//           padding: EdgeInsets.symmetric(horizontal: 16),
//           decoration: BoxDecoration(
//             color: Colors.grey[200], // Background color of the container
//             borderRadius: BorderRadius.circular(50),
//             border: Border.all(color: Colors.grey), // Optional border
//           ),
//           child: DropdownButtonHideUnderline(
//             child: DropdownButton<String>(
//               hint: Text('Year'),  // Placeholder text
//               value: selectedYear,
//               icon: Icon(Icons.arrow_drop_down),
//               iconSize: 24,
//               elevation: 16,
//               style: TextStyle(color: Colors.black, fontSize: 16),
//               onChanged: (String? newValue) {
//                 setState(() {
//                   selectedYear = newValue!;
//                 });
//               },
//               items: <String>['2024', '2025']
//                   .map<DropdownMenuItem<String>>((String value) {
//                 return DropdownMenuItem<String>(
//                   value: value,
//                   child: Text(value),
//                 );
//               }).toList(),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart'; // Add this for formatting dates

// class MyWidget extends StatefulWidget {
//   @override
//   _MyWidgetState createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   String? selectedYear;
//   String? selectedMonth;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           child: Padding(
//             padding: const EdgeInsets.only(left: 18, top: 15, right: 15),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 // Year Dropdown
//                 Container(
//                   height: 50,
//                   width: 145,
//                   padding: const EdgeInsets.symmetric(horizontal: 16),
//                   decoration: BoxDecoration(
//                     color: const Color.fromRGBO(241, 241, 241, 1),
//                     borderRadius: BorderRadius.circular(50),
//                     border: Border.all(color: Colors.white),
//                   ),
//                   child: DropdownButtonHideUnderline(
//                     child: DropdownButton<String>(
//                       hint: const Text('Year'),
//                       value: selectedYear,
//                       icon: const Icon(Icons.arrow_drop_down),
//                       iconSize: 24,
//                       elevation: 16,
//                       style: const TextStyle(color: Colors.black, fontSize: 16),
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           selectedYear = newValue!;
//                         });
//                       },
//                       items: <String>["2024", "2025"]
//                           .map<DropdownMenuItem<String>>((String value) {
//                         return DropdownMenuItem<String>(
//                           value: value,
//                           child: Text(
//                             value,
//                             style: TextStyle(
//                               color: selectedYear == value
//                                   ? Colors.blue
//                                   : Colors.black,
//                             ),
//                           ),
//                         );
//                       }).toList(),
//                     ),
//                   ),
//                 ),
          
//                 // Month Dropdown
//                 Container(
//                   height: 50,
//                   width: 145,
//                   padding: const EdgeInsets.symmetric(horizontal: 16),
//                   decoration: BoxDecoration(
//                     color: const Color.fromRGBO(241, 241, 241, 1),
//                     borderRadius: BorderRadius.circular(50),
//                     border: Border.all(color: Colors.white),
//                   ),
//                   child: DropdownButtonHideUnderline(
//                     child: DropdownButton<String>(
//                       hint: const Text('Month'),
//                       value: selectedMonth,
//                       icon: const Icon(Icons.arrow_drop_down),
//                       iconSize: 24,
//                       elevation: 16,
//                       style: const TextStyle(color: Colors.black, fontSize: 16),
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           selectedMonth = newValue!;
//                         });
//                       },
//                       items: <String>[
//                         "January",
//                         "February",
//                         "March",
//                         "April", 
//                         "May",
//                         "July",
//                         "August",
//                         "September",
//                         "October",
//                         "November",
//                         "December"
//                       ].map<DropdownMenuItem<String>>((String value) {
//                         return DropdownMenuItem<String>(
//                           value: value,
//                           child: Text(
//                             value,
//                             style: TextStyle(
//                               color: selectedMonth == value
//                                   ? Colors.blue
//                                   : Colors.black,
//                             ),
//                           ),
//                         );
//                       }).toList(),
//                     ),
//                   ),
//                 ),
          
//                 // Calendar Icon Button
//                 IconButton(
//                   onPressed: () async {
//                     // Open the DatePicker
//                     DateTime? pickedDate = await showDatePicker(
//                       context: context,
//                       initialDate: DateTime.now(),
//                       firstDate: DateTime(2000),
//                       lastDate: DateTime(2100),
//                     );
          
//                     if (pickedDate != null) {
//                       // Update selected year and month based on picked date
//                       setState(() {
//                         selectedYear = pickedDate.year.toString();
//                         selectedMonth = DateFormat.MMMM().format(pickedDate); // Formats to full month name
//                       });
//                     }
//                   },
//                   icon: const Icon(
//                     Icons.calendar_today_outlined,
//                     color: Colors.blue,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }





// import 'package:flutter/material.dart';
// import 'package:dotted_border/dotted_border.dart';
// import 'package:file_picker/file_picker.dart';
// import 'dart:io'; // Import for File

// class UploadSignatureStamp extends StatefulWidget {
//   @override
//   _UploadSignatureStampState createState() => _UploadSignatureStampState();
// }

// class _UploadSignatureStampState extends State<UploadSignatureStamp> {
//   File? _selectedFile; // Variable to hold the selected file

//   // Function to handle file picking
//   Future<void> _pickFile() async {
//     // Show file picker dialog
//     FilePickerResult? result = await FilePicker.platform.pickFiles(
//       type: FileType.image, // Allow only image files
//     );

//     if (result != null && result.files.isNotEmpty) {
//       String? filePath = result.files.single.path;
//       if (filePath != null) {
//         setState(() {
//           _selectedFile = File(filePath); // Update the selected file
//         });
//       }
//     } else {
//       // User canceled the picker
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('No file selected')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: GestureDetector(
//           onTap: _pickFile, // Trigger file picker on tap
//           child: DottedBorder(
//             color: Colors.blue,  // Border color
//             strokeWidth: 2,      // Border thickness
//             dashPattern: [6, 4], // Dash and gap length for the dashed border
//             borderType: BorderType.RRect,
//             radius: Radius.circular(20), // Rounded corners
//             padding: EdgeInsets.all(16), // Padding inside the border
//             child: Container(
//               width: MediaQuery.of(context).size.width * 0.8, // Responsive width
//               height: 150,
//               color: Colors.white,
//               child: _selectedFile != null
//                   ? Image.file(
//                       _selectedFile!,
//                       fit: BoxFit.cover, // Adjust the image to fit the container
//                     )
//                   : Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.cloud_upload_outlined, // Cloud upload icon
//                           color: Colors.blue,
//                           size: 40,
//                         ),
//                         SizedBox(height: 10), // Space between icon and text
//                         Text(
//                           "Upload Signature / Stamp",
//                           style: TextStyle(
//                             color: Colors.blue, // Text color
//                             fontSize: 16,      // Font size
//                             fontWeight: FontWeight.w500, // Font weight
//                           ),
//                         ),
//                       ],
//                     ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';



// class AutoSendInvoiceTile extends StatefulWidget {
//   @override
//   _AutoSendInvoiceTileState createState() => _AutoSendInvoiceTileState();
// }

// class _AutoSendInvoiceTileState extends State<AutoSendInvoiceTile> {
//   bool isSwitched = false;

//   @override
//   Widget build(BuildContext context) {
//     return 
    
    
//     Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12),
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black12,
//               blurRadius: 6,
//               spreadRadius: 2,
//             ),
//           ],
//         ),
//         child: ListTile(
//           contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//           title: Row(
//             children: [
//               Expanded(
//                 child: Text(
//                   'Auto Send Invoice',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16,
//                   ),
//                 ),
//               ),
//               Switch(
                
//                 value: isSwitched,
//                 onChanged: (value) {
//                   setState(() {
//                     isSwitched = value;
//                   });
//                 },
//                 activeColor: Colors.blueAccent[700],
//               ),
//             ],
//           ),
//           subtitle: Padding(
//             padding: const EdgeInsets.only(top: 8.0),
//             child: Text(
//               '* This will automatically send the fee receipt whenever any payment made',
//               style: TextStyle(
//                 color: Colors.grey,
//                 fontSize: 12,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: CurrentInvoiceTile(),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CurrentInvoiceTile extends StatefulWidget {
//   @override
//   _CurrentInvoiceTileState createState() => _CurrentInvoiceTileState();
// }

// class _CurrentInvoiceTileState extends State<CurrentInvoiceTile> {
//   final TextEditingController _controller = TextEditingController(text: "30");

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(12),
//             color: Colors.white,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black12,
//                 blurRadius: 6,
//                 spreadRadius: 2,
//               ),
//             ],
//           ),
//           child: Row(
//             children: [
//               Expanded(
//                 child: TextField(
//                   controller: _controller,
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     hintText: 'Current Invoice No.',
//                     hintStyle: TextStyle(
//                       color: Colors.grey,
//                       fontSize: 16,
//                     ),
//                   ),
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16,
//                     color: Colors.black,
//                   ),
//                   enabled: false, // Disable the field until edit mode is activated
//                 ),
//               ),
//               IconButton(
//                 icon: Icon(Icons.edit, color: Colors.blue),
//                 onPressed: () {
//                   // Define the action when the edit button is clicked
//                   setState(() {
//                     _controller.text = 'Edit Mode'; // Sample action
//                   });
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// class Test extends StatefulWidget {
//   const Test({super.key});

//   @override
//   State<Test> createState() => _TestState();
// }

// class _TestState extends State<Test> {
//     bool isSwitched = false;
//   final TextEditingController _invoiceController = TextEditingController();
//   final TextEditingController _bottomSheetController = TextEditingController(); // Controller for bottom sheet text field

 
 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: const CustomAppBar(title: "Invoice Settings"),
//       body: Column(
//         children: [
//           SizedBox(height: 25.h),
//           Center(
//             child: Container(
//               height: 81.h,
//               width: 353.w,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(18),
//                   border: Border.all(color: const Color.fromRGBO(241, 241, 241, 1), width: 1)),
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 8, right: 10, left: 10),
//                 child: Center(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       const Column(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text("Auto Send Invoice", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
//                               SizedBox(width: 50),
//                             ],
//                           ),
//                           SizedBox(height: 5),
//                           Row(
//                             children: [
//                               Text(
//                                 "* This will automatically send the fee",
//                                 style: TextStyle(color: Color.fromRGBO(186, 186, 186, 1), fontSize: 12, fontWeight: FontWeight.w500),
//                               ),
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               Text(
//                                 "receipt whenever any payment made",
//                                 style: TextStyle(color: Color.fromRGBO(186, 186, 186, 1), fontSize: 12, fontWeight: FontWeight.w500),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                       Switch(
//                         value: isSwitched,
//                         onChanged: (value) {
//                           setState(() {
//                             isSwitched = value;
//                           });
//                         },
//                         activeColor: Colors.blue,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 18, right: 18, top: 20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   height: 50,
//                   width: 302,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(26),
//                     border: Border.all(width: 1, color: const Color.fromRGBO(241, 241, 241, 1)),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 17, right: 17),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         const Text(
//                           "Current Invoice No.",
//                           style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Color.fromRGBO(186, 186, 186, 1)),
//                         ),
//                         const SizedBox(width: 100),
//                         Expanded(
//                           child: TextField(
//                             controller: _invoiceController,
//                             decoration: const InputDecoration(
//                               border: InputBorder.none,
//                               isDense: true,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     Get.bottomSheet(
//                       Container(
//                         height: 300.h,
//                         padding: const EdgeInsets.all(20),
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(20.h),
//                             topRight: Radius.circular(20.h),
//                           ),
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 InkWell(
//                                   onTap: () => Get.back(),
//                                   child: Container(
//                                     height: 36,
//                                     width: 36,
//                                     decoration: BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       color: Color.fromRGBO(13, 141, 207, 0.13),
//                                     ),
//                                     child: const Center(
//                                       child: Icon(
//                                         Icons.arrow_back_ios_new,
//                                         color: Color.fromRGBO(11, 121, 198, 1),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 const Text(
//                                   "Invoice Number",
//                                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                                 ),
//                                 const SizedBox(width: 36), // For symmetry with back button
//                               ],
//                             ),
//                             const SizedBox(height: 20),
//                             TextField(
//                               controller: _bottomSheetController,
//                               keyboardType: TextInputType.number,
//                               decoration: const InputDecoration(
//                                 labelText: "Enter Invoice Number",
//                                 border: OutlineInputBorder(),
//                               ),
//                             ),
//                             const SizedBox(height: 20),
//                             Center(
//                               child: ElevatedButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     _invoiceController.text = _bottomSheetController.text;
//                                   });
//                                   Get.back(); // Close bottom sheet
//                                 },
//                                 child: const Text("OK"),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                   child: Container(
//                     height: 45.0,
//                     width: 45.0,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(width: 1, color: const Color.fromRGBO(241, 241, 241, 1)),
//                     ),
//                     child: const Center(
//                       child: Icon(
//                         Icons.edit,
//                         color: Colors.blue,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 20),
//           Container(
//             height: 50,
//             width: 368,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(26),
//               border: Border.all(width: 1, color: const Color.fromRGBO(241, 241, 241, 1)),
//             ),
//             child: const Padding(
//               padding: EdgeInsets.only(left: 13, right: 13),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "Preview Invoice Design",
//                     style: TextStyle(color: Colors.blue, fontSize: 15, fontWeight: FontWeight.w500),
//                   ),
//                   Icon(Icons.remove_red_eye, color: Colors.blue),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }












// import 'package:flutter/material.dart';



// class RadioButtonExample extends StatefulWidget {
//   @override
//   _RadioButtonExampleState createState() => _RadioButtonExampleState();
// }

// class _RadioButtonExampleState extends State<RadioButtonExample> {
//   String? _selectedOption = 'withUPI';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Send Fee Reminder'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Card(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(16.0),
//               ),
//               elevation: 2,
//               child: Column(
//                 children: [
//                   RadioListTile<String>(
//                     title: Text('Send Fee Reminder With UPI Payment Link'),
//                     value: 'withUPI',
//                     activeColor: Colors.blue,
//                     groupValue: _selectedOption,
//                     onChanged: (value) {
//                       setState(() {
//                         _selectedOption = value;
//                       });
//                     },
//                   ),
//                   Divider(), 
//                   RadioListTile<String>(
//                     title: Text('Send Fee Reminder Without UPI Payment Link'),
//                     value: 'withoutUPI',
//                     groupValue: _selectedOption,
//                     activeColor: Colors.blue,
//                     onChanged: (value) {
//                       setState(() {
//                         _selectedOption = value;
//                       });
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



















// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Custom Radio Button Example',
//       home: RadioButtonExample(),
//     );
//   }
// }

// class RadioButtonExample extends StatefulWidget {
//   @override
//   _RadioButtonExampleState createState() => _RadioButtonExampleState();
// }

// class _RadioButtonExampleState extends State<RadioButtonExample> {
//   String? _selectedOption = 'withUPI';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Send Fee Reminder'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Card(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(16.0),
//               ),
//               elevation: 2,
//               child: Column(
//                 children: [
//                   Theme(
//                     data: Theme.of(context).copyWith(
//                       radioTheme: RadioThemeData(
//                         materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                         fillColor: MaterialStateProperty.all(Colors.blue),
//                         visualDensity: VisualDensity(horizontal: -4.0, vertical: -4.0),
//                       ),
//                     ),
//                     child: RadioListTile<String>(
//                       title: Text('Send Fee Reminder With UPI Payment Link'),
//                       value: 'withUPI',
//                       groupValue: _selectedOption,
//                       onChanged: (value) {
//                         setState(() {
//                           _selectedOption = value;
//                         });
//                       },
//                       contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
//                       controlAffinity: ListTileControlAffinity.trailing, // Radio button on the right
//                     ),
//                   ),
//                   Theme(
//                     data: Theme.of(context).copyWith(
//                       radioTheme: RadioThemeData(
//                         materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                         fillColor: MaterialStateProperty.all(Colors.blue),
//                         visualDensity: VisualDensity(horizontal: -4.0, vertical: -4.0),
//                       ),
//                     ),
//                     child: RadioListTile<String>(
//                       title: Text('Send Fee Reminder Without UPI Payment Link'),
//                       value: 'withoutUPI',
//                       groupValue: _selectedOption,
//                       onChanged: (value) {
//                         setState(() {
//                           _selectedOption = value;
//                         });
//                       },
//                       contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
//                       controlAffinity: ListTileControlAffinity.trailing, // Radio button on the right
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';

// class CustomFloatingActionButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Custom FAB Example'),
//       ),
//       body: Center(
//         child: Text('Your content here'),
//       ),
//       floatingActionButton: Container(
//         height: 64.0, // Custom height for the button
//         width: 315.0,  // Custom width for the button
//         child: FloatingActionButton(
//           onPressed: () {
//             // Define the action when the button is pressed
//             print('Add Student button pressed');
//           },
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(30.0), // Rounded edges
//           ),
//           child: Ink(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Colors.lightBlue, Colors.blue],
//                 begin: Alignment.centerLeft,
//                 end: Alignment.centerRight,
//               ),
//               borderRadius: BorderRadius.circular(30.0),
//             ),
//             child: Container(
//               alignment: Alignment.center,
//               child: Text(
//                 'Add Student',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 16.0,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//           backgroundColor: Colors.transparent, // Make background transparent to use gradient
//           elevation: 0,  // Remove shadow if you want
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // Position at the bottom center
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: CustomFloatingActionButton(),
//   ));
// }




// class GradientTextExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Gradient Text Example'),
//       ),
//       body: Center(
//         child: GradientText(
          
//           text: 'Gradient Text Example',
//           gradient: LinearGradient(
            
            
//             colors: <Color>[
//              // rgba(9, 96, 186, 1)
//               Color.fromRGBO(13, 149, 211, 1), 
//              Color.fromRGBO(9, 96, 186, 1), 
//           // Repeating for a three-color effect
//             ],
//             begin: Alignment.centerLeft,
//             end: Alignment.centerRight,
//           ),
//           style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
//}


// import 'package:flutter/material.dart';
// import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

// void main() {
//   runApp(
//     const WoltModalSheetApp(),
//   );
// }

// class WoltModalSheetApp extends StatelessWidget {
//   const WoltModalSheetApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: WoltModalSheetHomePage(),
//     );
//   }
// }

// class WoltModalSheetHomePage extends StatelessWidget {
//   const WoltModalSheetHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Wolt Modal Bottom Sheet Sample'),
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: () {
//           WoltModalSheet.show(
//             context: context,
//             pageListBuilder: (bottomSheetContext) => [
//               SliverWoltModalSheetPage(
//                 mainContentSliversBuilder: (context) => [
//                   SliverList.builder(
//                     itemBuilder: (context, index) {
//                       return ListTile(
//                         title: Text('Index is $index'),
//                         onTap: Navigator.of(bottomSheetContext).pop,
//                       );
//                     },
//                   ),
//                 ],
//               )
//             ],
//           );
//         },
//         label: const Text('Trigger Wolt Sheet'),
//       ),
//     );
//   }
// }







// void showCustomBottomSheet() {
//   Get.bottomSheet(
//     Container(
//       // Use 90% of the screen height
//       height: MediaQuery.of(context).size.height * 0.9,
//       width: MediaQuery.of(context).size.width,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Colors.white,
//       ),
//       padding: const EdgeInsets.all(16.0),
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Add your widgets here
//           ],
//         ),
//       ),
//     ),
//     isScrollControlled: true, 
//   );
// }




// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart'; // For formatting the date


// class DatePickerExample extends StatefulWidget {
//   @override
//   _DatePickerExampleState createState() => _DatePickerExampleState();
// }

// class _DatePickerExampleState extends State<DatePickerExample> {
//   DateTime _selectedDate = DateTime.now(); // Current date initially

//   // Function to show the date picker dialog
//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: _selectedDate,
//       firstDate: DateTime(2000), // Define the range
//       lastDate: DateTime(2100),
//     );
//     if (picked != null && picked != _selectedDate)
//       setState(() {
//         _selectedDate = picked;
//       });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Date Picker Example'),
//       ),
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "Transaction Date : ",
//               style: TextStyle(
//                 fontWeight: FontWeight.w500,
//                 fontSize: 14,
//                 color: Color.fromRGBO(186, 186, 186, 1),
//               ),
//             ),
//             Text(
//               DateFormat('dd/MM/yyyy').format(_selectedDate), // Format the date
//               style: TextStyle(
//                 fontWeight: FontWeight.w400,
//                 fontSize: 16,
//                 color: Colors.black,
//               ),
//             ),
//             IconButton(
//               icon: Icon(Icons.edit_calendar, color: Colors.blue),
//               onPressed: () => _selectDate(context), // Open the date picker
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }







// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ExtraChargesScreen(),
//     );
//   }
// }

// class ExtraChargesScreen extends StatefulWidget {
//   @override
//   _ExtraChargesScreenState createState() => _ExtraChargesScreenState();
// }

// class _ExtraChargesScreenState extends State<ExtraChargesScreen>
//     with SingleTickerProviderStateMixin {
//   bool showOptions = false;
//   bool chargesAdded = false;
//   List<Map<String, dynamic>> selectedOptions = [];

//   // Dummy options list
//   final List<Map<String, dynamic>> options = [
//     {"title": "Shuttle Fee", "amount": 50000},
//     {"title": "Uniform Fee", "amount": 50000},
//     {"title": "Admission Fee", "amount": 50000},
//     {"title": "Kit Fee", "amount": 50000},
//     {"title": "Kit Fee", "amount": 50000},
//   ];

//   // Function to toggle the visibility of options
//   void _toggleOptions() {
//     setState(() {
//       showOptions = !showOptions;
//     });
//   }

//   // Function to handle option selection
//   void _toggleSelection(Map<String, dynamic> option) {
//     setState(() {
//       if (selectedOptions.contains(option)) {
//         selectedOptions.remove(option);
//       } else {
//         selectedOptions.add(option);
//       }
//     });
//   }

//   // Function to handle "Done" button press
//   void _onDone() {
//     setState(() {
//       chargesAdded = true;
//       showOptions = false;
//     });
//   }

//   // Calculate total amount
//   int _calculateTotalAmount() {
//   return selectedOptions.fold(0, (sum, option) => sum + (option['amount'] as int));
// }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Add Extra Charges'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           // Container that behaves differently based on the state of the expansion
//           Container(
//             width: MediaQuery.of(context).size.width * 0.9,
//             padding: EdgeInsets.symmetric(horizontal: 20),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15),
//               border: Border.all(color: Colors.grey),
//               color: Colors.white,
//             ),
//             child: Column(
//               children: [
//                 // Main row (fixed height section)
//                 Container(
//                   height: 60, // Fixed height for the main section
//                   child: Row(
//                     children: [
//                       Icon(Icons.grid_view_outlined,
//                           color: Colors.black, size: 24),
//                       SizedBox(width: 10),
//                       Text(
//                         chargesAdded ? "Charges Added" : "Add Extra Charges",
//                         style: TextStyle(
//                             fontSize: 18, fontWeight: FontWeight.bold),
//                       ),
//                       Spacer(),
//                       GestureDetector(
//                         onTap: _toggleOptions,
//                         child: Icon(
//                           showOptions ? Icons.close : Icons.add,
//                           color: Colors.blue,
//                           size: 24,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 // Animated container that opens downward
//                 AnimatedSize(
//                   duration: Duration(milliseconds: 300),
//                   curve: Curves.easeInOut,
//                   child: showOptions
//                       ? Container(
//                           decoration: const BoxDecoration(
//                             // Only round bottom corners when expanded
//                             borderRadius: BorderRadius.only(
//                               bottomLeft: Radius.circular(15),
//                               bottomRight: Radius.circular(15),
//                             ),
//                           ),
//                           child: Column(
//                             children: [
//                               // List of options
//                               ...options.map((option) {
//                                 return ListTile(
//                                   leading: GestureDetector(
//                                     onTap: () {
//                                       _toggleSelection(option);
//                                     },
//                                     child: Icon(
//                                       selectedOptions.contains(option)
//                                           ? Icons.check_circle
//                                           : Icons.radio_button_unchecked,
//                                       color: selectedOptions.contains(option)
//                                           ? Colors.blue
//                                           : Colors.grey,
//                                     ),
//                                   ),
//                                   title: Text(
//                                     option['title'],
//                                     style: const TextStyle(
//                                         fontWeight: FontWeight.w500),
//                                   ),
//                                   trailing: Text(
//                                     '₹ ${option['amount']}',
//                                     style: const  TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.blue),
//                                   ),
//                                 );
//                               }).toList(),

//                               // Done button
//                               Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: ElevatedButton(
//                                   onPressed: _onDone,
//                                   child: Text("Done"),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         )
//                       : SizedBox.shrink(), // When closed, no space is occupied.
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 20), // Add some space between the container and the text
//           // Display total amount with GST
//           Text(
//             chargesAdded
//                 ? 'Total Amount: ₹ ${_calculateTotalAmount()} + 525 (GST)'
//                 : '',
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';  // For date formatting



// class DateRangePickerExample extends StatefulWidget {
//   @override
//   _DateRangePickerExampleState createState() => _DateRangePickerExampleState();
// }

// class _DateRangePickerExampleState extends State<DateRangePickerExample> {
//   DateTimeRange? selectedDateRange;

//   // Function to open date range picker
//   Future<void> _selectDateRange(BuildContext context) async {
//     final DateTimeRange? picked = await showDateRangePicker(
//       context: context,
//       firstDate: DateTime(2020),   // Start date for the picker
//       lastDate: DateTime(2030),    // End date for the picker
//     );

//     if (picked != null) {
//       print("Picked Start Date: ${picked.start}");
//       print("Picked End Date: ${picked.end}");
//       setState(() {
//         selectedDateRange = picked;   // Updating selected date range
//         print("State Updated with Start: ${selectedDateRange!.start} End: ${selectedDateRange!.end}");
//       });
//     } else {
//       print("No date range selected");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Date Range Picker Example')),
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Display the selected date range or a default message
//             Text(
//               selectedDateRange == null
//                   ? 'Select Date Range'   // Default message when no date is picked
//                   : '${DateFormat('dd/MM/yy').format(selectedDateRange!.start)} - ' +
//                     '${DateFormat('dd/MM/yy').format(selectedDateRange!.end)}',  // Display the picked date range
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(width: 10),
//             // Icon button to open the date range picker
//             IconButton(
//               icon: Icon(Icons.edit_calendar, color: Colors.blue),
//               onPressed: () {
//                 print("Icon Button Pressed - Opening Date Picker");
//                 _selectDateRange(context);  // Open the date picker on press
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




// // Icon button to open the date range picker
// IconButton(
//   icon: Icon(Icons.edit_calendar, color: Colors.blue),
//   onPressed: () async {
//     print("Icon Button Pressed - Opening Date Picker");
    
//     // Open the date picker and get selected date range
//     final DateTimeRange? picked = await _selectDateRange(context);

//     // Ensure the state updates after selection
//     if (picked != null) {
//       setState(() {
//         selectedDateRange = picked;  // Updating the date range immediately
//         print("State Updated with Start: ${selectedDateRange!.start} End: ${selectedDateRange!.end}");
//       });
//     }
//   },
// ),

// // Function to open date range picker
// Future<DateTimeRange?> _selectDateRange(BuildContext context) async {
//   final DateTimeRange? picked = await showDateRangePicker(
//     context: context,
//     firstDate: DateTime(2020), // Start date for the picker
//     lastDate: DateTime(2030),  // End date for the picker
//   );

//   if (picked != null) {
//     print("Picked Start Date: ${picked.start}");
//     print("Picked End Date: ${picked.end}");
//     return picked; // Return the selected date range
//   } else {
//     print("No date range selected");
//     return null;
//   }
// }




// void _showBottomSheet(BuildContext context) {
//   showModalBottomSheet(
//     context: context,
//     builder: (BuildContext context) {
//       return StatefulBuilder(
//         builder: (BuildContext context, StateSetter setState) {
//           return Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               ListTile(
//                 title: Text(
//                   selectedDateRange == null
//                       ? 'Select Date Range'
//                       : '${DateFormat('dd/MM/yy').format(selectedDateRange!.start)} - '
//                         '${DateFormat('dd/MM/yy').format(selectedDateRange!.end)}',
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 trailing: IconButton(
//                   icon: Icon(Icons.edit_calendar, color: Colors.blue),
//                   onPressed: () async {
//                     final DateTimeRange? picked = await _selectDateRange(context);
//                     if (picked != null) {
//                       setState(() {
//                         selectedDateRange = picked;
//                       });
//                     }
//                   },
//                 ),
//               ),
//             ],
//           );
//         },
//       );
//     },
//   );
// }

// Future<DateTimeRange?> _selectDateRange(BuildContext context) async {
//   final DateTimeRange? picked = await showDateRangePicker(
//     context: context,
//     firstDate: DateTime(2020),
//     lastDate: DateTime(2030),
//   );

//   return picked;
// }
// \end{code}





// import 'package:flutter/material.dart';

// class SelectableContainerExample extends StatefulWidget {
//   @override
//   _SelectableContainerExampleState createState() => _SelectableContainerExampleState();
// }

// class _SelectableContainerExampleState extends State<SelectableContainerExample> {
//   int selectedContainerIndex = -1; // Variable to track the selected container

//   @override
//   Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.only(top: 20),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //     children: [
    //       // Cash Container
    //       GestureDetector(
    //         onTap: () {
    //           setState(() {
    //             selectedContainerIndex = 0; // Update the index for Cash
    //           });
    //         },
    //         child: Container(
    //           height: 40,
    //           width: 109,
    //           decoration: BoxDecoration(
    //             color: selectedContainerIndex == 0 // Change color if selected
    //                 ? Color.fromRGBO(13, 149, 211, 1) // Selected color
    //                 : Color.fromRGBO(248, 247, 247, 1), // Default color
    //             borderRadius: BorderRadius.circular(61),
    //           ),
    //           child: Row(
    //             children: [
    //               SizedBox(width: 20),
    //               Container(
    //                 height: 19,
    //                 width: 19,
    //                 decoration: BoxDecoration(
    //                   shape: BoxShape.circle,
    //                   border: Border.all(
    //                     width: 2,
    //                     color: Color.fromRGBO(9, 96, 186, 1),
    //                   ),
    //                 ),
    //                 child: Center(
    //                   child: Icon(
    //                     Icons.currency_rupee,
    //                     color: Color.fromRGBO(9, 96, 186, 1),
    //                     size: 15,
    //                   ),
    //                 ),
    //               ),
    //               SizedBox(width: 10),
    //               Text(
    //                 "Cash",
    //                 style: TextStyle(
    //                   fontSize: 15,
    //                   fontWeight: FontWeight.w500,
    //                   color: Color.fromRGBO(0, 0, 0, 1),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //       // UPI Container
    //       GestureDetector(
    //         onTap: () {
    //           setState(() {
    //             selectedContainerIndex = 1; // Update the index for UPI
    //           });
    //         },
    //         child: Container(
    //           height: 40,
    //           width: 109,
    //           decoration: BoxDecoration(
    //             color: selectedContainerIndex == 1 // Change color if selected
    //                 ? Color.fromRGBO(13, 149, 211, 1) // Selected color
    //                 : Color.fromRGBO(248, 247, 247, 1), // Default color
    //             borderRadius: BorderRadius.circular(61),
    //           ),
    //           child: Row(
    //             children: [
    //               SizedBox(width: 27),
    //               Center(
    //                 child: Icon(
    //                   Icons.account_balance,
    //                   color: Color.fromRGBO(9, 96, 186, 1),
    //                   size: 17,
    //                 ),
    //               ),
    //               SizedBox(width: 10),
    //               Text(
    //                 "UPI",
    //                 style: TextStyle(
    //                   fontSize: 15,
    //                   fontWeight: FontWeight.w500,
    //                   color: Color.fromRGBO(0, 0, 0, 1),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //       // Others Container
    //       GestureDetector(
    //         onTap: () {
    //           setState(() {
    //             selectedContainerIndex = 2; // Update the index for Others
    //           });
    //         },
    //         child: Container(
    //           height: 40,
    //           width: 119,
    //           decoration: BoxDecoration(
    //             color: selectedContainerIndex == 2 // Change color if selected
    //                 ? Color.fromRGBO(13, 149, 211, 1) // Selected color
    //                 : Color.fromRGBO(248, 247, 247, 1), // Default color
    //             borderRadius: BorderRadius.circular(61),
    //           ),
    //           child: Row(
    //             children: [
    //               SizedBox(width: 22),
    //               Center(
    //                 child: Icon(
    //                   Icons.account_balance_wallet_outlined,
    //                   color: Color.fromRGBO(9, 96, 186, 1),
    //                   size: 17,
    //                 ),
    //               ),
    //               SizedBox(width: 10),
    //               Text(
    //                 "Others",
    //                 style: TextStyle(
    //                   fontSize: 15,
    //                   fontWeight: FontWeight.w500,
    //                   color: Color.fromRGBO(0, 0, 0, 1),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
//   }
// }
// import 'package:flutter/material.dart';

// class SelectableContainerExample extends StatefulWidget {
//   @override
//   _SelectableContainerExampleState createState() => _SelectableContainerExampleState();
// }

// class _SelectableContainerExampleState extends State<SelectableContainerExample> {
//   int selectedContainerIndex = -1; // Variable to track the selected container

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 20),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           // Cash Container
//           GestureDetector(
//             onTap: () {
//               setState(() {
//                 selectedContainerIndex = 0; // Update the index for Cash
//               });
//             },
//             child: Container(
//               height: 40,
//               width: 109,
//               decoration: BoxDecoration(
//                 color: selectedContainerIndex == 0 // Change color if selected
//                     ? Color.fromRGBO(13, 149, 211, 1) // Selected color
//                     : Color.fromRGBO(248, 247, 247, 1), // Default color
//                 borderRadius: BorderRadius.circular(61),
//               ),
//               child: Row(
//                 children: [
//                   SizedBox(width: 20),
//                   Container(
//                     height: 19,
//                     width: 19,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                         width: 2,
//                         color: Color.fromRGBO(9, 96, 186, 1),
//                       ),
//                     ),
//                     child: Center(
//                       child: Icon(
//                         Icons.currency_rupee,
//                         color: Color.fromRGBO(9, 96, 186, 1),
//                         size: 15,
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Text(
//                     "Cash",
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w500,
//                       color: Color.fromRGBO(0, 0, 0, 1),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // UPI Container
//           GestureDetector(
//             onTap: () {
//               setState(() {
//                 selectedContainerIndex = 1; // Update the index for UPI
//               });
//             },
//             child: Container(
//               height: 40,
//               width: 109,
//               decoration: BoxDecoration(
//                 color: selectedContainerIndex == 1 // Change color if selected
//                     ? Color.fromRGBO(13, 149, 211, 1) // Selected color
//                     : Color.fromRGBO(248, 247, 247, 1), // Default color
//                 borderRadius: BorderRadius.circular(61),
//               ),
//               child: Row(
//                 children: [
//                   SizedBox(width: 27),
//                   Center(
//                     child: Icon(
//                       Icons.account_balance,
//                       color: Color.fromRGBO(9, 96, 186, 1),
//                       size: 17,
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Text(
//                     "UPI",
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w500,
//                       color: Color.fromRGBO(0, 0, 0, 1),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // Others Container
//           GestureDetector(
//             onTap: () {
//               setState(() {
//                 selectedContainerIndex = 2; // Update the index for Others
//               });
//             },
//             child: Container(
//               height: 40,
//               width: 119,
//               decoration: BoxDecoration(
//                 color: selectedContainerIndex == 2 // Change color if selected
//                     ? Color.fromRGBO(13, 149, 211, 1) // Selected color
//                     : Color.fromRGBO(248, 247, 247, 1), // Default color
//                 borderRadius: BorderRadius.circular(61),
//               ),
//               child: Row(
//                 children: [
//                   SizedBox(width: 22),
//                   Center(
//                     child: Icon(
//                       Icons.account_balance_wallet_outlined,
//                       color: Color.fromRGBO(9, 96, 186, 1),
//                       size: 17,
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Text(
//                     "Others",
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w500,
//                       color: Color.fromRGBO(0, 0, 0, 1),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';

// class SelectableContainerExample extends StatefulWidget {
//   @override
//   _SelectableContainerExampleState createState() =>
//       _SelectableContainerExampleState();
// }

// class _SelectableContainerExampleState
//     extends State<SelectableContainerExample> {
//   int selectedContainerIndex = -1; // Variable to track the selected container

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 20),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           // Cash Container
//           GestureDetector(
//             onTap: () {
//               setState(() {
//                 selectedContainerIndex = 0; // Update the index for Cash
//               });
//             },
//             child: AnimatedContainer(
//               duration: Duration(milliseconds: 150), // Duration for the animation
//               height: 40,
//               width: 109,
//               decoration: BoxDecoration(
//                 color: selectedContainerIndex == 0
//                     ? Color.fromRGBO(13, 149, 211, 1) // Selected color
//                     : Color.fromRGBO(248, 247, 247, 1), // Default color
//                 borderRadius: BorderRadius.circular(61),
//                 boxShadow: selectedContainerIndex == 0 // Shadow effect for selected
//                     ? [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)]
//                     : [],
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(
//                     Icons.currency_rupee,
//                     color: Color.fromRGBO(9, 96, 186, 1),
//                     size: 15,
//                   ),
//                   SizedBox(width: 10),
//                   Text(
//                     "Cash",
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w500,
//                       color: Color.fromRGBO(0, 0, 0, 1),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // UPI Container
//           GestureDetector(
//             onTap: () {
//               setState(() {
//                 selectedContainerIndex = 1; // Update the index for UPI
//               });
//             },
//             child: AnimatedContainer(
//               duration: Duration(milliseconds: 150), // Duration for the animation
//               height: 40,
//               width: 109,
//               decoration: BoxDecoration(
//                 color: selectedContainerIndex == 1
//                     ? Color.fromRGBO(13, 149, 211, 1) // Selected color
//                     : Color.fromRGBO(248, 247, 247, 1), // Default color
//                 borderRadius: BorderRadius.circular(61),
//                 boxShadow: selectedContainerIndex == 1 // Shadow effect for selected
//                     ? [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)]
//                     : [],
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(
//                     Icons.account_balance,
//                     color: Color.fromRGBO(9, 96, 186, 1),
//                     size: 17,
//                   ),
//                   SizedBox(width: 10),
//                   Text(
//                     "UPI",
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w500,
//                       color: Color.fromRGBO(0, 0, 0, 1),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // Others Container
//           GestureDetector(
//             onTap: () {
//               setState(() {
//                 selectedContainerIndex = 2; // Update the index for Others
//               });
//             },
//             child: AnimatedContainer(
//               duration: Duration(milliseconds: 150), // Duration for the animation
//               height: 40,
//               width: 119,
//               decoration: BoxDecoration(
//                 color: selectedContainerIndex == 2
//                     ? Color.fromRGBO(13, 149, 211, 1) // Selected color
//                     : Color.fromRGBO(248, 247, 247, 1), // Default color
//                 borderRadius: BorderRadius.circular(61),
//                 boxShadow: selectedContainerIndex == 2 // Shadow effect for selected
//                     ? [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)]
//                     : [],
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(
//                     Icons.account_balance_wallet_outlined,
//                     color: Color.fromRGBO(9, 96, 186, 1),
//                     size: 17,
//                   ),
//                   SizedBox(width: 10),
//                   Text(
//                     "Others",
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w500,
//                       color: Color.fromRGBO(0, 0, 0, 1),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


















int selectedContainerIndex = 0; // Define the variable

// Padding(
//   padding: const EdgeInsets.only(top: 20),
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: [
//       // Cash Container
//       GestureDetector(
//         onTap: () {
//           setModalState(() {
//             selectedContainerIndex = 0; // Update the index for Cash
//           });
//         },
//         child: AnimatedContainer(
//           duration: Duration(milliseconds: 150), // Duration for the animation
//           height: 40,
//           width: 109,
//           decoration: BoxDecoration(
//             color: selectedContainerIndex == 0
//                 ? Color.fromRGBO(13, 149, 211, 1) // Selected color
//                 : Color.fromRGBO(248, 247, 247, 1), // Default color
//             borderRadius: BorderRadius.circular(61),
//             boxShadow: selectedContainerIndex == 0 // Shadow effect for selected
//                 ? [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)]
//                 : [],
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const [
//               Icon(
//                 Icons.currency_rupee,
//                 color: Color.fromRGBO(9, 96, 186, 1),
//                 size: 15,
//               ),
//               SizedBox(width: 10),
//               Text(
//                 "Cash",
//                 style: TextStyle(
//                   fontSize: 15,
//                   fontWeight: FontWeight.w500,
//                   color: Color.fromRGBO(0, 0, 0, 1),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       // UPI Container
//       GestureDetector(
//         onTap: () {
//           setModalState(() {
//             selectedContainerIndex = 1; // Update the index for UPI
//           });
//         },
//         child: AnimatedContainer(
//           duration: Duration(milliseconds: 150), // Duration for the animation
//           height: 40,
//           width: 109,
//           decoration: BoxDecoration(
//             color: selectedContainerIndex == 1
//                 ? Color.fromRGBO(13, 149, 211, 1) // Selected color
//                 : Color.fromRGBO(248, 247, 247, 1), // Default color
//             borderRadius: BorderRadius.circular(61),
//             boxShadow: selectedContainerIndex == 1 // Shadow effect for selected
//                 ? [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)]
//                 : [],
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 Icons.account_balance,
//                 color: Color.fromRGBO(9, 96, 186, 1),
//                 size: 17,
//               ),
//               SizedBox(width: 10),
//               Text(
//                 "UPI",
//                 style: TextStyle(
//                   fontSize: 15,
//                   fontWeight: FontWeight.w500,
//                   color: Color.fromRGBO(0, 0, 0, 1),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       // Others Container
//       GestureDetector(
//         onTap: () {
//           setModalState(() {
//             selectedContainerIndex = 2; // Update the index for Others
//           });
//         },
//         child: AnimatedContainer(
//           duration: Duration(milliseconds: 150), // Duration for the animation
//           height: 40,
//           width: 119,
//           decoration: BoxDecoration(
//             color: selectedContainerIndex == 2
//                 ? Color.fromRGBO(13, 149, 211, 1) // Selected color
//                 : Color.fromRGBO(248, 247, 247, 1), // Default color
//             borderRadius: BorderRadius.circular(61),
//             boxShadow: selectedContainerIndex == 2 // Shadow effect for selected
//                 ? [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)]
//                 : [],
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 Icons.account_balance_wallet_outlined,
//                 color: Color.fromRGBO(9, 96, 186, 1),
//                 size: 17,
//               ),
//               SizedBox(width: 10),
//               Text(
//                 "Others",
//                 style: TextStyle(
//                   fontSize: 15,
//                   fontWeight: FontWeight.w500,
//                   color: Color.fromRGBO(0, 0, 0, 1),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ],
//   ),
// )
