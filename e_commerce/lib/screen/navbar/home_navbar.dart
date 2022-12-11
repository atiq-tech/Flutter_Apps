import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_commerce/screen/navbar/category_page.dart';
import 'package:e_commerce/screen/navbar/order_page.dart';
import 'package:e_commerce/screen/navbar/product_page.dart';
import 'package:e_commerce/screen/navbar/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeNavBar extends StatefulWidget {
  const HomeNavBar({super.key});

  @override
  State<HomeNavBar> createState() => _HomeNavBarState();
}

class _HomeNavBarState extends State<HomeNavBar> {
  final myPages = [
    OrderPage(),
    CategoryPage(),
    ProductPage(),
    ProfilePage(),
  ];
  int indexPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myPages[indexPage],
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        height: 60.0,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
          Icon(Icons.person, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            indexPage = index;
          });
        },
      ),
    );
  }
}
