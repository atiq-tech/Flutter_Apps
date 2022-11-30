import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:course_panel/pages/add_course.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ViewCourse extends StatefulWidget {
  const ViewCourse({super.key});

  @override
  State<ViewCourse> createState() => _ViewCourseState();
}

class _ViewCourseState extends State<ViewCourse> {
  addnewCourse() {
    return showModalBottomSheet(
        context: context,
        builder: (context) => AddCourse(),
        backgroundColor: Colors.transparent,
        isScrollControlled: true);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 242, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 181, 186, 253),
        title: Text(
          "Add Course With Firebase",
          style: TextStyle(
              color: Color.fromARGB(255, 2, 1, 73),
              fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          height: 50,
          width: 220,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 120, 103, 182),
                  side: BorderSide(
                      color: Color.fromARGB(255, 184, 181, 5), width: 3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                  )),
              onPressed: () {
                addnewCourse();
              },
              child: Text(
                "Add course Click me",
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 248, 244, 11),
                    fontWeight: FontWeight.w700),
              )),
        ),
      ),
    );
  }
}
