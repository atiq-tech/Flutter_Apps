import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_api/exercise_model.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String link =
      "https://raw.githubusercontent.com/codeifitech/fitness-app/master/exercises.json?fbclid=IwAR14J7p6MWIRc7QTwOS-gdT8hvHnBR4dOBjxaCDtjGZoej2ZzfO9L68MV0M";
  List<ExerciseModel> allData = [];
  late ExerciseModel exerciseModel;

  fetchData() async {
    var response = await http.get(Uri.parse(link));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)["exercises"];
      for (var i in data) {
        exerciseModel = ExerciseModel(
          id: i["id"],
          title: i["title"],
          thumbnail: i["thumbnail"],
          gif: i["gif"],
          seconds: i["seconds"],
        );
        setState(() {
          allData.add(exerciseModel);
        });
      }
    }
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 250, 214),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 225, 247, 190),
        centerTitle: true,
        title: Text(
          "My First API App",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w800, fontSize: 28),
        ),
      ),
      body: ListView.builder(
          itemCount: allData.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage("${allData[index].thumbnail}")),
              title: Text(
                "Title:${allData[index].title}",
                style: TextStyle(
                    color: Color.fromARGB(255, 189, 4, 133),
                    fontWeight: FontWeight.w800,
                    fontSize: 18),
              ),
              subtitle: Row(
                children: [
                  Text(
                    "ID is:${allData[index].id}",
                    style: TextStyle(
                        color: Color.fromARGB(255, 77, 74, 74),
                        fontWeight: FontWeight.w800,
                        fontSize: 16),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Seconds:${allData[index].seconds}",
                    style: TextStyle(
                        color: Color.fromARGB(255, 97, 95, 95),
                        fontWeight: FontWeight.w800,
                        fontSize: 16),
                  ),
                ],
              ),
              trailing: Container(
                height: 80,
                width: 90,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 2, 114, 7), width: 2),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    image: DecorationImage(
                        image: NetworkImage("${allData[index].gif}"),
                        fit: BoxFit.cover)),
              ),
            );
          }),
    );
  }
}
