import 'package:flutter/material.dart';
import 'package:khelnet/Pages/Add/AddCharges.dart';
import 'package:khelnet/Pages/Add/AddPlans.dart';

class AddplansCharges extends StatefulWidget {
  const AddplansCharges({super.key});

  @override
  State<AddplansCharges> createState() => _AddplansChargesState();
}

class _AddplansChargesState extends State<AddplansCharges> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: const Text(
                " Add Plans & Charges",
                
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              centerTitle: true,
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
            ),
            
            body: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 22.0, right: 22, top: 15, bottom: 25),
                  child: TabBar(
                      labelColor: Color.fromRGBO(9, 96, 186, 1),
                      dividerColor: Colors.transparent,
                      indicator: UnderlineTabIndicator(
                          borderSide: BorderSide(
                              width: 2, color: Color.fromRGBO(9, 96, 186, 1))),
                      unselectedLabelColor: Color.fromRGBO(186, 186, 186, 1),
                      tabs: [
                        Tab(
                          child: Center(
                            child: Text(
                              "Plans",
                              style: TextStyle(
                                fontSize: 16.37,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Center(
                            child: Text(
                              "Charges",
                              style: TextStyle(
                                fontSize: 16.37,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
                Expanded(
                    child: TabBarView(children: [
                      Addplans(), 
                      Addcharges(),
                  // Plans(),
                  // Charges(),
                ]))
              ],
            ),
          )),
    );
  }
}
