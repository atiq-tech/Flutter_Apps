import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sliversapp/screen/nav_bar/group.dart';
import 'package:sliversapp/screen/nav_bar/home.dart';
import 'package:sliversapp/screen/nav_bar/menu.dart';
import 'package:sliversapp/screen/nav_bar/profile.dart';

class NavBarDemo extends StatefulWidget {
  const NavBarDemo({super.key});

  @override
  State<NavBarDemo> createState() => _NavBarDemoState();
}

class _NavBarDemoState extends State<NavBarDemo> {
  int _currentIndex = 2;
  List<Widget> pages = [
    GroupPage(),
    HomePage(),
    MenuPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 20,
        centerTitle: true,
        title: const Text('GoogleNavBar'),
      ),
      body: Center(
        child: pages.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.groups),
              label: "Groups"),
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 247, 5, 5),
              icon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 3, 247, 44),
              icon: Icon(Icons.menu),
              label: "Menu"),
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 194, 4, 241),
              icon: Icon(Icons.person),
              label: "Profile"),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(
            () {
              _currentIndex = index;
            },
          );
        },
      ),
    );
  }
}
