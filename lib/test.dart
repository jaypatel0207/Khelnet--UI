import 'package:flutter/material.dart';



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Advance Payment')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Advance',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '₹ 50000',
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ),
                IconButton(
                  key: ValueKey("toggleButton"), // Add a key here
                  icon: Icon(isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down),
                  onPressed: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                ),
              ],
            ),
            AnimatedContainer(
              key: ValueKey("expandableContainer"), // Add a key here
              duration: Duration(milliseconds: 200), // Add some animation
              height: isExpanded ? 60.0 : 0.0,
              child: isExpanded
                  ? Container(
                      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Paid',
                            style: TextStyle(color: Colors.green, fontSize: 16),
                          ),
                          Text(
                            '23/04/2024',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    )
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
