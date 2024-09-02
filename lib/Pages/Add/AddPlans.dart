import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Addplans extends StatefulWidget {
  const Addplans({super.key});

  @override
  State<Addplans> createState() => _AddplansState();
}

class _AddplansState extends State<Addplans> {
  final TextEditingController _PlanDurationController = TextEditingController();
  String PlanDuration = "";

  Widget _buildListTilePlan(String Plan, StateSetter setModalState) {
    return ListTile(
      title: Text(
        Plan,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      tileColor: PlanDuration == Plan ? Colors.blue.withOpacity(0.2) : null,
      onTap: () {
        setModalState(() {
          PlanDuration = Plan; // Update selected center in the bottom sheet
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 11, right: 20, left: 20),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: BorderSide(color: Colors.transparent, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                ),
                hintText: 'Plan Name',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                hintStyle: TextStyle(
                  color: Color.fromRGBO(186, 186, 186, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 13, right: 20, left: 20),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: BorderSide(color: Colors.transparent, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                ),
                hintText: 'Plan Amount',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                hintStyle: TextStyle(
                  color: Color.fromRGBO(186, 186, 186, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 11, right: 20, left: 20),
            child: TextField(
              controller: _PlanDurationController,
              style: TextStyle(color: Colors.blue),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: BorderSide(color: Colors.transparent, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    Get.bottomSheet(showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20.0)),
                      ),
                      builder: (BuildContext context) {
                        return StatefulBuilder(
                          builder: (BuildContext context,
                              StateSetter setModalState) {
                            return Container(
                              height: 700,
                              padding: EdgeInsets.all(16.0),
                              child: Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    const Center(),
                                    // SizedBox(height: 25.0),
                                    Container(
                                      height: 332,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Color.fromRGBO(
                                                238, 234, 234, 1)),
                                      ),
                                      child: Column(
                                        children: [
                                          _buildListTilePlan(
                                              'Monthly', setModalState),
                                          const Divider(
                                            height: 10,
                                            color: Colors.white,
                                          ),
                                          _buildListTilePlan(
                                              'Quaterly', setModalState),
                                          Divider(
                                            height: 10,
                                            color: Colors.white,
                                          ),
                                          _buildListTilePlan(
                                              '6-Months', setModalState),
                                          const Divider(
                                            height: 10,
                                            color: Colors.white,
                                          ),
                                          _buildListTilePlan(
                                              'Yearly', setModalState),
                                          const Divider(
                                            height: 10,
                                            color: Colors.white,
                                          ),
                                          _buildListTilePlan(
                                              'Custome', setModalState),
                                          const Divider(
                                            height: 10,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 46,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            _PlanDurationController.text =
                                                PlanDuration;
                                          });
                                          Navigator.pop(
                                              context); // Close the bottom sheet
                                        },
                                        child: Center(
                                          child: Container(
                                            width: 347,
                                            height: 51,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(103),
                                                gradient: const LinearGradient(
                                                    begin: Alignment.centerLeft,
                                                    end: Alignment.centerRight,
                                                    colors: [
                                                      Color.fromRGBO(
                                                          13, 149, 211, 1),
                                                      Color.fromRGBO(
                                                          9, 96, 186, 1)
                                                    ])),
                                            child: const Center(
                                                child: Text(
                                              "Done",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white),
                                            )),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ) as Widget);
                  },
                  icon: Icon(Icons.keyboard_arrow_down),
                  color: Colors.blue,
                ),
                hintText: 'Plan Duration',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                hintStyle: TextStyle(
                  color: Color.fromRGBO(186, 186, 186, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 11, right: 20, left: 20),
            child: TextField(
              controller: _PlanDurationController,
              style: TextStyle(color: Colors.blue),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: BorderSide(color: Colors.transparent, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    Get.bottomSheet(showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20.0)),
                      ),
                      builder: (BuildContext context) {
                        return StatefulBuilder(
                          builder: (BuildContext context,
                              StateSetter setModalState) {
                            return Container(
                              height: 700,
                              padding: EdgeInsets.all(16.0),
                              child: Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    const Center(),
                                    // SizedBox(height: 25.0),
                                    Container(
                                      height: 332,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Color.fromRGBO(
                                                238, 234, 234, 1)),
                                      ),
                                      child: Column(
                                        children: [
                                          _buildListTilePlan(
                                              'Monthly', setModalState),
                                          const Divider(
                                            height: 10,
                                            color: Colors.white,
                                          ),
                                          _buildListTilePlan(
                                              'Quaterly', setModalState),
                                          Divider(
                                            height: 10,
                                            color: Colors.white,
                                          ),
                                          _buildListTilePlan(
                                              '6-Months', setModalState),
                                          const Divider(
                                            height: 10,
                                            color: Colors.white,
                                          ),
                                          _buildListTilePlan(
                                              'Yearly', setModalState),
                                          const Divider(
                                            height: 10,
                                            color: Colors.white,
                                          ),
                                          _buildListTilePlan(
                                              'Custome', setModalState),
                                          const Divider(
                                            height: 10,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 46,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            _PlanDurationController.text =
                                                PlanDuration;
                                          });
                                          Navigator.pop(
                                              context); // Close the bottom sheet
                                        },
                                        child: Center(
                                          child: Container(
                                            width: 347,
                                            height: 51,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(103),
                                                gradient: const LinearGradient(
                                                    begin: Alignment.centerLeft,
                                                    end: Alignment.centerRight,
                                                    colors: [
                                                      Color.fromRGBO(
                                                          13, 149, 211, 1),
                                                      Color.fromRGBO(
                                                          9, 96, 186, 1)
                                                    ])),
                                            child: const Center(
                                                child: Text(
                                              "Done",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white),
                                            )),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ) as Widget);
                  },
                  icon: Icon(Icons.keyboard_arrow_down),
                  color: Colors.blue,
                ),
                hintText: 'Make Additional Setting',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                hintStyle: TextStyle(
                  color: Color.fromRGBO(186, 186, 186, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 300,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                setState(() {});
                Navigator.pop(context); // Close the bottom sheet
              },
              child: Center(
                child: Container(
                  width: 347,
                  height: 51,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(103),
                      gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color.fromRGBO(13, 149, 211, 1),
                            Color.fromRGBO(9, 96, 186, 1)
                          ])),
                  child: const Center(
                      child: Text(
                    "Add Plan",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
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
