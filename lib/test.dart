// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: PaymentStatusScreen(),
//     );
//   }
// }

// class PaymentStatusScreen extends StatefulWidget {
//   @override
//   _PaymentStatusScreenState createState() => _PaymentStatusScreenState();
// }

// class _PaymentStatusScreenState extends State<PaymentStatusScreen> {
//   TextEditingController _controller = TextEditingController();
//   String _selectedPaymentStatus = 'Unpaid'; // Initial default value
//   Color _statusTextColor = Colors.red; // Initial color for Unpaid

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Payment Status'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: _controller,
//               readOnly: true,  // Makes it non-editable
//               style: TextStyle(
//                 color: _statusTextColor, // Dynamic text color
//               ),
//               decoration: InputDecoration(
//                 labelText: 'Payment Status',
//                 suffixIcon: IconButton(
//                   icon: Icon(Icons.arrow_drop_down),
//                   onPressed: () {
//                     _showPaymentStatusBottomSheet(context);
//                   },
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void _showPaymentStatusBottomSheet(BuildContext context) {
//     String tempSelectedStatus = _selectedPaymentStatus; // Temporarily store the current status for the bottom sheet

//     showModalBottomSheet(
//       context: context,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
//       ),
//       builder: (context) {
//         return StatefulBuilder(
//           builder: (BuildContext context, StateSetter setState) {
//             return Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   Text(
//                     'Payment Status',
//                     style: TextStyle(
//                       fontSize: 18.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 16.0),
//                   RadioListTile<String>(
//                     title: Text('Unpaid'),
//                     value: 'Unpaid',
//                     groupValue: tempSelectedStatus,
//                     onChanged: (value) {
//                       setState(() {
//                         tempSelectedStatus = value!;
//                         _updateStatus(tempSelectedStatus);
//                       });
//                     },
//                     activeColor: Colors.red,
//                   ),
//                   RadioListTile<String>(
//                     title: Text('Paid'),
//                     value: 'Paid',
//                     groupValue: tempSelectedStatus,
//                     onChanged: (value) {
//                       setState(() {
//                         tempSelectedStatus = value!;
//                         _updateStatus(tempSelectedStatus);
//                       });
//                     },
//                     activeColor: Colors.green,
//                   ),
//                   RadioListTile<String>(
//                     title: Text('Partially Paid'),
//                     value: 'Partially Paid',
//                     groupValue: tempSelectedStatus,
//                     onChanged: (value) {
//                       setState(() {
//                         tempSelectedStatus = value!;
//                         _updateStatus(tempSelectedStatus);
//                       });
//                     },
//                     activeColor: Colors.purple,
//                   ),
//                   SizedBox(height: 16.0),
//                   ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.blue, // background (button) color
//                       padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                     ),
//                     onPressed: () {
//                       Navigator.pop(context); // Close the bottom sheet
//                     },
//                     child: Text('Okay', style: TextStyle(color: Colors.white)),
//                   ),
//                   SizedBox(height: 10.0),
//                 ],
//               ),
//             );
//           },
//         );
//       },
//     );
//   }

//   // Method to update status and color instantly
//   void _updateStatus(String status) {
//     setState(() {
//       _selectedPaymentStatus = status;
//       _controller.text = status;

//       // Change text color based on the selected option
//       if (status == 'Unpaid') {
//         _statusTextColor = Colors.red;
//       } else if (status == 'Paid') {
//         _statusTextColor = Colors.green;
//       } else if (status == 'Partially Paid') {
//         _statusTextColor = Colors.purple;
//       }
//     });
//   }
// }



// import 'package:flutter/material.dart';

// class CustomBottomNavBar extends StatefulWidget {
//   const CustomBottomNavBar({Key? key}) : super(key: key);

//   @override
//   _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
// }

// class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
//   int _selectedIndex = 0;

//   final List<BottomNavigationBarItem> _items = [
//     const BottomNavigationBarItem(
//       icon: Icon(Icons.sports_basketball),
//       label: '',
//     ),
//     const BottomNavigationBarItem(
//       icon: Icon(Icons.credit_card),
//       label: '',
//     ),
//     const BottomNavigationBarItem(
//       icon: Icon(Icons.favorite),
//       label: '',
//     ),
//     const BottomNavigationBarItem(
//       icon: Icon(Icons.notifications),
//       label: '',
//     ),
//     const BottomNavigationBarItem(
//       icon: Icon(Icons.person),
//       label: '',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.blue,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             blurRadius: 8,
//           ),
//         ],
//       ),
//       child: BottomNavigationBar(
//         items: _items,
//         currentIndex: _selectedIndex,
//         onTap: (index) {
//           setState(() {
//             _selectedIndex = index;
//           });
//         },
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: Colors.transparent,
//         selectedItemColor: Colors.white,
//         unselectedItemColor: Colors.grey[400],
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         elevation: 0,
//       ),
//     );
//   }
// }

// // Usage in your main app
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(child: Text('Your app content here')),
//         bottomNavigationBar: CustomBottomNavBar(),
//       ),
//     );
//   }
// }














// import 'package:flutter/material.dart';

// class SubmitRequestButton extends StatefulWidget {
//   const SubmitRequestButton({Key? key}) : super(key: key);

//   @override
//   _SubmitRequestButtonState createState() => _SubmitRequestButtonState();
// }

// class _SubmitRequestButtonState extends State<SubmitRequestButton> {
//   bool _isSubmitted = false;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _isSubmitted = true;
//         });
//       },
//       child: Container(
//         height: 20,
//         width: 358,
//         decoration: BoxDecoration(
//           gradient: _isSubmitted
//               ? null
//               : const LinearGradient(
//                   begin: Alignment.centerLeft,
//                   end: Alignment.centerRight,
//                   colors: [
//                     Color(0xFF0D95D3),
//                     Color(0xFF0960BA),
//                   ],
//                 ),
//           color: _isSubmitted ? Colors.white : null,
//           borderRadius: BorderRadius.circular(84),
//           border: _isSubmitted
//               ? Border.all(color: const Color(0xFF0D95D3), width: 2)
//               : null,
//         ),
//         child: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               if (_isSubmitted)
//                 const Padding(
//                   padding: EdgeInsets.only(right: 8.0),
//                   child: Icon(
//                     Icons.check,
//                     color: Color(0xFF0D95D3),
//                     size: 24,
//                   ),
//                 ),
//               Text(
//                 _isSubmitted ? "Request Submitted" : "Submit Request",
//                 style: TextStyle(
//                   fontWeight: FontWeight.w700,
//                   fontSize: 19,
//                   color: _isSubmitted
//                       ? const Color(0xFF0D95D3)
//                       : const Color(0xFFFBFBFB),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }















import 'dart:convert'; 

import 'package:flutter/material.dart'; 
import 'package:dio/dio.dart'; 



class MyHomePage extends StatefulWidget { 
const MyHomePage({Key? key}) : super(key: key); 

@override 
State<MyHomePage> createState() => _MyHomePageState(); 
} 

class _MyHomePageState extends State<MyHomePage> { 
var jsonList; 
@override 
void initState() { 
	getData(); 
} 

void getData() async { 
	try { 
	var response = await Dio() 
		.get('https://api.escuelajs.co/api/v1/products'); 
	if (response.statusCode == 200) { 
		setState(() { 
		jsonList = response.data as List; 
		}); 
	} else { 
		print(response.statusCode); 
	} 
	} catch (e) { 
	print(e); 
	} 
} 

@override 
Widget build(BuildContext context) { 
	return Scaffold( 
	appBar: AppBar( 
		title: Text( 
		'GeeksForGeeks', 
		style: TextStyle(color: Colors.white), 
    
		), 
    backgroundColor: Colors.blue,
		centerTitle: true, 
	), 
	body:ListView.builder(
  itemCount: jsonList?.length ?? 0,
  itemBuilder: (BuildContext context, int index) {
    return Card(
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(80),
          child: Image.network(
            jsonList[index]['image'] ?? '',
            fit: BoxFit.fill,
            width: 50,
            height: 50,
            errorBuilder: (context, error, stackTrace) {
              return Icon(Icons.error);
            },
          ),
        ),
        title: Text(jsonList[index]['id']?.toString() ?? ''),
        subtitle: Text(jsonList[index]['creationAt']?.toString() ?? ''),
      ),
    );
  },
)
	); 
} 
}







