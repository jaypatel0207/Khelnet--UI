import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PaymentStatusScreen(),
    );
  }
}

class PaymentStatusScreen extends StatefulWidget {
  @override
  _PaymentStatusScreenState createState() => _PaymentStatusScreenState();
}

class _PaymentStatusScreenState extends State<PaymentStatusScreen> {
  TextEditingController _controller = TextEditingController();
  String _selectedPaymentStatus = 'Unpaid'; // Initial default value
  Color _statusTextColor = Colors.red; // Initial color for Unpaid

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Status'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              readOnly: true,  // Makes it non-editable
              style: TextStyle(
                color: _statusTextColor, // Dynamic text color
              ),
              decoration: InputDecoration(
                labelText: 'Payment Status',
                suffixIcon: IconButton(
                  icon: Icon(Icons.arrow_drop_down),
                  onPressed: () {
                    _showPaymentStatusBottomSheet(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showPaymentStatusBottomSheet(BuildContext context) {
    String tempSelectedStatus = _selectedPaymentStatus; // Temporarily store the current status for the bottom sheet

    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Payment Status',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  RadioListTile<String>(
                    title: Text('Unpaid'),
                    value: 'Unpaid',
                    groupValue: tempSelectedStatus,
                    onChanged: (value) {
                      setState(() {
                        tempSelectedStatus = value!;
                        _updateStatus(tempSelectedStatus);
                      });
                    },
                    activeColor: Colors.red,
                  ),
                  RadioListTile<String>(
                    title: Text('Paid'),
                    value: 'Paid',
                    groupValue: tempSelectedStatus,
                    onChanged: (value) {
                      setState(() {
                        tempSelectedStatus = value!;
                        _updateStatus(tempSelectedStatus);
                      });
                    },
                    activeColor: Colors.green,
                  ),
                  RadioListTile<String>(
                    title: Text('Partially Paid'),
                    value: 'Partially Paid',
                    groupValue: tempSelectedStatus,
                    onChanged: (value) {
                      setState(() {
                        tempSelectedStatus = value!;
                        _updateStatus(tempSelectedStatus);
                      });
                    },
                    activeColor: Colors.purple,
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // background (button) color
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context); // Close the bottom sheet
                    },
                    child: Text('Okay', style: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(height: 10.0),
                ],
              ),
            );
          },
        );
      },
    );
  }

  // Method to update status and color instantly
  void _updateStatus(String status) {
    setState(() {
      _selectedPaymentStatus = status;
      _controller.text = status;

      // Change text color based on the selected option
      if (status == 'Unpaid') {
        _statusTextColor = Colors.red;
      } else if (status == 'Paid') {
        _statusTextColor = Colors.green;
      } else if (status == 'Partially Paid') {
        _statusTextColor = Colors.purple;
      }
    });
  }
}



