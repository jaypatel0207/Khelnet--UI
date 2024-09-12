import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';

class Feereport extends StatefulWidget {
  const Feereport({super.key});

  @override
  State<Feereport> createState() => _FeereportState();
}

class _FeereportState extends State<Feereport> {



   final List<String> _nameList = [
    "Select Report Type",
    "Select Center",
    "Select Batch",
    "Select Duration",
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Fee Report"),
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
                child: Container(
                  height: 50.h,
                  width: 353.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      color: Color.fromRGBO(251, 251, 251, 1),
                      border: Border.all(
                          width: 2, color: const Color.fromRGBO(241, 241, 241, 1))),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 13, right: 5, top: 3),
                      child: Center(
                        child: TextField(
                          readOnly: true,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios, color: Colors.blue,size: 17,)),
                            border: InputBorder.none,
                            hintText: "${_nameList[index]}" , 
                            hintStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14)
                          ),
                        ),
                      ),
                    )
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