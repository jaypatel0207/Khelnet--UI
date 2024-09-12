import 'package:flutter/material.dart';

class DownloadButtons extends StatefulWidget {
  @override
  _DownloadButtonsState createState() => _DownloadButtonsState();
}

class _DownloadButtonsState extends State<DownloadButtons> {
  bool isPdfSelected = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isPdfSelected = true;
              });
            },
            child: Container(
             
              decoration: BoxDecoration(
                color: isPdfSelected ? Colors.blue : Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                children: [
                  Icon(Icons.picture_as_pdf,
                      color: isPdfSelected ? Colors.white : Colors.black),
                
                  Text(
                    'Download as Pdf',
                    style: TextStyle(
                      color: isPdfSelected ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isPdfSelected = false;
              });
            },
            child: Container(
             
              decoration: BoxDecoration(
                color: !isPdfSelected ? Colors.blue : Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                children: [
                  Icon(Icons.table_chart,
                      color: !isPdfSelected ? Colors.white : Colors.black),
               
                  Text(
                    'Download as Excel',
                    style: TextStyle(
                      color: !isPdfSelected ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
