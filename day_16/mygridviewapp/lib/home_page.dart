import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mygridviewapp/my_registation_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  registationForm() {
    return showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => MyRegistationPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Image Picker Widget"),
      ),
      floatingActionButton: Container(
        height: 100.0,
        width: 100.0,
        child: FittedBox(
          child: FloatingActionButton(
            elevation: 20,
            backgroundColor: Color.fromARGB(252, 245, 255, 191),
            onPressed: () {
              registationForm();
            },
            child: Text(
              "Pres me ",
              style: TextStyle(fontSize: 10, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
