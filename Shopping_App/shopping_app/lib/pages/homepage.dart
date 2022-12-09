import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopping_app/widgets/homeappbar.dart';
import 'package:shopping_app/widgets/items_widget.dart';
import 'package:shopping_app/widgets/widget_categories.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        HomeAppBar(),
        Container(
          // Height Temporary
          // height: 500,
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: Color(0xFFEDECF2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),
          child: Column(
            children: [
              Container(
                // Search content
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 300,
                      margin: EdgeInsets.only(left: 5),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here...",
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 58, 57, 57),
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.camera_alt,
                      size: 26,
                      color: Color(0xFF4C53A5),
                    ),
                  ],
                ),
              ),
              //Categories
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF4C53A5),
                      fontWeight: FontWeight.bold),
                ),
              ),
              //Categories content
              WidgetCategories(),

              //items
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Text(
                  "Best Selling",
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF4C53A5),
                      fontWeight: FontWeight.bold),
                ),
              ),
              //items Widgets
              ItemsWidgets(),
            ],
          ),
        ),
      ]),
      bottomNavigationBar: CurvedNavigationBar(
          onTap: (index) {},
          height: 60,
          backgroundColor: Colors.transparent,
          color: Color(0xFF4C53A5),
          items: [
            Icon(Icons.home, size: 30, color: Colors.white),
            Icon(CupertinoIcons.cart_fill, size: 30, color: Colors.white),
            Icon(Icons.list, size: 30, color: Colors.white)
          ]),
    );
  }
}
