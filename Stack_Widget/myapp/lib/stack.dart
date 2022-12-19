import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        overflow: Overflow.clip,
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
              child: Image.network('https://i.ibb.co/Y2CNM8V/new-york.jpg')),
          Container(
            width: 200,
            height: 200,
            color: Colors.pink,
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 70,
              height: 70,
              color: Colors.indigo,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: 70,
              height: 70,
              color: Colors.black,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 70,
              height: 70,
              color: Colors.indigo,
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: 70,
              height: 70,
              color: Colors.black,
            ),
          ),
          Positioned(
            bottom: 70,
            left: 70,
            child: Container(
              width: 60,
              height: 60,
              color: Colors.yellow,
            ),
          ),

// gap

          Positioned(
            top: -35,
            left: 0,
            child: Container(
              width: 70,
              height: 70,
              color: Colors.teal,
            ),
          ),
          Positioned(
            bottom: -35,
            left: 0,
            child: Container(
              width: 70,
              height: 70,
              color: Colors.orange,
            ),
          ),
          Positioned(
            bottom: -35,
            right: 0,
            child: Container(
              width: 70,
              height: 70,
              color: Colors.green,
            ),
          ),
          Positioned(
            top: -35,
            right: 0,
            child: Container(
              width: 70,
              height: 70,
              color: Colors.red,
            ),
          ),
          Positioned(
            bottom: -30,
            left: 70,
            child: Container(
              width: 60,
              height: 65,
              color: Colors.lightBlue,
            ),
          ),
          Positioned(
            top: -30,
            left: 70,
            child: Container(
              width: 60,
              height: 65,
              color: Colors.deepPurpleAccent,
            ),
          ),
        ],
      ),
    );
  }
}
