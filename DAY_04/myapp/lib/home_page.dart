import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Iftikar Islam Atiq",
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        width: 330.0,
        height: 250.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.lightBlue.shade600,
                Colors.redAccent,
                Colors.lightGreenAccent.shade400,
                Color.fromARGB(255, 23, 8, 223),
                Colors.pink,
                Colors.purple,
              ]),
          color: Colors.lime,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40.0),
            bottomLeft: Radius.circular(40.0),
          ),
          border:
              Border.all(color: Color.fromARGB(255, 211, 247, 6), width: 5.0),
          boxShadow: [
            BoxShadow(
                blurRadius: 10.0,
                spreadRadius: 7.0,
                offset: Offset(10.0, 10.0)),
          ],
        ),
        child: Text(
          "This is container widgets",
          style: TextStyle(
              letterSpacing: 5.0,
              wordSpacing: 15.0,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.white),
        ),
      ),
    );
  }
}