// import 'package:flutter/material.dart';

// class SubmitRequestWidget extends StatefulWidget {
//   const SubmitRequestWidget({Key? key}) : super(key: key);

//   @override
//   _SubmitRequestWidgetState createState() => _SubmitRequestWidgetState();
// }

// class _SubmitRequestWidgetState extends State<SubmitRequestWidget> {
//   bool _isSubmitted = false;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
//           child: Center(
//             child: Text(
//               _isSubmitted
//                   ? "We will Get in Touch with you soon"
//                   : "Please submit a request to enable the payment gateway feature. Our team will get in touch with you to initiate the process.",
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: _isSubmitted ? 16 : 14,
//                 color: _isSubmitted ? Colors.red : Colors.grey[600],
//                 fontWeight: _isSubmitted ? FontWeight.w500 : FontWeight.w400,
//               ),
//             ),
//           ),
//         ),
//         GestureDetector(
//           onTap: () {
//             setState(() {
//               _isSubmitted = true;
//             });
//           },
//           child: Container(
//             height: 57,
//             width: 358,
//             decoration: BoxDecoration(
//               gradient: _isSubmitted
//                   ? null
//                   : const LinearGradient(
//                       begin: Alignment.centerLeft,
//                       end: Alignment.centerRight,
//                       colors: [
//                         Color(0xFF0D95D3),
//                         Color(0xFF0960BA),
//                       ],
//                     ),
//               color: _isSubmitted ? Colors.white : null,
//               borderRadius: BorderRadius.circular(84),
//               border: _isSubmitted
//                   ? Border.all(color: const Color(0xFF0D95D3), width: 2)
//                   : null,
//             ),
//             child: Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   if (_isSubmitted)
//                     Padding(
//                       padding: const EdgeInsets.only(right: 8.0),
//                       child: Icon(
//                         Icons.check_circle,
//                         color: const Color(0xFF0D95D3),
//                         size: 24,
//                       ),
//                     ),
//                   Text(
//                     _isSubmitted ? "Request Submitted" : "Submit Request",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w700,
//                       fontSize: 19,
//                       color: _isSubmitted
//                           ? const Color(0xFF0D95D3)
//                           : const Color(0xFFFBFBFB),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }










