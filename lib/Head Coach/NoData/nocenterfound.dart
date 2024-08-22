// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class Nodatafound extends StatefulWidget {
//   const Nodatafound({super.key});

//   @override
//   State<Nodatafound> createState() => _NodatafoundState();
// }

// class _NodatafoundState extends State<Nodatafound> {
//   String status = "Active"; // The status to be displayed beside the arrow

//   // Sample data for members
//   List<String> activeMembers = ["Shivam Jain", "Shivam Jain", "Shivam Jain", "Kanha Jain", "Krishna Jain", "Narayan Jain", "Narayan 3"];
//   List<String> inactiveMembers = ["Bob White", "Charlie Black",  "David Gray"];


//   @override
//   Widget build(BuildContext context) {
//     // Determine the list of members based on the current status
//     List<String> membersToShow = status == "Active" ? activeMembers : inactiveMembers;

//     // Calculate the total number of members (active + inactive)
//     int totalMembers = activeMembers.length + inactiveMembers.length;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Center",
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
//         ),
//         centerTitle: true,
//         actions: [
//           IconButton(
//               onPressed: () {},
//               icon: Icon(
//                 Icons.tune,
//                 color: Colors.black,
//               )),
//           IconButton(
//               onPressed: () {},
//               icon: Icon(
//                 Icons.more_vert,
//                 color: Colors.black,
//               )),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(
//                 top: 15.0,
//                 left: 15,
//                 right: 15,
//               ),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: TextField(
//                       keyboardType: TextInputType.phone,
//                       decoration: InputDecoration(
//                         prefixIcon: Icon(
//                           Icons.search,
//                           color: Color.fromRGBO(186, 186, 186, 1),
//                         ),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(35),
//                           borderSide: BorderSide(
//                               color: Color.fromRGBO(186, 186, 186, 1),
//                               width: 1.0),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(26),
//                           borderSide: BorderSide(
//                               color: Color.fromRGBO(9, 96, 186, 1), width: 1.5),
//                         ),
//                         hintText: 'Search',
//                         hintStyle: TextStyle(
//                             color: Color.fromRGBO(186, 186, 186, 1),
//                             fontSize: 14,
//                             fontWeight: FontWeight.w500),
//                       ),
//                     ),
//                   ),
//                   Row(
//                     children: [
//                       IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.person,
//                             color: Colors.black,
//                           )),
//                       Text(
//                         totalMembers.toString(), // Show the total number of members here
//                         style: TextStyle(
//                             color: Colors.blue,
//                             fontWeight: FontWeight.w500,
//                             fontSize: 12),
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Row(
//                   children: [
//                     Text(status,
//                         style: TextStyle(
//                             fontWeight: FontWeight.w500,
//                             fontSize: 14,
//                             color: Color.fromRGBO(9, 96, 186, 1))),
//                     SizedBox(width: 10),
//                     PopupMenuButton<String>(
//                       icon: Icon(
//                         Icons.keyboard_arrow_down,
//                         color: Colors.blue,
//                       ),
//                       onSelected: (String value) {
//                         setState(() {
//                           status = value; // Update the status text
//                         });
//                       },
//                       itemBuilder: (BuildContext context) {
//                         return [
//                           PopupMenuItem<String>(
//                             value: "Active",
//                             child: Text("Active"),
//                           ),
//                           PopupMenuItem<String>(
//                             value: "Inactive",
//                             child: Text("Inactive"),
//                           ),
//                         ];
//                       },
//                     ),
//                   ],
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 35,
//             ),
//             // Check if there are members to show
//             membersToShow.isNotEmpty
//                 ? ListView.builder(
//                     shrinkWrap: true,
//                     physics: NeverScrollableScrollPhysics(),
//                     itemCount: membersToShow.length,
//                     itemBuilder: (context, index) {
//                       return Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             border: Border.all(color:Color.fromRGBO(241, 241, 241, 1), width: 1),
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           child: ListTile(
//                             leading: CircleAvatar(
//                               backgroundImage: AssetImage("assets/images/mouth.png"),
//                               radius: 20,
//                             ),
                            
//                             title: Text(membersToShow[index]),
//                             subtitle: Text("Shine 1 ( 4:00 PM - 6:00 PM )",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14,),),
//                             trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios, size: 18,)),
                          
//                           ),
//                         ),
//                       );
//                     },
//                   )
//                 : Padding(
//                     padding: const EdgeInsets.only(top: 16.0, right: 25, left: 25),
//                     child: Column(
//                       children: [
//                         Image.asset("assets/images/play.png"),
//                         SizedBox(height: 15),
//                         Text("No Students Found",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w500, fontSize: 16)),
//                       ],
//                     ),
//                   ),
//             SizedBox(
//               height: 210,
//             ),


           
//             Positioned.fill(child:   InkWell(
//               onTap: () {},
//               child: Container(
//                 height: 64,
//                 width: 315,
//                 decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                         begin: Alignment.centerLeft,
//                         end: Alignment.centerRight,
//                         colors: [
//                           Color.fromRGBO(13, 149, 211, 1),
//                           Color.fromRGBO(9, 96, 186, 1),
//                         ]),
//                     borderRadius: BorderRadius.circular(84)),
//                 child: Center(
//                     child: Text(
//                   "Add Students",
//                   style: TextStyle(
//                       fontWeight: FontWeight.w700,
//                       fontSize: 16,
//                       color: Color.fromRGBO(251, 251, 251, 1)),
//                 )),
//               ),
//             ))
          
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Nodatafound extends StatefulWidget {
  const Nodatafound({super.key});

  @override
  State<Nodatafound> createState() => _NodatafoundState();
}

class _NodatafoundState extends State<Nodatafound> {
  String status = "Active"; // The status to be displayed beside the arrow

  // Sample data for members
  List<String> activeMembers = [
    "Shivam Jain",
    "Shivam Jain",
    "Shivam Jain",
    "Kanha Jain",
    "Krishna Jain",
    "Narayan Jain",
    "Narayan 3"
  ];
  List<String> inactiveMembers = ["Bob White", "Charlie Black", "David Gray"];

  @override
  Widget build(BuildContext context) {
    // Determine the list of members based on the current status
    List<String> membersToShow =
        status == "Active" ? activeMembers : inactiveMembers;

    // Calculate the total number of members (active + inactive)
    int totalMembers = activeMembers.length + inactiveMembers.length;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Center",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.tune,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
              )),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 80.0),
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
                                  Icons.person,
                                  color: Colors.black,
                                )),
                            Text(
                              totalMembers.toString(), // Show the total number of members here
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            )
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
                          Text(status,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color.fromRGBO(9, 96, 186, 1))),
                          SizedBox(width: 10),
                          PopupMenuButton<String>(
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.blue,
                            ),
                            onSelected: (String value) {
                              setState(() {
                                status = value; // Update the status text
                              });
                            },
                            itemBuilder: (BuildContext context) {
                              return [
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
                      )
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  // Check if there are members to show
                  membersToShow.isNotEmpty
                      ? ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: membersToShow.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromRGBO(241, 241, 241, 1),
                                      width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage:
                                        AssetImage("assets/images/mouth.png"),
                                    radius: 20,
                                  ),
                                  title: Text(membersToShow[index]),
                                  subtitle: Text(
                                    "Shine 1 ( 4:00 PM - 6:00 PM )",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                  trailing: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 18,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        )
                      : Padding(
                          padding: const EdgeInsets.only(
                              top: 16.0, right: 25, left: 25),
                          child: Column(
                            children: [
                              Image.asset("assets/images/play.png"),
                              SizedBox(height: 15),
                              Text("No Students Found",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16)),
                            ],
                          ),
                        ),
                  SizedBox(
                    height: 210,
                  ),
                ],
              ),
            ),
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
                    "Add Students",
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
    );
  }
}

