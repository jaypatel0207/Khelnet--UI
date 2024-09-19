// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';

// class Expensereport extends StatefulWidget {
//   const Expensereport({super.key});

//   @override
//   State<Expensereport> createState() => _ExpensereportState();
// }

// class _ExpensereportState extends State<Expensereport> {

//  String? _selectedReportType;




//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar(title: "Expense Reports"),
//       backgroundColor:Color.fromRGBO(255, 255, 255, 1),



//       body: Center(
//         child: Column(
//           children: [
//              SizedBox(
//               height: 25.h,
//             ),
        
//             Container(
//               height:50.h, 
//               width: 353.w, 
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(26), 
//                 color: Color.fromRGBO(255, 255, 255, 1),
//                 border: Border.all(width: 1, color: const  Color.fromRGBO(241, 241, 241, 1))
//               ),
//               child: Center(
//                 child: Center(
//                   child: Row(
//                     children: [

         
//                       Expanded(
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 15, top: 3, right: 5  ),

//                           child: TextField(
//                             decoration: InputDecoration(
//                               border: InputBorder.none, 
//                               hintText: "Select Report Type", 
//                               hintStyle:const  TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black), 
//                               suffixIcon: IconButton(onPressed: (){}, icon: const  Icon(Icons.arrow_forward_ios, color: Colors.blue,))
//                             ),
                            
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ),
//             ), 

//  SizedBox(height: 15.h), 

            
//             Container(
//               height:50.h, 
//               width: 353.w, 
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(26), 
//                 color:const  Color.fromRGBO(255, 255, 255, 1),
//                 border: Border.all(width: 1, color: const  Color.fromRGBO(241, 241, 241, 1))
//               ),
//               child: Center(
//                 child: Center(
//                   child: Row(
//                     children: [

                      
//                       Expanded(
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 15, top: 3, right: 5),
//                           child: TextField(
//                             decoration: InputDecoration(
//                               border: InputBorder.none, 
//                               hintText: "Select Coach", 
//                               hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black), 
//                               suffixIcon: IconButton(onPressed: (){}, icon: const  Icon(Icons.arrow_forward_ios, color: Colors.blue,))
//                             ),
                            
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ),
//             ), 


//  SizedBox(height: 15.h), 

//              Container(
//               height:50.h, 
//               width: 353.w, 
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(26), 
//                 color:const  Color.fromRGBO(255, 255, 255, 1),
//                 border: Border.all(width: 1, color: const  Color.fromRGBO(241, 241, 241, 1))
//               ),
//               child: Center(
//                 child: Center(
//                   child: Row(
//                     children: [

                      
//                       Expanded(
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 15, top: 3, right: 5),
//                           child: TextField(
//                             decoration: InputDecoration(
//                               border: InputBorder.none, 
//                               hintText: "Select Duration", 
//                               hintStyle:const  TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black), 
//                               suffixIcon: IconButton(onPressed: (){}, icon: const  Icon(Icons.arrow_forward_ios, color: Colors.blue,))
//                             ),
                            
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ),
//             )
           
//           ],
//         ),
//       ),
//     );
//   }
// }







import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';

class Expensereport extends StatefulWidget {
  const Expensereport({super.key});

  @override
  State<Expensereport> createState() => _ExpensereportState();
}

class _ExpensereportState extends State<Expensereport> {
  // List of coaches
  final List<String> coaches = ['Coach 1', 'Coach 2', 'Coach 3', 'Coach 4', 'Coach 5', 'Coach 6'];
  
  // List to track which coaches are selected
  List<bool> selectedCoaches = [false, false, false, false, false, false];
  
  // Controller for the TextField
  TextEditingController coachController = TextEditingController();
  
  // Flag to indicate if all items are selected
  bool selectAll = false;
  
  // Method to get the list of selected coach names
  List<String> getSelectedCoachNames() {
    List<String> selectedNames = [];
    for (int i = 0; i < coaches.length; i++) {
      if (selectedCoaches[i]) {
        selectedNames.add(coaches[i]);
      }
    }
    return selectedNames;
  }
  
  // Method to update the TextField with selected coach names
  void updateCoachTextField() {
    coachController.text = getSelectedCoachNames().join(', ');
  }
  
  // Method to show the Bottom Sheet
  void _showCoachSelectionSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: 15.h,), 
                      Text("Select Coach", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),), 
                SizedBox(width: 10,), 
                CheckboxListTile(
                  title: Text('Select All'),
                  value: selectAll,
                  onChanged: (bool? value) {
                    setState(() {
                      selectAll = value ?? false;
                      // Update all checkboxes based on selectAll value
                      for (int i = 0; i < selectedCoaches.length; i++) {
                        selectedCoaches[i] = selectAll;
                      }
                    });
                  },
                ),
                // List of checkboxes for each coach
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: coaches.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CheckboxListTile(
                      title: Text(coaches[index]),
                      value: selectedCoaches[index],
                      onChanged: (bool? value) {
                        setState(() {
                          selectedCoaches[index] = value ?? false;
                          // If any checkbox is deselected, uncheck "Select All"
                          if (!selectedCoaches[index]) {
                            selectAll = false;
                          } else {
                            // If all checkboxes are selected, check "Select All"
                            selectAll = selectedCoaches.every((element) => element);
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
                      updateCoachTextField();
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
      appBar: CustomAppBar(title: "Expense Reports"),
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 25.h,
            ),
            // Container for "Select Report Type" - unchanged
            Container(
              height: 50.h,
              width: 353.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                color: Color.fromRGBO(255, 255, 255, 1),
                border: Border.all(width: 1, color: Color.fromRGBO(241, 241, 241, 1)),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, top: 3, right: 5),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Select Report Type",
                            hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward_ios, color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.h),
            // Container for "Select Coach" with coach selection logic
            GestureDetector(
              onTap: _showCoachSelectionSheet,
              child: Container(
                height: 50.h,
                width: 353.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  color: Color.fromRGBO(255, 255, 255, 1),
                  border: Border.all(width: 1, color: Color.fromRGBO(241, 241, 241, 1)),
                ),
                child: Center(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, top: 3, right: 5),
                          child: TextField(
                            readOnly: true,
                            controller: coachController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Select Coach",
                              hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
                              suffixIcon: IconButton(
                                onPressed: 
                                
                                _showCoachSelectionSheet,
                                icon: Icon(Icons.arrow_forward_ios, color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.h),
            // Container for "Select Duration" - unchanged
            Container(
              height: 50.h,
              width: 353.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                color: Color.fromRGBO(255, 255, 255, 1),
                border: Border.all(width: 1, color: Color.fromRGBO(241, 241, 241, 1)),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, top: 3, right: 5),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Select Duration",
                            hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward_ios, color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
