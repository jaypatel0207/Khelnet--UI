

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';
import 'package:khelnet/Custome%20Widget/Gradient.dart';
import 'package:khelnet/Pages/Fees/Invoice.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class DropdownTextFieldExample extends StatefulWidget {
  @override
  _DropdownTextFieldExampleState createState() =>
      _DropdownTextFieldExampleState();
}

class _DropdownTextFieldExampleState extends State<DropdownTextFieldExample> {
  String? selectedValue; // For storing the selected dropdown value
  final TextEditingController _controller = TextEditingController(); // Controller for TextField

  // Options for dropdown
  final List<String> options = ['2024', '2025'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dropdown in TextField')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 22, right: 22, top: 10),
          child: Column(
            children: [
              TextField(
                controller: _controller, // Set the controller here
                style: const TextStyle(
                    fontSize: 15, fontWeight: FontWeight.w500),
                readOnly: true, // Make it read-only to prevent manual input
                decoration: InputDecoration(
                  hintText: "Year",
                  hintStyle: const  TextStyle(
                      color: Color.fromRGBO(186, 186, 186, 1)),
                  prefixIcon: GestureDetector(
                    onTap: () async {
                      // Show dropdown when prefix icon is tapped
                      final RenderBox renderBox =
                          context.findRenderObject() as RenderBox;
                      final overlay =
                          Overlay.of(context).context.findRenderObject() as RenderBox;

                      // Show dropdown menu
                      final result = await showMenu(
                        context: context,
                        position: RelativeRect.fromRect(
                          Rect.fromPoints(
                            renderBox.localToGlobal(Offset.zero, ancestor: overlay),
                            renderBox.localToGlobal(
                                renderBox.size.bottomRight(Offset.zero),
                                ancestor: overlay),
                          ),
                          Offset.zero & overlay.size,
                        ),
                        items: options
                            .map(
                              (value) => PopupMenuItem<String>(
                                value: value,
                                child: Text(value),
                              ),
                            )
                            .toList(),
                      );

                      // Update selected value and text field if an option is selected
                      if (result != null) {
                        setState(() {
                          selectedValue = result;
                          _controller.text = selectedValue!;
                        });
                      }
                    },
                    child:const  Icon(Icons.calendar_today, color: Colors.blue),
                  ),
                  suffixIcon:const  Icon(Icons.keyboard_arrow_down, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(26),
                    borderSide:const  BorderSide(
                      color: Color.fromRGBO(241, 241, 241, 1),
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(26),
                    borderSide:const  BorderSide(
                      color: Color.fromRGBO(241, 241, 241, 1),
                      width: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DropdownTextFieldExample(),
  ));
}
