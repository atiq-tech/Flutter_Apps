import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        appBar: AppBar(
      brightness: Brightness.dark,
      shadowColor: Colors.indigo,
      backgroundColor: Colors.deepOrange,
      centerTitle: true,
      title: Text("Text---Field"),
      leading: Icon(Icons.menu),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            size: 30,
            color: Colors.black,
          ),
        )
      ],
    )),
  ));
}
