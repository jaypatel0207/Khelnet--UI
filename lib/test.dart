import 'package:flutter/material.dart';

class CoachReportPage extends StatefulWidget {
  @override
  _CoachReportPageState createState() => _CoachReportPageState();
}

class _CoachReportPageState extends State<CoachReportPage> {
  // List of coaches
  final List<String> coaches = ['Coach 1', 'Coach 2', 'Coach 3', 'Coach 4', 'Coach 5', 'Coach 6'];

  // List to track which coaches are selected
  List<bool> selectedCoaches = [false, false, false, false, false, false];

  // Controller for the TextField
  TextEditingController coachController = TextEditingController();

  // Flag to indicate if all items are selected
  bool selectAll = false;

  // Method to get the list of selected coach names
  List<String> getSelectedCoachNames() {
    List<String> selectedNames = [];
    for (int i = 0; i < coaches.length; i++) {
      if (selectedCoaches[i]) {
        selectedNames.add(coaches[i]);
      }
    }
    return selectedNames;
  }

  // Method to update the TextField with selected coach names
  void updateCoachTextField() {
    coachController.text = getSelectedCoachNames().join(', ');
  }

  // Method to show the Bottom Sheet
  void _showCoachSelectionSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                // "Select All" Checkbox
                CheckboxListTile(
                  title: Text('Select All'),
                  value: selectAll,
                  onChanged: (bool? value) {
                    setState(() {
                      selectAll = value ?? false;
                      // Update all checkboxes based on selectAll value
                      for (int i = 0; i < selectedCoaches.length; i++) {
                        selectedCoaches[i] = selectAll;
                      }
                    });
                  },
                ),
                // List of checkboxes for each coach
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: coaches.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CheckboxListTile(
                      title: Text(coaches[index]),
                      value: selectedCoaches[index],
                      onChanged: (bool? value) {
                        setState(() {
                          selectedCoaches[index] = value ?? false;
                          // If any checkbox is deselected, uncheck "Select All"
                          if (!selectedCoaches[index]) {
                            selectAll = false;
                          } else {
                            // If all checkboxes are selected, check "Select All"
                            selectAll = selectedCoaches.every((element) => element);
                          }
                        });
                      },
                    );
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      // Update the TextField in the main UI
                      updateCoachTextField();
                    });
                    Navigator.pop(context);
                  },
                  child: Text('Select'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coach Reports'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // TextField to show selected coaches
            GestureDetector(
              onTap: _showCoachSelectionSheet,
              child: AbsorbPointer( // Prevent direct editing
                child: TextField(
                  controller: coachController,
                  decoration: InputDecoration(
                    labelText: 'Select Coach',
                    hintText: 'Select one or more coaches',
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

void main() {
  runApp(MaterialApp(
    home: CoachReportPage(),
  ));
}
