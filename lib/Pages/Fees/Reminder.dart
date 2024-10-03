import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';
import 'package:khelnet/Pages/Fees/PaymentLink.dart';

class Reminder extends StatefulWidget {
  const Reminder({super.key});

  @override
  State<Reminder> createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {
  String? _selectedOption = 'withUPI';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: "Reminder Settings"),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20.h),

                  // Account Details Section
                  const Padding(
                    padding:  EdgeInsets.only(left: 20, top: 15),
                    child: Row(
                      children: [
                        Text(
                          "Account Details",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 22.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 50.h,
                      width: double.infinity, // Change to full width
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color:const  Color.fromRGBO(241, 241, 241, 1)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(26),
                      ),
                      child:const  TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Your UPI ID",
                          hintStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                          border: InputBorder.none,
                          prefixIcon: Padding(
                            padding:  EdgeInsets.only(left: 20, right: 20),
                            child: Icon(
                              Icons.account_balance,
                              color: Colors.black,
                              size: 35,
                            ),
                          ),
                          contentPadding: EdgeInsets.only(top: 13),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 22.h),

                  // Fees Reminder Section
          const         Padding(
                    padding:  EdgeInsets.only(left: 20, top: 15),
                    child: Row(
                      children: [
                        Text(
                          "Fees Reminder",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                          border: Border.all(
                              width: 1,
                              color:const  Color.fromRGBO(241, 241, 241, 1)),
                        ),
                        child: ListTile(
                          title: const Text(
                              "Link your payment gateway and     \nsend fee reminders"),
                          trailing: InkWell(
                              onTap: () {
                                Get.to(const Paymentlink()); 
                              },
                              child:const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.blue,
                              )),
                        )),
                  ),

                  // Radio Button 1
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        border: Border.all(
                            width: 1, color: const Color.fromRGBO(241, 241, 241, 1)),
                      ),
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          radioTheme: RadioThemeData(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            fillColor: WidgetStateProperty.all(Colors.blue),
                            visualDensity:
                           const      VisualDensity(horizontal: -4.0, vertical: -4.0),
                          ),
                        ),
                        child: RadioListTile<String>(
                          title:
                       const        Text('Send Fee Reminder With \nUPI Payment Link'),
                          value: 'withUPI',
                          groupValue: _selectedOption,
                          onChanged: (value) {
                            setState(() {
                              _selectedOption = value;
                            });
                          },
                          contentPadding:
                            const   EdgeInsets.symmetric(horizontal: 16.0),
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                      ),
                    ),
                  ),

                  // Radio Button 2
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        border: Border.all(
                            width: 1, color:const  Color.fromRGBO(241, 241, 241, 1)),
                      ),
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          radioTheme: RadioThemeData(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            fillColor: WidgetStateProperty.all(Colors.blue),
                            visualDensity: const VisualDensity(
                                horizontal: -4.0, vertical: -4.0),
                          ),
                        ),
                        child: RadioListTile<String>(
                          title:const  Text(
                              'Send Fee Reminder Without \nUPI Payment Link'),
                          value: 'withoutUPI',
                          groupValue: _selectedOption,
                          onChanged: (value) {
                            setState(() {
                              _selectedOption = value;
                            });
                          },
                          contentPadding:
                            const   EdgeInsets.symmetric(horizontal: 16.0),
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Update Button
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20), // Add some padding
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 57.h,
                  width: 358.w,
                  decoration: BoxDecoration(
                      gradient:const  LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color.fromRGBO(13, 149, 211, 1),
                            Color.fromRGBO(9, 96, 186, 1),
                          ]),
                      borderRadius: BorderRadius.circular(84)),
                  child: const Center(
                      child: Text(
                    "Update",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Color.fromRGBO(251, 251, 251, 1)),
                  )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
