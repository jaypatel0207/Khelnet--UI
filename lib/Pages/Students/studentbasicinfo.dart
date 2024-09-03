import 'package:flutter/material.dart';

class Studentbasicinfo extends StatefulWidget {
  final String name;
  Studentbasicinfo({super.key, required this.name});

  @override
  State<Studentbasicinfo> createState() => _StudentbasicinfoState();
}

class _StudentbasicinfoState extends State<Studentbasicinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [Text("Name: ${widget.name}")],
      ),
    );
  }
}
