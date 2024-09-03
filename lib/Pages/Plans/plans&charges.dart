
import 'package:flutter/material.dart';
import 'package:khelnet/Pages/Plans/charges.dart';
import 'package:khelnet/Pages/Plans/plans.dart';

class Planscharges extends StatefulWidget {
  const Planscharges({super.key});

  @override
  State<Planscharges> createState() => _PlansState();
}

class _PlansState extends State<Planscharges> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                "Plans & Charges",
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
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.tune,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            body: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 22.0, right: 22, top: 15, bottom: 25),
                  child: TabBar(
                    labelColor:   Color.fromRGBO(9, 96, 186, 1),
                    dividerColor: Colors.transparent,
                    indicator: UnderlineTabIndicator(
                      
                      borderSide:BorderSide(width: 2,color:   Color.fromRGBO(9, 96, 186, 1))
                    ),
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

                Expanded(child: TabBarView(children: [
                  Plans(),
                  Charges(),
                ]))
              ],
            ),
          )),
    );
  }
}
