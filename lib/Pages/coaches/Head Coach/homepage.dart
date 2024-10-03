import 'package:flutter/material.dart';
import 'package:khelnet/Pages/Fees/Fees.dart';
import 'package:khelnet/Pages/Students/Fees.dart';
import 'package:khelnet/Pages/coaches/Head%20Coach/Academy.dart';
import 'package:khelnet/Pages/coaches/Head%20Coach/AttendancePage.dart';
import 'package:khelnet/Pages/coaches/CoachAttendancePage.dart';
import 'package:khelnet/Pages/coaches/Head%20Coach/ExpensesPage.dart';
import 'package:khelnet/Pages/Plans/FeesPage.dart';
import 'package:khelnet/Pages/coaches/Head%20Coach/PerformanceRatingPage.dart';
import 'package:khelnet/Report/Report.dart';
import 'package:khelnet/Pages/academy.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isGridView = true;
  bool showAll = false;
  final List<Map<String, String>> items = [
    {"title": "My Academy", "image": "assets/images/1.png"},
    {"title": "Attendance", "image": "assets/images/2.png"},
    {"title": "Fees", "image": "assets/images/3.png"},
    {"title": "Reports", "image": "assets/images/4.png"},
    {"title": "Performance Rating", "image": "assets/images/5.png"},
    {"title": "Coach Attendance", "image": "assets/images/6.png"},
    {"title": "Expenses", "image": "assets/images/7.png"},
  ];

  void navigateToPage(String title) {
    // Implement navigation based on the title
    switch (title) {
      case "My Academy":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Academy1()),
        );
        break;
      case "Attendance":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AttendancePage()),
        );
        break;
      case "Fees":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Fees1()),
        );
        break;
      case "Reports":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ReportsPage()),
        );
        break;
      case "Performance Rating":
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const PerformanceRatingPage()),
        );
        break;
      case "Coach Attendance":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CoachAttendancePage()),
        );
        break;
      case "Expenses":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ExpensesPage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(13, 149, 211, 1),
                  Color.fromRGBO(9, 96, 186, 1),
                ],
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/m.png"),
                        radius: 40,
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color.fromRGBO(251, 251, 251, 1)),
                            ),
                            Text(
                              "Khelnet Badminton Academy",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Color.fromRGBO(251, 251, 251, 1)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 650,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Card(
                          elevation: 15,
                          child: Container(
                            height: 107,
                            width: 360,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1.5,
                                    color:
                                        const Color.fromRGBO(241, 241, 241, 1)),
                                borderRadius: BorderRadius.circular(18),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    // Handle navigation
                                    navigateToPage("My Academy");
                                  },
                                  child:
                                      Image.asset("assets/images/remind.png"),
                                ),
                                InkWell(
                                  onTap: () {
                                    // Handle navigation
                                    navigateToPage("Attendance");
                                  },
                                  child: Image.asset("assets/images/add.png"),
                                ),
                                InkWell(
                                  onTap: () {
                                    // Handle navigation
                                    navigateToPage("Fees");
                                  },
                                  child:
                                      Image.asset("assets/images/report.png"),
                                ),
                                InkWell(
                                  onTap: () {
                                    // Handle navigation
                                    navigateToPage("Reports");
                                  },
                                  child:
                                      Image.asset("assets/images/overview.png"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: Icon(
                                isGridView ? Icons.grid_view : Icons.list,
                                color: isGridView ? Colors.blue : Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  isGridView = !isGridView;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: isGridView
                            ? GridView.builder(
                                shrinkWrap: true,
                                itemCount: showAll ? items.length : 6,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 8,
                                  crossAxisCount: 2,
                                  childAspectRatio: 1.7,
                                ),
                                itemBuilder: (context, index) {
                                  return Card(
                                    elevation: 15,
                                    color: Colors.white,
                                    child: buildContainer(
                                      items[index]["title"]!,
                                      items[index]["image"]!,
                                    ),
                                  );
                                },
                              )
                            : ListView.builder(
                                shrinkWrap: true,
                                itemCount: showAll ? items.length : 6,
                                itemBuilder: (context, index) {
                                  return buildListTile(
                                    items[index]["title"]!,
                                    items[index]["image"]!,
                                  );
                                },
                              ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            showAll = !showAll;
                          });
                        },
                        child: Text(showAll ? "View Less" : "View All"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildContainer(String title, String image) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Column(
          children: [
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(image),
                  IconButton(
                    onPressed: () {
                      navigateToPage(title);
                    },
                    icon:
                        const Icon(Icons.arrow_forward_ios, color: Colors.blue),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListTile(String title, String image) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Image.asset(image),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.blue),
        onTap: () {
          navigateToPage(title);
        },
      ),
    );
  }
}