// import 'package:flutter/material.dart';

// class SubmitRequestWidget extends StatefulWidget {
//   const SubmitRequestWidget({Key? key}) : super(key: key);

//   @override
//   _SubmitRequestWidgetState createState() => _SubmitRequestWidgetState();
// }

// class _SubmitRequestWidgetState extends State<SubmitRequestWidget> {
//   bool _isSubmitted = false;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
//           child: _isSubmitted
//               ? Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       width: 24,
//                       height: 24,
//                       decoration: const BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Color(0xFFFFA500), // Orange color
//                       ),
//                       child: const Center(
//                         child: Icon(
//                           Icons.access_time,
//                           color: Colors.white,
//                           size: 16,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(width: 8),
//                     const Flexible(
//                       child: Text(
//                         "We will Get in Touch with you soon",
//                         style: TextStyle(
//                           fontSize: 16,
//                           color: Colors.red,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ),
//                   ],
//                 )
//               : Text(
//                   "Please submit a request to enable the payment gateway feature. Our team will get in touch with you to initiate the process.",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.grey[600],
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//         ),
//         GestureDetector(
//           onTap: () {
//             setState(() {
//               _isSubmitted = true;
//             });
//           },
//           child: Container(
//             height: 57,
//             width: 358,
//             decoration: BoxDecoration(
//               gradient: _isSubmitted
//                   ? null
//                   : const LinearGradient(
//                       begin: Alignment.centerLeft,
//                       end: Alignment.centerRight,
//                       colors: [
//                         Color(0xFF0D95D3),
//                         Color(0xFF0960BA),
//                       ],
//                     ),
//               color: _isSubmitted ? Colors.white : null,
//               borderRadius: BorderRadius.circular(84),
//               border: _isSubmitted
//                   ? Border.all(color: const Color(0xFF0D95D3), width: 2)
//                   : null,
//             ),
//             child: Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   if (_isSubmitted)
//                     const Padding(
//                       padding: EdgeInsets.only(right: 8.0),
//                       child: Icon(
//                         Icons.check_circle,
//                         color: Color(0xFF0D95D3),
//                         size: 24,
//                       ),
//                     ),
//                   Text(
//                     _isSubmitted ? "Request Submitted" : "Submit Request",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w700,
//                       fontSize: 19,
//                       color: _isSubmitted
//                           ? const Color(0xFF0D95D3)
//                           : const Color(0xFFFBFBFB),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }














// import 'package:flutter/material.dart';

// class SubmitRequestWidget extends StatefulWidget {
//   const SubmitRequestWidget({Key? key}) : super(key: key);

//   @override
//   _SubmitRequestWidgetState createState() => _SubmitRequestWidgetState();
// }

