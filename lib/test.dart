import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isGridView = true; // Variable to control grid or list view
  bool viewAll = false; // Control variable for "View All" functionality

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
    // Determine how many items to show based on "View All" status
    int itemCount = viewAll ? items.length : items.length - 1;

    return Scaffold(
      appBar: AppBar(
        title: Text('Khelnet Badminton Academy'),
        actions: [
          Container(
            margin: EdgeInsets.all(8),  // Add margin for better spacing
            decoration: BoxDecoration(
              color: isGridView ? Colors.blue.withOpacity(0.1) : Colors.grey.withOpacity(0.1),
              shape: BoxShape.circle,  // Make the button circular
            ),
            child: IconButton(
              icon: Icon(
                isGridView ? Icons.grid_view : Icons.list,
                color: isGridView ? Colors.blue : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  isGridView = !isGridView; // Toggle the view
                });
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: isGridView
                ? buildGridView(itemCount)  // Pass itemCount to determine how many items to show
                : buildListView(itemCount),  // Pass itemCount to determine how many items to show
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  viewAll = !viewAll; // Toggle "View All" state
                });
              },
              child: Text(viewAll ? 'Show Less' : 'View All'), // Button label changes dynamically
            ),
          ),
        ],
      ),
    );
  }

  // Grid View Layout
  Widget buildGridView(int itemCount) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: itemCount,  // Use the passed itemCount
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
  Widget buildListView(int itemCount) {
    return ListView.builder(
      padding: EdgeInsets.all(10),
      itemCount: itemCount,  // Use the passed itemCount
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
