import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Assigncenterbatch extends StatefulWidget {
  const Assigncenterbatch({super.key});

  @override
  State<Assigncenterbatch> createState() => _AssigncenterbatchState();
}

class _AssigncenterbatchState extends State<Assigncenterbatch> {
  final TextEditingController _CoachcenterController = TextEditingController();
  String selectedCoachCenter = "";
  final TextEditingController _CoachbatchController = TextEditingController();
  String selectedCoachBatch = "";

  Widget _buildListTileCoach(String Coach, StateSetter setModalState) {
    return ListTile(
      title: Text(Coach),
      tileColor:
          selectedCoachCenter == Coach ? Colors.blue.withOpacity(0.2) : null,
      onTap: () {
        setModalState(() {
          selectedCoachCenter =
              Coach; 
        });
      },
    );
  }

  List<String> selectedCoachBatches = [];

  Widget _buildListTileCoachBatch(
      String CoachBatch, StateSetter setModalState) {
    return ListTile(
      title: Text(CoachBatch),
      tileColor: selectedCoachBatches.contains(CoachBatch)
          ? Colors.blue.withOpacity(0.2)
          : null,
      onTap: () {
        setModalState(() {
          if (selectedCoachBatches.contains(CoachBatch)) {
            selectedCoachBatches.remove(CoachBatch);
          } else {
            selectedCoachBatches.add(CoachBatch);
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Assign Center & Batch",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 11, right: 20, left: 20),
            child: TextField(
              controller: _CoachcenterController,
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromRGBO(253, 252, 252, 1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: const BorderSide(
                      color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: const BorderSide(
                      color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    Get.bottomSheet(showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20.0)),
                      ),
                      builder: (BuildContext context) {
                        return StatefulBuilder(
                          builder: (BuildContext context,
                              StateSetter setModalState) {
                            return Container(
                              height: 550,
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Center(
                                    child: Text(
                                      'Assign Center',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 25.0),
                                  Container(
                                    height: 135,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: const Color.fromRGBO(
                                              238, 234, 234, 1)),
                                    ),
                                    child: Column(
                                      children: [
                                        _buildListTileCoach(
                                            'Khelnet Gurgaon 1', setModalState),
                                        const Divider(
                                          height: 10,
                                          color: Colors.white,
                                        ),
                                        _buildListTileCoach(
                                            'Khelnet Gurgaon 2', setModalState),
                                        const Divider(
                                          height: 10,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 125,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          _CoachcenterController.text =
                                              selectedCoachCenter;
                                        });
                                        Navigator.pop(
                                            context); 
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
                            );
                          },
                        );
                      },
                    ) as Widget);
                  },
                  icon: const Icon(Icons.keyboard_arrow_down),
                  color: Colors.blue,
                ),
                hintText: 'Assign Center',
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                hintStyle: const TextStyle(
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
              controller: _CoachbatchController,
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromRGBO(253, 252, 252, 1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: const BorderSide(
                      color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: const BorderSide(
                      color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    Get.bottomSheet(showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20.0)),
                      ),
                      builder: (BuildContext context) {
                        return StatefulBuilder(
                          builder: (BuildContext context,
                              StateSetter setModalState) {
                            return Container(
                              height: 550,
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10),
                                  const Center(
                                    child: Text(
                                      'Assign Center',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 25.0),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: const Color.fromRGBO(
                                                238, 234, 234, 1)),
                                      ),
                                      child: ListView(
                                        children: [
                                          _buildListTileCoachBatch(
                                              'Batch 1', setModalState),
                                          const Divider(
                                              height: 10, color: Colors.white),
                                          _buildListTileCoachBatch(
                                              'Batch 2', setModalState),
                                          const Divider(
                                              height: 10, color: Colors.white),
                                          _buildListTileCoachBatch(
                                              'Batch 3', setModalState),
                                          const Divider(
                                              height: 10, color: Colors.white),
                                          _buildListTileCoachBatch(
                                              'Batch 4', setModalState),
                                          const Divider(
                                              height: 10, color: Colors.white),
                                          _buildListTileCoachBatch(
                                              'Batch 5', setModalState),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          _CoachbatchController.text =
                                              selectedCoachBatches.join(', ');
                                        });
                                        Navigator.pop(
                                            context); 
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
                            );
                          },
                        );
                      },
                    ) as Widget);
                  },
                  icon: const Icon(Icons.keyboard_arrow_down),
                  color: Colors.blue,
                ),
                hintText: 'Assign Batch',
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                hintStyle: const TextStyle(
                    color: Color.fromRGBO(186, 186, 186, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
