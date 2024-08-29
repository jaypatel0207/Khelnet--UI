import 'package:flutter/material.dart';

class Plans extends StatefulWidget {
  const Plans({super.key});

  @override
  State<Plans> createState() => _PlansState();
}

class _PlansState extends State<Plans> {
  List<String> PlanList = [
    "Khelnet Plan 01",
    "Khelnet Plan 01",
    "Khelnet Plan 01",
    "Khelnet Plan 01",
    "Khelnet Plan 01",
    "Khelnet Plan 01",
    "Khelnet Plan 01",
    "Khelnet Plan 01"
  ];

  int totalplans = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    totalplans = PlanList.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                        totalplans.toString(),
                        //"0"
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
            ListView.builder(
              shrinkWrap: true,
              itemCount: PlanList.length,
              itemBuilder: (context, index) {
                return Row(
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
                                        "${PlanList[index]}",
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
                                      Text(
                                        "Monthly",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                        ),
                                      ),
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
                                    padding: const EdgeInsets.only(
                                        left: 8.0, top: 13),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Khelnet Plan 01",
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
                                        Text(
                                          "Monthly",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                          ),
                                        ),
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
                                    padding: const EdgeInsets.only(
                                        left: 8.0, top: 13),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Khelnet Plan 01",
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
                                        Text(
                                          "Monthly",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                          ),
                                        ),
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
                                    padding: const EdgeInsets.only(
                                        left: 8.0, top: 13),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Khelnet Plan 01",
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
                                        Text(
                                          "Monthly",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                          ),
                                        ),
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
                                        "Khelnet Plan 01",
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
                                      Text(
                                        "Monthly",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                        ),
                                      ),
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
                                    padding: const EdgeInsets.only(
                                        left: 8.0, top: 13),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Khelnet Plan 01",
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
                                        Text(
                                          "Monthly",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                          ),
                                        ),
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
                                    padding: const EdgeInsets.only(
                                        left: 8.0, top: 13),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Khelnet Plan 01",
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
                                        Text(
                                          "Monthly",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                          ),
                                        ),
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
                                    padding: const EdgeInsets.only(
                                        left: 8.0, top: 13),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Khelnet Plan 01",
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
                                        Text(
                                          "Monthly",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                          ),
                                        ),
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
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
