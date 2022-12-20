import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:notpad/accessmode.dart';
import 'package:notpad/note_pad.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future deletedDiolog(BuildContext context, String multiline) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Warning"),
            content: Text("Do you want deleted this notes?"),
            actions: [
              TextButton(
                onPressed: () {
                  setState(() {
                    removeData(multiline);
                  });
                  Navigator.of(context).pop();
                },
                child: Text("Yes"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("No"),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffafe5cd),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 243, 197, 245),
          centerTitle: true,
          title: Text(
            'NotePad App',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: CustomScrollView(slivers: [
          SliverGrid.count(
            crossAxisCount: 2,
            children: [
              ...datas.map(
                (multiline) => InkWell(
                  onLongPress: () {
                    deletedDiolog(context, multiline);
                  },
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => NotePad()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Color(0xffa6e6dd),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              blurStyle: BlurStyle.normal,
                              offset: Offset(8, 8),
                              blurRadius: 15,
                              spreadRadius: 10,
                              color: Colors.teal)
                        ]),
                    child: Text(multiline),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    addData();
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            blurStyle: BlurStyle.normal,
                            offset: Offset(8, 8),
                            blurRadius: 15,
                            spreadRadius: 10,
                            color: Colors.teal)
                      ]),
                  child: Icon(
                    Icons.add,
                    size: 40,
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
