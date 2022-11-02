import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Color.fromARGB(255, 5, 190, 247),
            Color.fromARGB(255, 8, 168, 160),
            Color.fromARGB(255, 243, 7, 204),
            Color.fromARGB(255, 49, 184, 8),
            Color.fromARGB(255, 8, 168, 160),
            Color.fromARGB(255, 243, 7, 204),
          ]),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 80.0,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: TextStyle(fontSize: 40.0, color: Colors.white),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                  Color.fromARGB(255, 52, 205, 243),
                  Color.fromARGB(255, 8, 168, 160),
                  Color.fromARGB(255, 172, 7, 194),
                  Color.fromARGB(255, 8, 197, 125),
                ]),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(children: [
                    Text(
                      "Contract",
                      style: TextStyle(
                          color: Color.fromARGB(255, 10, 10, 10),
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient:
                            LinearGradient(begin: Alignment.topCenter, colors: [
                          Color.fromARGB(255, 60, 63, 65),
                          Color.fromARGB(255, 7, 31, 29),
                          Color.fromARGB(255, 228, 85, 173),
                          Color.fromARGB(255, 137, 233, 225),
                          Color.fromARGB(255, 243, 7, 204),
                          Color.fromARGB(255, 49, 184, 8),
                          Color.fromARGB(255, 60, 63, 65),
                          Color.fromARGB(255, 7, 31, 29),
                        ]),
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 95, 27, 3),
                            blurRadius: 20.0,
                            spreadRadius: 1.0,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Column(children: [
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color: Color.fromARGB(255, 179, 174, 174),
                                  width: 2.0),
                            ),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                                hintText: "Email or Phone number",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          child: const TextField(
                            decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none),
                          ),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Text(
                      "Forgot Password",
                      style: TextStyle(
                        color: Color.fromARGB(255, 196, 191, 191),
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      height: 50.0,
                      margin: EdgeInsets.symmetric(horizontal: 60.0),
                      decoration: BoxDecoration(
                        gradient:
                            LinearGradient(begin: Alignment.topCenter, colors: [
                          Color.fromARGB(255, 255, 10, 133),
                          Color.fromARGB(255, 8, 168, 160),
                          Color.fromARGB(255, 243, 7, 204),
                          Color.fromARGB(255, 49, 184, 8),
                          Color.fromARGB(255, 8, 168, 160),
                          Color.fromARGB(255, 243, 7, 204),
                          Color.fromARGB(255, 60, 63, 65),
                          Color.fromARGB(255, 7, 31, 29),
                          Color.fromARGB(255, 60, 63, 65),
                          Color.fromARGB(255, 7, 31, 29),
                        ]),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Text(
                      "Continue with social media",
                      style: TextStyle(
                        color: Color.fromARGB(255, 196, 191, 191),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  colors: [
                                    Color.fromARGB(255, 0, 0, 0),
                                    Color.fromARGB(255, 0, 0, 0),
                                    Color.fromARGB(255, 243, 7, 204),
                                    Color.fromARGB(255, 49, 184, 8),
                                    Color.fromARGB(255, 8, 168, 160),
                                    Color.fromARGB(255, 243, 7, 204),
                                  ]),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Center(
                              child: Text(
                                "Facebook",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Expanded(
                          child: Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  colors: [
                                    Color.fromARGB(255, 180, 3, 224),
                                    Color.fromARGB(255, 8, 168, 160),
                                    Color.fromARGB(255, 243, 7, 204),
                                    Color.fromARGB(255, 49, 184, 8),
                                    Color.fromARGB(255, 8, 168, 160),
                                    Color.fromARGB(255, 243, 7, 204),
                                  ]),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Center(
                              child: Text(
                                "Github",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
