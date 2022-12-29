import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practice_api/exersize.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String Link =
      "https://raw.githubusercontent.com/codeifitech/fitness-app/master/exercises.json?fbclid=IwAR2gsu4SRvRRFkHK8JPTWHZXmaNP0dtpOG6h7ep4zQp7WaamX5S1UaSrc3A";
  List<Exercise> allData = [];
  late Exercise exercise;

  FindData() async {
    var Response = await http.get(Uri.parse(Link));
    print("Ami Data chai DATA dew${Response.body}");
    if (Response.statusCode == 200) {
      var mydata = jsonDecode(Response.body)["exercises"];
      for (var i in mydata) {
        exercise = Exercise(
            id: i["id"],
            title: i["title"],
            thumbnail: i["thumbnail"],
            gif: i["gif"],
            seconds: i["seconds"]);
        setState(() {
          allData.add(exercise);
        });
      }
    }
  }

  @override
  void initState() {
    FindData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Api called"),
        ),
        body: Container(
          //  color: Color.fromARGB(255, 116, 181, 235),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: allData.length,
              itemBuilder: (context, index) => Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Text("${allData[index].seconds}"),
                      ),
                      CircleAvatar(
                        child: Text("${allData[index].id}"),
                      ),
                      Container(
                        width: 100.0,
                        height: 100.0,
                        child: CachedNetworkImage(
                            imageUrl: "${allData[index].thumbnail}"),
                      ),
                      Container(
                        width: 100.0,
                        height: 100.0,
                        child: CachedNetworkImage(
                            imageUrl: "${allData[index].gif}"),
                      ),
                      Text("${allData[index].title}")
                    ],
                  )),
        ));
  }
}
