import 'package:flutter/material.dart';
import 'package:khelnet/Pages/Fees/PaymentLink.dart';
import 'package:khelnet/Pages/coaches/Head%20Coach/homepage.dart';
import 'package:khelnet/Pages/wallet.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  List PageList = [
    const Homepage(),
      const Wallet(), 
  ];


   final List<BottomNavigationBarItem> _items = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.sports_basketball),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Image(image:AssetImage("assets/images/newwallet.png", )),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.notifications),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: '',
    ),
  ];
  
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        
        items: _items, 
        
        
        ),
    );
  }
}
