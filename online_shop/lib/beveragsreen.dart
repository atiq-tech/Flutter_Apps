import 'dart:ui';

import 'package:flutter/material.dart';

class BeverageScreen extends StatefulWidget {
  const BeverageScreen({Key? key}) : super(key: key);

  @override
  _BeverageScreenState createState() => _BeverageScreenState();
}

class _BeverageScreenState extends State<BeverageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          "Beverages",
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.tune_outlined,
            color: Colors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 44),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 160,
                      height: 240,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.withOpacity(0.5)),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              left: 55,
                              top: 20,
                              child: Image.asset("assets/dietcoke.png")),
                          Positioned(
                            bottom: 90,
                            left: 20,
                            child: Text(
                              "Diet Coke",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                          Positioned(
                            bottom: 70,
                            left: 20,
                            child: Text(
                              "355ml,Price",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            left: 20,
                            child: Text(
                              "\$1.99",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                          Positioned(
                            bottom: 30,
                            right: 25,
                            child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Icon(
                                  Icons.add_box_rounded,
                                  color: Colors.green,
                                  size: 50,
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 160,
                      height: 240,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.withOpacity(0.5)),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              left: 35,
                              top: 20,
                              child: Image.asset("assets/treetop.png")),
                          Positioned(
                            bottom: 90,
                            left: 20,
                            child: Text(
                              "Apple & Grape",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                          Positioned(
                            bottom: 70,
                            left: 20,
                            child: Text(
                              "Juice",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                          Positioned(
                            bottom: 50,
                            left: 20,
                            child: Text(
                              "2l,Price",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            left: 20,
                            child: Text(
                              "\$15.99",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                          Positioned(
                            bottom: 30,
                            right: 25,
                            child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Icon(
                                  Icons.add_box_rounded,
                                  color: Colors.green,
                                  size: 50,
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 160,
                      height: 240,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.withOpacity(0.5)),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              left: 55,
                              top: 20,
                              child: Image.asset("assets/cococola.png")),
                          Positioned(
                            bottom: 90,
                            left: 20,
                            child: Text(
                              "Coca Cola Can",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                          Positioned(
                            bottom: 70,
                            left: 20,
                            child: Text(
                              "325ml,Price",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            left: 20,
                            child: Text(
                              "\$4.99",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                          Positioned(
                            bottom: 30,
                            right: 25,
                            child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Icon(
                                  Icons.add_box_rounded,
                                  color: Colors.green,
                                  size: 50,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 43),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 160,
                        height: 240,
                        decoration: BoxDecoration(
                            //color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.4), width: 1)),
                        child: Stack(
                          children: [
                            Positioned(
                                left: 55,
                                top: 20,
                                child: Image.asset("assets/sprite.png")),
                            Positioned(
                                left: 10,
                                top: 130,
                                child: Text(
                                  "Sprite Can",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                )),
                            Positioned(
                                left: 10,
                                top: 155,
                                child: Text(
                                  "325 ml, Price",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                )),
                            Positioned(
                                left: 10,
                                bottom: 20,
                                child: Text(
                                  "\$1.50",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                )),
                            Positioned(
                                right: 10,
                                bottom: 5,
                                child: Icon(
                                  Icons.add_box_rounded,
                                  color: Colors.green,
                                  size: 50,
                                ))
                          ],
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: 160,
                        height: 240,
                        decoration: BoxDecoration(
                            // color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.4), width: 1)),
                        child: Stack(
                          children: [
                            Positioned(
                                left: 30,
                                top: 20,
                                child: Image.asset("assets/orangejuice.png")),
                            Positioned(
                                left: 10,
                                top: 130,
                                child: Text(
                                  "Orange Juice",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                )),
                            Positioned(
                                left: 10,
                                top: 155,
                                child: Text(
                                  "2l, Price",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                )),
                            Positioned(
                                left: 10,
                                bottom: 20,
                                child: Text(
                                  "\$15.99",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                )),
                            Positioned(
                                right: 10,
                                bottom: 5,
                                child: Icon(
                                  Icons.add_box_rounded,
                                  color: Colors.green,
                                  size: 50,
                                ))
                          ],
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: 160,
                        height: 240,
                        decoration: BoxDecoration(
                            // color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.4), width: 1)),
                        child: Stack(
                          children: [
                            Positioned(
                                left: 50,
                                top: 20,
                                child: Image.asset("assets/pepsi.png")),
                            Positioned(
                                left: 10,
                                top: 130,
                                child: Text(
                                  "Pepsi Can",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                )),
                            Positioned(
                                left: 10,
                                top: 155,
                                child: Text(
                                  "330 ml, Price",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                )),
                            Positioned(
                                left: 10,
                                bottom: 20,
                                child: Text(
                                  "\$4.99",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                )),
                            Positioned(
                                right: 10,
                                bottom: 5,
                                child: Icon(
                                  Icons.add_box_rounded,
                                  color: Colors.green,
                                  size: 50,
                                ))
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
