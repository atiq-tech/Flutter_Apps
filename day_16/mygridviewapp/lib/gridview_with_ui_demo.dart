import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GridviewUIDemo extends StatefulWidget {
  const GridviewUIDemo({super.key});

  @override
  State<GridviewUIDemo> createState() => _GridviewUIDemoState();
}

class _GridviewUIDemoState extends State<GridviewUIDemo> {
  List<String> _myProduct = [
    "Computer",
    "Laptop",
    "HeadPhone",
    "Mouse",
    "Monitor",
    "Keyboard",
    "MotorCycle",
    "Router",
    "Mobile",
    "Motherboard"
  ];
  List<String> _myimglist = [
    "assets/cmptr.png",
    "assets/lptp.jpg",
    "assets/hdpn.jpg",
    "assets/mouse.png",
    "assets/monitor.png",
    "assets/keyb.jpg",
    "assets/bik.png",
    "assets/rout.jpg",
    "assets/mdb.png",
    "assets/images2.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 122, 250, 218),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Text(
              "MAD Online Shopping.",
              style: TextStyle(
                  color: Color.fromARGB(255, 194, 6, 115),
                  fontWeight: FontWeight.w900,
                  fontSize: 25.0),
            ),
            Text(
              "Here is Beautiful offers...",
              style: TextStyle(
                  color: Color.fromARGB(255, 35, 117, 2),
                  fontWeight: FontWeight.w900,
                  fontSize: 25.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              height: 150.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 150.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 3, 6, 138),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 15.0),
                          child: Expanded(
                            flex: 1,
                            child: Text(
                              "Here is Beautiful offers for yours.",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 252, 255, 251),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Expanded(
                            flex: 1,
                            child: Container(
                              child: Image.asset(
                                "assets/images1.jpg",
                                height: 80.0,
                                width: 140.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    height: 150.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 3, 112, 48),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 15.0),
                          child: Expanded(
                            flex: 1,
                            child: Text(
                              "Here is Beautiful offers for yours.",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 252, 255, 251),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Expanded(
                            flex: 1,
                            child: Container(
                              child: Image.asset(
                                "assets/rout.jpg",
                                height: 80.0,
                                width: 140.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    height: 150.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 100, 5, 117),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 14.0),
                          child: Expanded(
                            flex: 1,
                            child: Text(
                              "Here is Beautiful offers for yours.",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 252, 255, 251),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Expanded(
                            flex: 1,
                            child: Container(
                              child: Image.asset(
                                "assets/mouse.png",
                                height: 80,
                                width: 140,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    height: 150.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 143, 3, 96),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 15.0),
                          child: Expanded(
                            flex: 1,
                            child: Text(
                              "Here is Beautiful offers for yours.",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 252, 255, 251),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Expanded(
                            flex: 1,
                            child: Container(
                              child: Image.asset(
                                "assets/lptp.jpg",
                                height: 80.0,
                                width: 140.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                      color: Color.fromARGB(255, 35, 117, 2),
                      fontWeight: FontWeight.w900,
                      fontSize: 25.0),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                      color: Color.fromARGB(255, 35, 117, 2),
                      fontWeight: FontWeight.w900,
                      fontSize: 22.0),
                )
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              height: 50.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _myProduct.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Container(
                        height: 50.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 102, 176, 232),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Center(
                          child: Text(
                            _myProduct[index],
                            style: TextStyle(
                                color: Color.fromARGB(255, 7, 7, 7),
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 30.0,
                  crossAxisSpacing: 30.0,
                  scrollDirection: Axis.vertical,
                  children: List.generate(_myimglist.length, (index) {
                    return Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 20, 20, 20),
                                spreadRadius: 7.0,
                                blurRadius: 10.0,
                                offset: Offset(5, 10))
                          ],
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                              image: AssetImage(_myimglist[index]),
                              fit: BoxFit.fill)),
                    );
                  })),
            ),
          ],
        ),
      )),
    );
  }
}
