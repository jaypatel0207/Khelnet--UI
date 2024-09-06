import 'package:flutter/material.dart';

class Charges extends StatefulWidget {
  const Charges({super.key});

  @override
  State<Charges> createState() => _PlansState();
}

class _PlansState extends State<Charges> {
  List<String> chargeList = [
    "UniForm kit",
    "UniForm kit",
    "UniForm kit",
    "UniForm kit",
  ];

  int totalcharges = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    totalcharges = chargeList.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
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
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.payment,
                            color: Colors.black,
                          )),
                      Text(
                        //"0"
                        totalcharges
                            .toString(), // Show the total number of members here
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Container(
                        height: 88,
                        width: 158,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                              width: 1.5,
                              color: Color.fromRGBO(241, 241, 241, 1)),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, top: 13),
                              child: Row(
                                children: [
                                  Text(
                                    "UniForm kit",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 8.0,
                              ),
                              child: Row(
                                children: [
                                  // Text(
                                  //   "Monthly",
                                  //   style: TextStyle(
                                  //     fontWeight: FontWeight.w500,
                                  //     fontSize: 12,
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 8,
                              ),
                              child: Row(
                                children: [
                                  Text("₹ 5000"),
                                  SizedBox(
                                    width: 75,
                                  ),
                                  Image.asset("assets/images/rupee.png")
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Container(
                          height: 88,
                          width: 158,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1.5,
                                color: Color.fromRGBO(241, 241, 241, 1)),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, top: 13),
                                child: Row(
                                  children: [
                                    Text(
                                      "UniForm kit",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8.0,
                                ),
                                child: Row(
                                  children: [
                                    // Text(
                                    //   "Monthly",
                                    //   style: TextStyle(
                                    //     fontWeight: FontWeight.w500,
                                    //     fontSize: 12,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8,
                                ),
                                child: Row(
                                  children: [
                                    Text("₹ 5000"),
                                    SizedBox(
                                      width: 75,
                                    ),
                                    Image.asset("assets/images/rupee.png")
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Container(
                          height: 88,
                          width: 158,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1.5,
                                color: Color.fromRGBO(241, 241, 241, 1)),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, top: 13),
                                child: Row(
                                  children: [
                                    Text(
                                      "UniForm kit",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8.0,
                                ),
                                child: Row(
                                  children: [
                                    // Text(
                                    //   "Monthly",
                                    //   style: TextStyle(
                                    //     fontWeight: FontWeight.w500,
                                    //     fontSize: 12,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8,
                                ),
                                child: Row(
                                  children: [
                                    Text("₹ 5000"),
                                    SizedBox(
                                      width: 75,
                                    ),
                                    Image.asset("assets/images/rupee.png")
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Container(
                          height: 88,
                          width: 158,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1.5,
                                color: Color.fromRGBO(241, 241, 241, 1)),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, top: 13),
                                child: Row(
                                  children: [
                                    Text(
                                      "UniForm kit",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8.0,
                                ),
                                child: Row(
                                  children: [
                                    // Text(
                                    //   "Monthly",
                                    //   style: TextStyle(
                                    //     fontWeight: FontWeight.w500,
                                    //     fontSize: 12,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8,
                                ),
                                child: Row(
                                  children: [
                                    Text("₹ 5000"),
                                    SizedBox(
                                      width: 75,
                                    ),
                                    Image.asset("assets/images/rupee.png")
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 30),
                  child: Column(
                    children: [
                      Container(
                        height: 88,
                        width: 158,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                              width: 1.5,
                              color: Color.fromRGBO(241, 241, 241, 1)),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, top: 13),
                              child: Row(
                                children: [
                                  Text(
                                    "UniForm kit",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 8.0,
                              ),
                              child: Row(
                                children: [
                                  // Text(
                                  //   "Monthly",
                                  //   style: TextStyle(
                                  //     fontWeight: FontWeight.w500,
                                  //     fontSize: 12,
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 8,
                              ),
                              child: Row(
                                children: [
                                  Text("₹ 5000"),
                                  SizedBox(
                                    width: 75,
                                  ),
                                  Image.asset("assets/images/rupee.png")
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Container(
                          height: 88,
                          width: 158,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1.5,
                                color: Color.fromRGBO(241, 241, 241, 1)),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, top: 13),
                                child: Row(
                                  children: [
                                    Text(
                                      "UniForm kit",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8.0,
                                ),
                                child: Row(
                                  children: [
                                    // Text(
                                    //   "Monthly",
                                    //   style: TextStyle(
                                    //     fontWeight: FontWeight.w500,
                                    //     fontSize: 12,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8,
                                ),
                                child: Row(
                                  children: [
                                    Text("₹ 5000"),
                                    SizedBox(
                                      width: 75,
                                    ),
                                    Image.asset("assets/images/rupee.png")
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Container(
                          height: 88,
                          width: 158,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1.5,
                                color: Color.fromRGBO(241, 241, 241, 1)),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, top: 13),
                                child: Row(
                                  children: [
                                    Text(
                                      "UniForm kit",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8.0,
                                ),
                                child: Row(
                                  children: [
                                    // Text(
                                    //   "Monthly",
                                    //   style: TextStyle(
                                    //     fontWeight: FontWeight.w500,
                                    //     fontSize: 12,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8,
                                ),
                                child: Row(
                                  children: [
                                    Text("₹ 5000"),
                                    SizedBox(
                                      width: 75,
                                    ),
                                    Image.asset("assets/images/rupee.png")
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Container(
                          height: 88,
                          width: 158,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1.5,
                                color: Color.fromRGBO(241, 241, 241, 1)),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, top: 13),
                                child: Row(
                                  children: [
                                    Text(
                                      "UniForm kit",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8.0,
                                ),
                                child: Row(
                                  children: [
                                    // Text(
                                    //   "Monthly",
                                    //   style: TextStyle(
                                    //     fontWeight: FontWeight.w500,
                                    //     fontSize: 12,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8,
                                ),
                                child: Row(
                                  children: [
                                    Text("₹ 5000"),
                                    SizedBox(
                                      width: 75,
                                    ),
                                    Image.asset("assets/images/rupee.png")
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 110,
            ),
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
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color.fromRGBO(13, 149, 211, 1),
                              Color.fromRGBO(9, 96, 186, 1),
                            ]),
                        borderRadius: BorderRadius.circular(84)),
                    child: Center(
                        child: Text(
                      "Add Charges",
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
