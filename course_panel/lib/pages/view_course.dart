import 'dart:async';

import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:course_panel/pages/add_course.dart';
import 'package:course_panel/pages/delete_page.dart';
import 'package:course_panel/pages/update_course.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

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

  updatenewCourse(documentId, courseName, courseFee, img) {
    return showModalBottomSheet(
        context: context,
        builder: (context) =>
            UpdateCourse(documentId, courseName, courseFee, img),
        backgroundColor: Colors.transparent,
        isScrollControlled: true);
  }

  deleteItem() {
    return showModalBottomSheet(
        context: context,
        builder: (context) => deletePage(),
        backgroundColor: Colors.transparent,
        isScrollControlled: true);
  }

  Future<void> deletedItem(selectedItem) {
    return FirebaseFirestore.instance
        .collection('courses')
        .doc(selectedItem)
        .delete()
        .then((value) => print("Item is deleted"));
  }

  Stream<QuerySnapshot> _courseStream =
      FirebaseFirestore.instance.collection('courses').snapshots();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 198, 225, 248),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 181, 186, 253),
        title: Text(
          "Add Course With Firebase",
          style: GoogleFonts.lobster(
              fontStyle: FontStyle.italic,
              fontSize: 20,
              color: Color.fromARGB(255, 13, 13, 14),
              fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      floatingActionButton: Container(
        height: 60.0,
        child: FittedBox(
          child: FloatingActionButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30)),
                  side: BorderSide(color: Colors.black, width: 3)),
              backgroundColor: Color.fromARGB(255, 190, 221, 233),
              onPressed: () {
                addnewCourse();
              },
              child: Center(
                child: Text(
                  "Add",
                  style: GoogleFonts.lobster(
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                      color: Color.fromARGB(255, 20, 20, 20),
                      fontWeight: FontWeight.w700),
                ),
              )),
        ),
      ),
      body: StreamBuilder(
        stream: _courseStream,
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text(
              "Something is wrong bro",
            );
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: LinearProgressIndicator(),
            );
          }
          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data =
                  document.data() as Map<String, dynamic>;
              return Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                height: 400,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image.network(
                          data["img"],
                          height: 280,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 70,
                          left: 10,
                          child: Container(
                            height: 150,
                            width: 65,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 14, 13, 13),
                                borderRadius: BorderRadius.circular(30)),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              color: Color.fromARGB(255, 194, 223, 247),
                              elevation: 5,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CircleAvatar(
                                    backgroundColor:
                                        Color.fromARGB(255, 93, 105, 114),
                                    child: IconButton(
                                        onPressed: () {
                                          updatenewCourse(
                                              document.id,
                                              data["_courseName"],
                                              data["_courseFee"],
                                              data["img"]);
                                        },
                                        icon: Icon(Icons.edit)),
                                  ),
                                  CircleAvatar(
                                    backgroundColor:
                                        Color.fromARGB(255, 106, 118, 128),
                                    child: IconButton(
                                        onPressed: () {
                                          deletedItem(document.id);
                                          deleteItem();
                                        },
                                        icon: Icon(Icons.remove)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                      ),
                      color: Color.fromARGB(255, 212, 229, 243),
                      margin: EdgeInsets.all(10),
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          data["_courseName"],
                          style: GoogleFonts.kenia(
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                              color: Color.fromARGB(255, 45, 46, 49),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                      color: Color.fromARGB(255, 212, 229, 243),
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          data["_courseFee"],
                          style: GoogleFonts.lobster(
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 45, 46, 49),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
