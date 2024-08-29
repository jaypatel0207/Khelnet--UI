import 'package:flutter/material.dart';

class Charges extends StatefulWidget {
  const Charges({super.key});

  @override
  State<Charges> createState() => _PlansState();
}

class _PlansState extends State<Charges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
                    padding: const EdgeInsets.only(
                      top: 15.0,
                      left: 15,
                      right: 15,
                    ),
                    child: Row(
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
                                    color: Color.fromRGBO(9, 96, 186, 1),
                                    width: 1.5),
                              ),
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                  color: Color.fromRGBO(186, 186, 186, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.payment,
                                  color: Colors.black,
                                )),
                            Text(
                              "0"
                              // totalMembers.toString(), // Show the total number of members here
                              // style: TextStyle(
                              //     color: Colors.blue,
                              //     fontWeight: FontWeight.w500,
                              //     fontSize: 12),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
        ],
      ),
    );
  }
}