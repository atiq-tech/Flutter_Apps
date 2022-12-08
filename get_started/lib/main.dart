import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child: Stack(
          children: [
            Image.asset(
              "assets/onboarding.png",
              width: 320,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
                top: 350,
                left: 120,
                child: Image.asset("assets/shadagajor.png")),
            Positioned(
                bottom: 170,
                left: 60,
                child: Text(
                  "Welcome",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 35),
                )),
            Positioned(
                bottom: 130,
                left: 50,
                child: Text(
                  "to our store",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 35),
                )),
            Positioned(
                bottom: 110,
                left: 35,
                child: Text(
                  "Get your groceries in as fast as one hour",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontWeight: FontWeight.w500,
                      fontSize: 11.5),
                )),
            Positioned(
              bottom: 30,
              left: 30,
              child: Center(
                child: Container(
                  width: 260,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.teal,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 90, top: 15),
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ));
}
