import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
//
  int redscore = 50;
  int bluescore = 50;
//
  void redScoreUpdate() {
    setState(() {
      redscore = redscore + 1;
      bluescore = bluescore - 1;
    });
  }

//
  void blueScoreUpdate() {
    setState(() {
      bluescore = bluescore + 1;
      redscore = redscore - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: redscore,
                child: InkWell(
                  onTap: redScoreUpdate,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ),
              Expanded(
                flex: bluescore,
                child: InkWell(
                  onTap: blueScoreUpdate,
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              )
            ],
          ),
          redscore >= 100 || bluescore >= 100
              ? Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.purple.withOpacity(0.5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "${redscore >= 100 ? "Red" : "Blue"} won!!!",
                        style: TextStyle(fontSize: 40.0, color: Colors.white),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MyApp()));
                          },
                          child: Text(
                            "Refresh",
                            style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ))
                    ],
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
