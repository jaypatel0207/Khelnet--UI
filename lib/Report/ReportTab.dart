import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khelnet/Pages/Students/AddStudent.dart';
import 'package:khelnet/Report/FeeReport.dart';

class Reporttab extends StatefulWidget {
  @override
  State<Reporttab> createState() => _ReporttabState();
}

class _ReporttabState extends State<Reporttab> {
  final List<String> _imgList = [
    "assets/images/wallet.png",
    "assets/images/clothsss.png",
    "assets/images/humann.png",
    "assets/images/done.png",
    "assets/images/combained.png",
  ];

  final List<String> _nameList = [
    "Fee Report",
    "Expense Report",
    "Attendance Report",
    "Coach Report",
    "Combined Report"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 25.h,), 
          ListView.builder(
            shrinkWrap: true,
            itemCount: _nameList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 13, right: 13, top: 15),
                child: InkWell(
                  onTap: () {
                      switch (_nameList[index]) {
                              case 'Fee Report':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Feereport(),
                                    ));
                                // Navigator.pushNamed(context, '/feeReport');
                                break;
                              case 'Expense Report':
                                Navigator.pushNamed(context, '/expenseReport');
                                break;
                              case 'Attendance Report':
                                Navigator.pushNamed(context, '/attendanceReport');
                                break;
                              case 'Coach Report':
                                Navigator.pushNamed(context, '/coachReport');
                                break;
                              case 'Combined Report':
                                Navigator.pushNamed(context, '/combinedReport');
                                break;
                            }
                  },
                  child: Container(
                    height: 72.6.h,
                    width: 365.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromRGBO(251, 251, 251, 1),
                        border: Border.all(
                            width: 2, color: const Color.fromRGBO(241, 241, 241, 1))),
                    child: Center(
                      child: ListTile(
                        leading: Image.asset(
                          _imgList[index],
                          width: 40,
                          height: 40,
                        ),
                        title: Text(
                          _nameList[index],
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                        trailing: SizedBox(
                          width: 37.w,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            ),
                            onPressed: () {
                              // Navigate based on the clicked item
                              switch (_nameList[index]) {
                                case 'Fee Report':
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Feereport(),
                                      ));
                                  // Navigator.pushNamed(context, '/feeReport');
                                  break;
                                case 'Expense Report':
                                  Navigator.pushNamed(context, '/expenseReport');
                                  break;
                                case 'Attendance Report':
                                  Navigator.pushNamed(context, '/attendanceReport');
                                  break;
                                case 'Coach Report':
                                  Navigator.pushNamed(context, '/coachReport');
                                  break;
                                case 'Combined Report':
                                  Navigator.pushNamed(context, '/combinedReport');
                                  break;
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}