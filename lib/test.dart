import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isGridView = true;  // Variable to control grid or list view

  // Sample data
  final List<Map<String, dynamic>> items = [
    {'title': 'My Academy', 'icon': Icons.school},
    {'title': 'Attendance', 'icon': Icons.check_circle},
    {'title': 'Fees', 'icon': Icons.attach_money},
    {'title': 'Reports', 'icon': Icons.bar_chart},
    {'title': 'Performance Rating', 'icon': Icons.star},
    {'title': 'Coach Attendance', 'icon': Icons.people},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Khelnet Badminton Academy'),
        actions: [
          IconButton(
            icon: Icon(isGridView ? Icons.list : Icons.grid_view),
            onPressed: () {
              setState(() {
                isGridView = !isGridView;
              });
            },
          ),
        ],
      ),
      body: isGridView ? buildGridView() : buildListView(),
    );
  }

  // Grid View Layout
  Widget buildGridView() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          child: InkWell(
            onTap: () {
              // Handle item click
            },
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(items[index]['icon'], size: 30),
                  SizedBox(height: 8),
                  Text(items[index]['title']),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  // List View Layout
  Widget buildListView() {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: Icon(items[index]['icon'], size: 30),
            title: Text(items[index]['title']),
            onTap: () {
              // Handle item click
            },
          ),
        );
      },
    );
  }
}
