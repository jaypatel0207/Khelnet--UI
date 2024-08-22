import 'package:flutter/material.dart';

class Nocoachesfound extends StatefulWidget {
  const Nocoachesfound({super.key});

  @override
  State<Nocoachesfound> createState() => _NodatafoundState();
}

class _NodatafoundState extends State<Nocoachesfound> {
  // This variable will store the selected state.
  String _selectedStatus = "Active";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Coaches",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.tune,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
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
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color.fromRGBO(186, 186, 186, 1),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(186, 186, 186, 1),
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(26),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(9, 96, 186, 1),
                            width: 1.5,
                          ),
                        ),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(186, 186, 186, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Image.asset("assets/images/vistel.png"),
                      ),
                      Text(
                        "00",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text(
                      _selectedStatus,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color.fromRGBO(9, 96, 186, 1),
                      ),
                    ),
                    SizedBox(width: 10),
                    PopupMenuButton<String>(
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.blue,
                      ),
                      onSelected: (String value) {
                        setState(() {
                          _selectedStatus = value;
                        });
                      },
                      itemBuilder: (BuildContext context) {
                        return <PopupMenuEntry<String>>[
                          PopupMenuItem<String>(
                            value: "Active",
                            child: Text("Active"),
                          ),
                          PopupMenuItem<String>(
                            value: "Inactive",
                            child: Text("Inactive"),
                          ),
                        ];
                      },
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Image.asset("assets/images/three.png"),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "No Coaches Found",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            SizedBox(
              height: 220,
            ),
            InkWell(
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
                    ],
                  ),
                  borderRadius: BorderRadius.circular(84),
                ),
                child: Center(
                  child: Text(
                    "Add Coaches",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color.fromRGBO(251, 251, 251, 1),
                    ),
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
