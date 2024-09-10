import 'package:flutter/material.dart';

class PaymentStatusWidget extends StatelessWidget {
  final bool isPaid;

  PaymentStatusWidget({required this.isPaid});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Payment Status Text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Payment Status',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 4),
              Text(
                isPaid ? 'Paid' : 'Unpaid',
                style: TextStyle(
                  color: isPaid ? Colors.green : Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          
          // Conditional IconButton
          if (!isPaid) 
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                // Handle button press
              },
            ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Payment Status')),
      body: Center(
        child: PaymentStatusWidget(isPaid: false), // Pass true for 'Paid' status
      ),
    ),
  ));
}
