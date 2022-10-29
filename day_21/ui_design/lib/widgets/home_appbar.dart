import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 45.0, left: 25.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome home",
                  style: TextStyle(
                      color: Color.fromARGB(255, 129, 116, 116),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 15.0),
              Text("Annie Bryant",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          Row(
            children: [
              Container(
                transform: Matrix4.rotationZ(100),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Icon(
                        Icons.notifications_none_outlined,
                        size: 40.0,
                        color: Colors.grey,
                      ),
                    ),
                    Positioned(
                        right: 1,
                        top: 20,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(width: 30.0),
              Container(
                padding: EdgeInsets.only(bottom: 20.0),
                transform: Matrix4.rotationZ(-50),
                child: ClipOval(
                  child: Image.asset(
                    "images/avater.png",
                    fit: BoxFit.cover,
                    width: 50.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
