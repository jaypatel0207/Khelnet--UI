// import 'package:flutter/material.dart';

// class AddStudentScreen extends StatefulWidget {
//   @override
//   _AddStudentScreenState createState() => _AddStudentScreenState();
// }

// class _AddStudentScreenState extends State<AddStudentScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final _studentNameController = TextEditingController();
//   final _contactNumberController = TextEditingController();
//   String _selectedCenter = 'Center 1';
//   String _selectedBatch = 'Batch 1';
//   bool _additionalInfoExpanded = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         title: Text('Add Students'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Student Profile Picture
//               Center(
//                 child: Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     CircleAvatar(
//                       radius: 50,
//                       backgroundColor: Colors.lightBlue,
//                       child: Icon(
//                         Icons.person,
//                         size: 40,
//                         color: Colors.white,
//                       ),
//                     ),
//                     Positioned(
//                       right: 0,
//                       bottom: 0,
//                       child: IconButton(
//                         icon: Icon(Icons.edit),
//                         onPressed: () {},
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 20),
//               // Basic Info Section
//               Text(
//                 'Basic Info',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18,
//                 ),
//               ),
//               SizedBox(height: 10),
//               TextFormField(
//                 controller: _studentNameController,
//                 decoration: InputDecoration(
//                   labelText: 'Student Name',
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter student name';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 10),
//               TextFormField(
//                 controller: _contactNumberController,
//                 decoration: InputDecoration(
//                   labelText: 'Contact Number',
//                 ),
//                 keyboardType: TextInputType.phone,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter contact number';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 10),
//               DropdownButtonFormField<String>(
//                 value: _selectedCenter,
//                 decoration: InputDecoration(
//                   labelText: 'Assign Center',
//                 ),
//                 items: ['Center 1', 'Center 2', 'Center 3']
//                     .map((center) => DropdownMenuItem<String>(
//                   value: center,
//                   child: Text(center),
//                 ))
//                     .toList(),
//                 onChanged: (value) {
//                   setState(() {
//                     _selectedCenter = value!;
//                   });
//                 },
//               ),
//               SizedBox(height: 10),
//               DropdownButtonFormField<String>(
//                 value: _selectedBatch,
//                 decoration: InputDecoration(
//                   labelText: 'Assign Batch',
//                 ),
//                 items: ['Batch 1', 'Batch 2', 'Batch 3']
//                     .map((batch) => DropdownMenuItem<String>(
//                   value: batch,
//                   child: Text(batch),
//                 ))
//                     .toList(),
//                 onChanged: (value) {
//                   setState(() {
//                     _selectedBatch = value!;
//                   });
//                 },
//               ),
//               SizedBox(height: 10),
//               ExpansionTile(
//                 title: Text('Additional Info'),
//                 initiallyExpanded: _additionalInfoExpanded,
//                 onExpansionChanged: (value) {
//                   setState(() {
//                     _additionalInfoExpanded = value;
//                   });
//                 },
//                 children: [
//                   // Add additional information fields here
//                   TextFormField(
//                     decoration: InputDecoration(
//                       labelText: 'Additional Information',
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20),
//               // Manage Fees Section
//               ExpansionTile(
//                 title: Text('Manage Fees'),
//                 initiallyExpanded: false,
//                 children: [
//                   // Add fee management widgets here
//                   // Example:
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: Text('Add Fee'),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 30),
//               // Add Student Button
//               ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     // Process form data (e.g., save to database)
//                     // ...
//                   }
//                 },
//                 child: Text('Add Student'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import "package:flutter/material.dart";

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _centerController = TextEditingController();
  String selectedCenter = ""; // Track the selected center

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setModalState) {
            return Container(
              height: 300,
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Assign Center',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Expanded(
                    child: ListView(
                      children: [
                        _buildListTile('Center 1', setModalState),
                        _buildListTile('Center 2', setModalState),
                        _buildListTile('Center 3', setModalState),
                        _buildListTile('Center 4', setModalState),
                        _buildListTile('Center 5', setModalState),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _centerController.text = selectedCenter;
                      });
                      Navigator.pop(context); // Close the bottom sheet
                    },
                    child: Text('Done'),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildListTile(String center, StateSetter setModalState) {
    return ListTile(
      title: Text(center),
      tileColor: selectedCenter == center ? Colors.blue.withOpacity(0.2) : null,
      onTap: () {
        setModalState(() {
          selectedCenter = center; // Update selected center in the bottom sheet
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _centerController,
              decoration: InputDecoration(
                labelText: 'Selected Center',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showBottomSheet(context);
              },
              child: Text('Open Bottom Sheet'),
            ),
          ],
        ),
      ),
    );
  }
}