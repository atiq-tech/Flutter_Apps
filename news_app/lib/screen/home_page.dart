import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/const.dart';
import 'package:news_app/custome_http/custome_http.dart';
import 'package:news_app/model/news_model.dart';
import 'package:news_app/screen/search_page.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> list = <String>["relevancy", "popularity", "publishedAt"];
  String sortBy = "relevancy";
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 197, 255, 199),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(221, 191, 236, 215),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.topToBottom,
                        child: SearchPage(),
                        inheritTheme: true,
                        ctx: context),
                  );
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ))
          ],
          centerTitle: true,
          title: Text(
            "NewsApp with Api",
            style: myStyle(25, Color.fromARGB(255, 7, 7, 7), FontWeight.w800),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 175, 8, 226),
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {
                            if (currentIndex < 1) {
                            } else {
                              setState(() {
                                currentIndex = currentIndex - 1;
                              });
                            }
                          },
                          child: Text("Prev")),
                      Flexible(
                          child: ListView.builder(
                              itemCount: 10,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return InkWell(
                                    onTap: () {
                                      setState(() {
                                        currentIndex = index + 1;
                                      });
                                    },
                                    child: Center(
                                      child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color: index + 1 == currentIndex
                                                  ? Colors.blue
                                                  : Colors.transparent,
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              border: Border.all(
                                                  color: Colors.black,
                                                  width: 2)),
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Center(
                                              child: Text(
                                            "${index + 1}",
                                            style: myStyle(16, Colors.black,
                                                FontWeight.w700),
                                          ))),
                                    ));
                              })),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 175, 8, 226),
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {
                            if (currentIndex > 1) {
                              setState(() {
                                currentIndex = currentIndex + 1;
                              });
                            }
                          },
                          child: Text("Next")),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 11, 227, 235),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.black, width: 2)),
                  child: DropdownButton<String>(
                    value: sortBy,
                    icon: const Icon(Icons.arrow_downward),
                    elevation: 16,
                    style: myStyle(18, Colors.black, FontWeight.w600),
                    // underline: Container(
                    //   height: 2,
                    //   color: Colors.deepPurpleAccent,
                    // ),
                    onChanged: (String? value) {
                      setState(() {
                        sortBy = value!;
                      });
                    },
                    items: list.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: myStyle(18, Color.fromARGB(255, 192, 13, 168),
                              FontWeight.w600),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                FutureBuilder<List<Articles>>(
                  future: CustomeHttp()
                      .fechAllData(page: currentIndex, sortBy: sortBy),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    } else if (snapshot.hasError) {
                      return Text("Something wrong");
                    } else if (snapshot.data!.isEmpty) {
                      return Text("No Data found");
                    }
                    return ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(top: 25),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 5, 27, 221),
                                    width: 5),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                )),
                            child: ListTile(
                              leading: Image.network(
                                  "${snapshot.data![index].urlToImage}"),
                              title: Text(
                                "${snapshot.data![index].title}",
                                style: myStyle(
                                    16,
                                    Color.fromARGB(255, 231, 7, 145),
                                    FontWeight.w700),
                              ),
                              subtitle: Text(
                                "${snapshot.data![index].description}",
                                style: myStyle(
                                    14, Colors.black54, FontWeight.w500),
                              ),
                            ),
                          );
                        });
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