// class _SubmitRequestWidgetState extends State<SubmitRequestWidget> {
//   bool _isSubmitted = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           AnimatedSwitcher(
//             duration: const Duration(milliseconds: 300),
//             child: _isSubmitted
//                 ? Row(
//                     key: const ValueKey("submitted"),
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         width: 24,
//                         height: 24,
//                         decoration: const BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Color(0xFFFFA500), // Orange color
//                         ),
//                         child: const Center(
//                           child: Icon(
//                             Icons.access_time,
//                             color: Colors.white,
//                             size: 16,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(width: 8),
//                       const Flexible(
//                         child: Text(
//                           "We will Get in Touch with you soon",
//                           style: TextStyle(
//                             fontSize: 16,
//                             color: Colors.black,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                       ),
//                     ],
//                   )
//                 : Text(
//                     "Please submit a request to enable the payment gateway feature. Our team will get in touch with you to initiate the process.",
//                     key: const ValueKey("not_submitted"),
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 14,
//                       color: Colors.grey[600],
//                       fontWeight: FontWeight.w400,
//                     ),
//                   ),
//           ),
//           const SizedBox(height: 20), // Fixed space between text and button
//           GestureDetector(
//             onTap: () {
//               setState(() {
//                 _isSubmitted = true;
//               });
//             },
//             child: Container(
//               height: 57,
//               width: 358,
//               decoration: BoxDecoration(
//                 gradient: _isSubmitted
//                     ? null
//                     : const LinearGradient(
//                         begin: Alignment.centerLeft,
//                         end: Alignment.centerRight,
//                         colors: [
//                           Color(0xFF0D95D3),
//                           Color(0xFF0960BA),
//                         ],
//                       ),
//                 color: _isSubmitted ? Colors.white : null,
//                 borderRadius: BorderRadius.circular(84),
//                 border: _isSubmitted
//                     ? Border.all(color: const Color(0xFF0D95D3), width: 2)
//                     : null,
//               ),
//               child: Center(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     if (_isSubmitted)
//                       const Padding(
//                         padding: EdgeInsets.only(right: 8.0),
//                         child: Icon(
//                           Icons.check_circle,
//                           color: Color(0xFF0D95D3),
//                           size: 24,
//                         ),
//                       ),
//                     Text(
//                       _isSubmitted ? "Request Submitted" : "Submit Request",
//                       style: TextStyle(
//                         fontWeight: FontWeight.w700,
//                         fontSize: 19,
//                         color: _isSubmitted
//                             ? const Color(0xFF0D95D3)
//                             : const Color(0xFFFBFBFB),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class Paymentlink extends StatefulWidget {
//   const Paymentlink({super.key});

//   @override
//   State<Paymentlink> createState() => _PaymentlinkState();
// }

// class _PaymentlinkState extends State<Paymentlink> {
//   bool _isSubmitted = false;
//   // ... (rest of the state variables remain the same)

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Stack(
//           children: [
//             SingleChildScrollView(
//               child: Column(
//                 children: [
//                   // ... (rest of your existing content)
//                   SizedBox(height: 100.h), // Add extra space at the bottom
//                 ],
//               ),
//             ),
//             Positioned(
//               left: 0,
//               right: 0,
//               bottom: 20, // Adjust this value to move the button up or down
//               child: Center(
//                 child: InkWell(
//                   onTap: () {
//                     setState(() {
//                       _isSubmitted = true;
//                     });
//                   },
//                   child: Container(
//                     height: 57,
//                     width: 358,
//                     decoration: BoxDecoration(
//                       gradient: _isSubmitted
//                           ? null
//                           : const LinearGradient(
//                               begin: Alignment.centerLeft,
//                               end: Alignment.centerRight,
//                               colors: [
//                                 Color(0xFF0D95D3),
//                                 Color(0xFF0960BA),
//                               ],
//                             ),
//                       color: _isSubmitted ? Colors.white : null,
//                       borderRadius: BorderRadius.circular(84),
//                       border: _isSubmitted
//                           ? Border.all(color: const Color(0xFF0D95D3), width: 2)
//                           : null,
//                     ),
//                     child: Center(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           if (_isSubmitted)
//                             const Padding(
//                               padding: EdgeInsets.only(right: 8.0),
//                               child: Icon(
//                                 Icons.check_circle,
//                                 color: Color(0xFF0D95D3),
//                                 size: 24,
//                               ),
//                             ),
//                           Text(
//                             _isSubmitted ? "Request Submitted" : "Submit Request",
//                             style: TextStyle(
//                               fontWeight: FontWeight.w700,
//                               fontSize: 19,
//                               color: _isSubmitted
//                                   ? const Color(0xFF0D95D3)
//                                   : const Color(0xFFFBFBFB),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
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