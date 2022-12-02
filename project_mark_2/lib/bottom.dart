import 'package:flutter/material.dart';
import 'dart:ui' show lerpDouble;
import 'package:project_mark_2/pages/page1.dart';
import 'package:project_mark_2/pages/page2.dart';
import 'package:project_mark_2/pages/page3.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currtntindex = 0;
  List page =[
   
    Page1(),
     Page2(),
    Page3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_currtntindex],
      bottomNavigationBar: BottomNavigationBar(
           backgroundColor: Colors.amber[800],
           selectedItemColor: Colors.black87,
           unselectedItemColor: Colors.white60,
           selectedFontSize: 14,
           unselectedFontSize: 10,
           showUnselectedLabels: false,

        currentIndex: _currtntindex,
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: "Home",
        backgroundColor: Colors.amber[800],
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.offline_bolt),
          label: "Cupons",
          backgroundColor: Colors.amber[800],
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_rounded),
          label: "Cart",
         backgroundColor: Colors.amber[800],
        )
      ],
      onTap: (index){
       setState(() {
          _currtntindex = index;
       });
      },
      ),
    );
  }
}
