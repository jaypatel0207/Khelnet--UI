import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// Main function which starts the app

class MyHomePage extends StatefulWidget {
  MyHomePage({required Key key, required this.title}) : super(key: key);

  // This widget is the home page of your application.
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TimeOfDay _time = TimeOfDay.now();
  late TimeOfDay picked;
  late TextEditingController _timeController;

  @override
  void initState() {
    super.initState();
    _timeController = TextEditingController();
    _timeController.text = _formatTimeOfDay(_time);
  }

  @override
  void dispose() {
    _timeController.dispose();
    super.dispose();
  }

  Future<void> selectTime(BuildContext context) async {
    picked = (await showTimePicker(
      context: context,
      initialTime: _time,
    ))!;

    setState(() {
      _time = picked;
      _timeController.text = _formatTimeOfDay(_time);
      print(picked);
    });
  }

  String _formatTimeOfDay(TimeOfDay time) {
    final now = DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, time.hour, time.minute);
    final formatter = DateFormat.jm(); // Format the time (e.g., 3:00 PM)
    return formatter.format(dt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              iconSize: 80,
              icon: Icon(
                Icons.alarm,
                size: 80,
              ),
              onPressed: () {
                selectTime(context);
              },
            ),
            SizedBox(
              height: 60,
            ),
            TextField(
              controller: _timeController,
              readOnly: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Selected Time',
              ),
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}






