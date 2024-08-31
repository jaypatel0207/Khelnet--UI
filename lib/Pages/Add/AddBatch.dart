import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Addbatch extends StatefulWidget {
  const Addbatch({super.key});

  @override
  State<Addbatch> createState() => _AddbatchState();
}

class _AddbatchState extends State<Addbatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Add Batch',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
          ),
          centerTitle: true,
        ),
    );
  }
}