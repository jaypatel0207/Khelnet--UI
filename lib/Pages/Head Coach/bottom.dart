import 'package:flutter/material.dart';
import 'package:khelnet/Pages/Head%20Coach/homepage.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  List PageList = [
    Homepage(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        
        backgroundColor: Color.fromRGBO(9, 96, 186, 1),
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex, 
        fixedColor: Colors.white,
        
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.sports_basketball),label: ""
        ), 
          BottomNavigationBarItem(
          icon: Image.asset("assets/images/cup.png", color: Colors.white,), label: ""
        ), 
          BottomNavigationBarItem(
          icon: Image.asset("assets/images/heart.png", color: Colors.white,), label: ""
        ), 
          BottomNavigationBarItem(
          icon: Image.asset("assets/images/bell.png", color: Colors.white,),label: ""
        ), 
          BottomNavigationBarItem(
          icon: Image.asset("assets/images/Ellipse5.png",),label: ""
        )
      ]),
    );
  }
}
