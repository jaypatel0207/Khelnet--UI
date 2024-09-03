import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khelnet/Controller/batch_controller.dart';
import 'package:khelnet/Pages/coaches/AssignCenter&batch.dart';

class Batches extends StatefulWidget {
  const Batches({super.key});

  @override
  _BatchesState createState() => _BatchesState();
}

class _BatchesState extends State<Batches> {
  final BatchController batchController = Get.put(BatchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Obx(() => ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: batchController.nameList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            top: 15, left: 20, right: 20, bottom: 10),
                        child: Container(
                          height: 68,
                          width: 365,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                width: 1,
                                color: const Color.fromRGBO(186, 186, 186, 1)),
                          ),
                          child: ListTile(
                            title: Text(
                              batchController.nameList[index],
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            subtitle: const Text(
                              "Khelnet Gurgaon Center",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0, 0, 0, 1)),
                            ),
                            trailing: IconButton(
                              icon: const Icon(
                                Icons.delete_outline_rounded,
                                color: Color.fromRGBO(223, 92, 92, 1),
                              ),
                              onPressed: () {
                                _showAlreadyRegisteredDialog(context, index);
                              },
                            ),
                          ),
                        ),
                      );
                    },
                  )),
              const SizedBox(
                height: 150,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: InkWell(
            onTap: () {
              Get.to(Assigncenterbatch());
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
                  "Add Center & Batches",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                )),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  void _showAlreadyRegisteredDialog(BuildContext context, int index) {
    Get.dialog(Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        height: 445,
        width: 341,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(13)),
        child: Column(
          children: [
            const SizedBox(
              height: 37,
            ),
            Center(child: Image.asset("assets/images/delete.png")),
            const SizedBox(
              height: 8,
            ),
            const Center(
                child: Text(
              "Delete Batch ",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            )),
            const SizedBox(height: 25),
            const Center(
                child: Text(
              "Your Coach will be removed from the batch ",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: Color.fromRGBO(151, 149, 149, 1)),
            )),
            const Center(
                child: Text(
              "and he won’t able to see any data ",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: Color.fromRGBO(151, 149, 149, 1)),
            )),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    batchController.deleteBatch(index);
                    Get.back();
                  });
                },
                child: Container(
                  width: 272,
                  height: 51,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Colors.blue),
                      color: Colors.white),
                  child: const Center(
                      child: Text(
                    "Delete",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue),
                  )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  width: 272,
                  height: 51,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color.fromRGBO(13, 149, 211, 1),
                            Color.fromRGBO(9, 96, 186, 1)
                          ])),
                  child: const Center(
                      child: Text(
                    "Cancle",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  // Get.defaultDialog(
  //   title: "Delete Confirmation",
  //   middleText: "Are you sure you want to delete this batch?",
  //   textCancel: "Cancel",
  //   textConfirm: "Delete",
  //   confirmTextColor: Colors.white,
  //   onConfirm: () {
  //     batchController.deleteBatch(index);
  //     Get.back(); // Close the dialog
  //   },
  // );
}
