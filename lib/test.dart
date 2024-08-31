// import 'package:flutter/material.dart';

// class SwitchButtonWidget extends StatefulWidget {
//   const SwitchButtonWidget({Key? key}) : super(key: key);

//   @override
//   State<SwitchButtonWidget> createState() => _SwitchButtonWidgetState();
// }

// class _SwitchButtonWidgetState extends State<SwitchButtonWidget> {
//   bool _attendance = false;
//   bool _fees = false;
//   bool _expenses = false;
//   bool _skillRating = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Manage Access'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text('Attendance'),
//                 Switch(
//                   value: _attendance,
//                   onChanged: (value) {
//                     setState(() {
//                       _attendance = value;
//                     });
//                   },
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text('Fees'),
//                 Switch(
//                   value: _fees,
//                   onChanged: (value) {
//                     setState(() {
//                       _fees = value;
//                     });
//                   },
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text('Expenses'),
                
//                 Switch(
//                   value: _expenses,
//                   onChanged: (value) {
//                     setState(() {
//                       _expenses = value;
//                     });
//                   },
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text('Skill Rating'),
//                 Switch(
//                   value: _skillRating,
//                   onChanged: (value) {
//                     setState(() {
//                       _skillRating = value;
//                     });
//                   },
//                 ),
//               ],
//             ),
//             const SizedBox(height: 32.0),
//             ElevatedButton(
//               onPressed: () {
//                 // Implement your action when the button is pressed
//                 print('Done button pressed');
//               },
//               child: const Text('Done'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class SwitchButtonWidget extends StatefulWidget {
  const SwitchButtonWidget({Key? key}) : super(key: key);

  @override
  State<SwitchButtonWidget> createState() => _SwitchButtonWidgetState();
}

class _SwitchButtonWidgetState extends State<SwitchButtonWidget> {
  bool _attendance = false;
  bool _fees = false;
  bool _expenses = false;
  bool _skillRating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Access'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Attendance'),
                Switch(
                  value: _attendance,
                  onChanged: (value) {
                    setState(() {
                      _attendance = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Fees'),
                Switch(
                  value: _fees,
                  onChanged: (value) {
                    setState(() {
                      _fees = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Expenses'),
                Switch(
                  value: _expenses,
                  onChanged: (value) {
                    setState(() {
                      _expenses = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Skill Rating'),
                Switch(
                  value: _skillRating,
                  onChanged: (value) {
                    setState(() {
                      _skillRating = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Implement your action when the button is pressed
                print('Done button pressed');
              },
              child: const Text('Done'),
            ),
          ],
        ),
      ),
    );
  }
}