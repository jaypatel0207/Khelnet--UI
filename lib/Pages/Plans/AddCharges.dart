import 'package:flutter/material.dart';

class Addcharges extends StatefulWidget {
  const Addcharges({super.key});

  @override
  State<Addcharges> createState() => _AddplansState();
}

class _AddplansState extends State<Addcharges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 11, right: 20, left: 20),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
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
                hintText: 'Additional Charges Name',
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
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
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
                hintText: 'Charge Amount',
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
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: const BorderSide(
                      color: Color.fromRGBO(255, 255, 255, 1), width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: const BorderSide(
                      color: Color.fromRGBO(186, 186, 186, 1), width: 1.5),
                ),
                hintText: 'Add Tax',
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
          const SizedBox(
            height: 400,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                setState(() {});
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
                    "Add Charges",
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
