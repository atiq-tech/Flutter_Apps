import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopping_app/widgets/item_appbar.dart';
import 'package:shopping_app/widgets/itembottom_navbar.dart';

class ItemPage extends StatelessWidget {
  List<Color> colors = [
    Colors.indigo,
    Colors.red,
    Colors.black,
    Colors.brown,
    Colors.teal
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        ItemAppBar(),
        Padding(
          padding: EdgeInsets.only(top: 2, left: 16, right: 16, bottom: 2),
          child: Image.asset(
            "images/8.jpg",
            height: 300,
          ),
        ),
        Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 30,
            child: Container(
              width: double.infinity,
              color: Color(0xFFEDECF2),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 40, bottom: 15),
                      child: Row(
                        children: [
                          Text(
                            "Product Title",
                            style: TextStyle(
                                fontSize: 28,
                                color: Color(0xFF4C53A5),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4),
                              itemSize: 20,
                              itemCount: 5,
                              itemBuilder: (context, _) => Icon(
                                    Icons.favorite,
                                    color: Color(0xFF4C53A5),
                                  ),
                              onRatingUpdate: (index) {}),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          offset: Offset(0, 3),
                                          spreadRadius: 3,
                                          blurRadius: 10)
                                    ]),
                                child: Icon(
                                  CupertinoIcons.plus,
                                  color: Color(0xFF4C53A5),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "01",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xFF4C53A5),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          offset: Offset(3, 3),
                                          spreadRadius: 3,
                                          blurRadius: 10)
                                    ]),
                                child: Icon(
                                  CupertinoIcons.minus,
                                  color: Color(0xFF4C53A5),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        "This is more detailed description of the product.You can write here more about the product.This is lengthy description.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF4C53A5),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            "Size:",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF4C53A5),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Row(
                            children: [
                              for (int i = 5; i < 10; i++)
                                Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          blurRadius: 8,
                                          spreadRadius: 2,
                                        )
                                      ]),
                                  child: Text(
                                    i.toString(),
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xFF4C53A5),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            "Color:",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF4C53A5),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Row(
                            children: [
                              for (int i = 0; i < 5; i++)
                                Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                      color: colors[i],
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          blurRadius: 8,
                                          spreadRadius: 2,
                                        )
                                      ]),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ))
      ]),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}
