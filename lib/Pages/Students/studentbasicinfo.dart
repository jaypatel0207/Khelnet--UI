import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Studentbasicinfo extends StatefulWidget {
  final String name;
  Studentbasicinfo({super.key, required this.name});

  @override
  State<Studentbasicinfo> createState() => _StudentbasicinfoState();
}

class _StudentbasicinfoState extends State<Studentbasicinfo> {
   DateTime? _selectedDueDate;
  final TextEditingController _DuedateController = TextEditingController();
    bool isActive = false;





  void _selectDueDate() async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime(2200));
    if (pickedDate != null) {
      setState(() {
        _selectedDueDate = pickedDate;
        _DuedateController.text = "${pickedDate.toLocal()}"
            .split(' ')[0]; // Format the date as desired
      });
    }
  }
  @override
  Widget build(BuildContext context) {
      final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 20, right: 20, bottom: 8, top: 21),
              child: Container(
                height: 63.h,
                width: 360.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    border: Border.all(color: const  Color.fromRGBO(186, 186, 186, 1))),
                child:  ListTile(
                  title: const Text(
                    "Khelnet Gurgaon Sector -1",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  subtitle: const Text(
                    "Shine 1 ( 4:00 PM - 5:00 PM )",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  trailing:
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios)),
                ),
              ),
            ),
        
        
        
        
             Padding(
                  padding: const EdgeInsets.only(top: 11, right: 20, left: 20),
                  child: TextField(
                   
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor:Colors.white, 
                      prefixIcon: const Icon(Icons.phone, color: Colors.black,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide:
                          const   BorderSide(color: Colors.transparent, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const  BorderSide(
                            color: Color.fromRGBO(241, 241, 241, 1), width: 1.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                      ),
                      hintText: 'Contact Number',
                      
                      contentPadding:
                     const      EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                      hintStyle: const  TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
        
        
        
                 Padding(
                  padding: const EdgeInsets.only(top: 11, right: 20, left: 20),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: _DuedateController,
                    readOnly: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor:Colors.white, 
                      prefixIcon: IconButton(icon: const Icon(Icons.calendar_today, color: Colors.black,), onPressed: () {
                          _selectDueDate(); // Call the _selectDueDate function here
                      },),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide:
                          const   BorderSide(color: Colors.transparent, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const  BorderSide(
                            color: Color.fromRGBO(241, 241, 241, 1), width: 1.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                      ),
                      hintText: 'Due Date',
                      contentPadding:
                     const      EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                      hintStyle: const  TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),




              Theme( 
                data: theme,
                
                                child: const Padding(
                                  padding:  EdgeInsets.only(left: 20, right: 20, top: 11),
                                  child: ExpansionTile(
                                
                                    title: Text("Additional info", style: TextStyle(color: Colors.blue, fontWeight:FontWeight.w500, fontSize: 14
                                     ),)),
                                )), 




                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25, top: 5),
                    child: Row(
                              
                              children: [
                                Text(
                                  isActive ? 'Active' : 'Inactive',
                                  style: TextStyle(
                                    color: isActive ? Colors.green : Colors.red,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                 SizedBox(width: 10.w),
                                Switch(
                                  value: isActive,
                                  onChanged: (value) {
                                    setState(() {
                    isActive = value;
                                    });
                                  },
                                  activeColor: Colors.blue,
                                  
                                ),
                              ],
                            ),
                  ),




SizedBox(height: 35.h,), 
                   Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Center(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 64,
                      width: 315,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color.fromRGBO(13, 149, 211, 1),
                                Color.fromRGBO(9, 96, 186, 1),
                              ]),
                          borderRadius: BorderRadius.circular(84)),
                      child:const  Center(
                          child: Text(
                        "Update Basic Info",
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
      ),
    );
  }
}
