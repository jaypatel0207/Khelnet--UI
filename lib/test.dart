

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List to track selected items
  List<String> selectedSports = [];

  void _openBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.5, // Adjust initial size as per need
          minChildSize: 0.3,
          maxChildSize: 0.8,
          builder: (context, scrollController) {
            return Column(
              children: [
                Expanded(  // Ensure GridView uses remaining space
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                    childAspectRatio: 2, // Adjust aspect ratio as needed
                    children: [
                      _buildSelectionItem("Cricket"),
                      _buildSelectionItem("Football"),
                      _buildSelectionItem("Tennis"),
                      _buildSelectionItem("Basketball"),
                      _buildSelectionItem("Badminton"),
                      _buildSelectionItem("Table Tennis"),
                      _buildSelectionItem("Martial Arts"),
                      _buildSelectionItem("Roller Sports"),
                      _buildSelectionItem("Gymnastics"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Done'),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  // Widget to build selectable containers
  Widget _buildSelectionItem(String sportName) {
    bool isSelected = selectedSports.contains(sportName);

    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            selectedSports.remove(sportName);
          } else {
            selectedSports.add(sportName);
          }
        });
      },
      child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.black12),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                isSelected ? Icons.check_circle : Icons.circle_outlined,
                color: isSelected ? Colors.white : Colors.black,
              ),
              SizedBox(height: 8),
              Text(
                sportName,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Method to build containers for the selected items
  List<Widget> _buildSelectedSportContainers() {
    return selectedSports.map((sport) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          sport,
          style: TextStyle(color: Colors.white),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Sports')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container to show the selected sports as individual containers
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Wrap(
              alignment: WrapAlignment.center,
              children: _buildSelectedSportContainers(),
            ),
          ),
          ElevatedButton(
            onPressed: _openBottomSheet,
            child: Text('Select Sports'),
          ),
        ],
      ),
    );
  }
}
