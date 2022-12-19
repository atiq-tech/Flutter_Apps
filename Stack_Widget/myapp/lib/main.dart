import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/stack.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.teal.shade100,
      appBar: AppBar(
        leading:
            IconButton(iconSize: 30, icon: Icon(Icons.menu), onPressed: () {}),
        actions: [
          IconButton(
              iconSize: 30,
              icon: CircleAvatar(
                backgroundImage:
                    NetworkImage('https://i.ibb.co/Z1fYsws/profile-image.jpg'),
                backgroundColor: Colors.black26,
              ),
              onPressed: () {})
        ],
        centerTitle: true,
        title: Text("Stack Widget"),
      ),
      body: StackScreen(),
    ),
  ));
}
