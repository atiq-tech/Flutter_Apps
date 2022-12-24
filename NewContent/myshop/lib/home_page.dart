import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 250, 215, 215),
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
          size: 20,
        ),
        centerTitle: true,
        title: Text(
          "Beverages",
          style: TextStyle(
              letterSpacing: 5.0,
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.tune_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 160,
                      height: 240,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 191, 199, 243),
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
                                  fontSize: 22),
                            ),
                          ),
                          Positioned(
                            bottom: 65,
                            left: 20,
                            child: Text(
                              "355ml,Price",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 114, 111, 111),
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
                                  fontSize: 22),
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
                                  color: Color.fromARGB(255, 146, 4, 115),
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
                        color: Color.fromARGB(255, 191, 199, 243),
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
                                  fontSize: 20),
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
                                  fontSize: 20),
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
                            bottom: 15,
                            left: 20,
                            child: Text(
                              "\$15.99",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                          ),
                          Positioned(
                            bottom: 25,
                            right: 25,
                            child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Icon(
                                  Icons.add_box_rounded,
                                  color: Color.fromARGB(255, 146, 4, 115),
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
                        color: Color.fromARGB(255, 191, 199, 243),
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
                                  fontSize: 20),
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
                                  color: Color.fromARGB(255, 146, 4, 115),
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
                            color: Color.fromARGB(255, 191, 199, 243),
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
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700),
                                )),
                            Positioned(
                                left: 10,
                                top: 165,
                                child: Text(
                                  "325 ml, Price",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 105, 100, 100),
                                      fontSize: 15),
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
                                bottom: 10,
                                child: Icon(
                                  Icons.add_box_rounded,
                                  color: Color.fromARGB(255, 146, 4, 115),
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
                            color: Color.fromARGB(255, 191, 199, 243),
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
                            color: Color.fromARGB(255, 191, 199, 243),
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
