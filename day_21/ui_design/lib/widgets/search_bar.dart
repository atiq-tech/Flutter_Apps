import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
      margin: EdgeInsets.all(25.0),
      height: 280.0,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          image: DecorationImage(
              image: AssetImage("images/bgimg.png"), fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Fast Search",
              style: TextStyle(
                  color: Color.fromARGB(255, 252, 253, 253),
                  fontSize: 28.0,
                  fontWeight: FontWeight.w500)),
          SizedBox(height: 15.0),
          Text("You can search quickly for\n the job you want",
              style: TextStyle(
                  color: Color.fromARGB(255, 150, 247, 223),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  height: 1.5)),
          SizedBox(height: 20.0),
          Container(
            height: 50.0,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 0.0, 15.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: Row(
              children: [
                Image.asset(
                  "images/search.png",
                  height: 20.0,
                  width: 20.0,
                ),
                SizedBox(width: 15.0),
                Text("Search",
                    style: TextStyle(
                        color: Color.fromARGB(255, 216, 204, 204),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
