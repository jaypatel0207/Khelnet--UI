import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:khelnet/Pages/Add/AddCenter.dart';

class Centerfound extends StatefulWidget {
  const Centerfound({super.key});

  @override
  State<Centerfound> createState() => _CenterfoundState();
}

class _CenterfoundState extends State<Centerfound> {
  List<Map<String, dynamic>> Centers = [
    {"name": "Khelnet Gurgaon Sector -1", "batches": "Total Batches - 02"},
    {"name": "Khelnet Gurgaon Sector -1", "batches": "Total Batches - 02"},
    {"name": "Khelnet Gurgaon Sector -1", "batches": "Total Batches - 02"},
    {"name": "Khelnet Gurgaon Sector -1", "batches": "Total Batches - 02"},
    {"name": "Khelnet Gurgaon Sector -1", "batches": "Total Batches - 02"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Center",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 15.0,
          left: 15,
          right: 15,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    // onChanged: (value) => _runFilter(value),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color.fromRGBO(186, 186, 186, 1),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide(
                            color: Color.fromRGBO(186, 186, 186, 1),
                            width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: BorderSide(
                            color: Color.fromRGBO(9, 96, 186, 1), width: 1.5),
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(186, 186, 186, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                // InkWell(
                //   onTap: () {

                //   },
                //   child: Image.asset("assets/images/modern.png")),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.payment,
                    color: Colors.black,
                  ),
                ),
                Text("0"),
              ],
            ),
            SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: Centers.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 63,
                      width: 358,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 1,
                              color: Color.fromRGBO(241, 241, 241, 1))),
                      child: ListTile(
                        title: Text(
                          "${Centers[index]["name"]}",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                        subtitle: Text("${Centers[index]["batches"]}",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14)),
                        trailing: InkWell(
                            onTap: () {}, child: Icon(Icons.arrow_forward_ios)),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: InkWell(
                onTap: () {
                  Get.to(Addcenter(startTime: '', endTime: '',));
                },
                child: Center(
                  child: Container(
                    width: 347,
                    height: 51,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(103),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color.fromRGBO(13, 149, 211, 1),
                              Color.fromRGBO(9, 96, 186, 1)
                            ])),
                    child: const Center(
                        child: Text(
                      "Add Centers",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
