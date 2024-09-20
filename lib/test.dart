

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
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DropdownExample(),
    );
  }
}

class DropdownExample extends StatefulWidget {
  @override
  _DropdownExampleState createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  String? selectedYear; // Start as null to show the placeholder

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dropdown in Container')),
      body: Center(
        child: Container(
          height: 50,
          width: 145,
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.grey[200], // Background color of the container
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: Colors.grey), // Optional border
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              hint: Text('Year'),  // Placeholder text
              value: selectedYear,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.black, fontSize: 16),
              onChanged: (String? newValue) {
                setState(() {
                  selectedYear = newValue!;
                });
              },
              items: <String>['2024', '2025']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
