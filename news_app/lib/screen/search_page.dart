import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:news_app/const.dart';
import 'package:news_app/custome_http/custome_http.dart';
import 'package:news_app/model/news_model.dart';
import 'package:http/http.dart' as http;

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchController = TextEditingController();
  List<Articles> searchList = [];
  FocusNode focusNode = FocusNode();
  List<String> sarchKeyword = [
    "World",
    "Sports",
    "Football",
    "Cricket",
    "fasion",
    "History",
    "Movie",
    "Entertainment",
  ];

  bool isleaoding = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return SafeArea(
      child: ModalProgressHUD(
        inAsyncCall: isleaoding == true,
        blur: 0.5,
        opacity: 0.5,
        child: Scaffold(
          body: Container(
            color: Color.fromARGB(255, 188, 221, 248),
            padding: EdgeInsets.all(22),
            child: SingleChildScrollView(
                child: Column(
              children: [
                Container(
                  height: 60,
                  child: TextField(
                    focusNode: focusNode,
                    controller: searchController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 179, 4, 155),
                                width: 4)),
                        suffixIcon: IconButton(
                            onPressed: () {
                              searchList = [];
                              searchController.clear();
                              print("search item");
                              setState(() {});
                            },
                            icon: Icon(Icons.close))),
                    onEditingComplete: () async {
                      print("eeeeeeeeeeeeeeeee");
                      searchList = await CustomeHttp()
                          .fechSearchData(query: searchController.text);
                      print("wwwwwwwwww");
                      setState(() {});
                    },
                  ),
                ),
                searchList.isEmpty
                    ? SizedBox(
                        height: 100,
                        child: MasonryGridView.count(
                          crossAxisCount: 4,
                          mainAxisSpacing: 20,
                          itemCount: sarchKeyword.length,
                          crossAxisSpacing: 4,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () async {
                                setState(() {
                                  isleaoding = true;
                                });
                                searchController.text = sarchKeyword[index];
                                searchList = await CustomeHttp()
                                    .fechSearchData(query: sarchKeyword[index]);
                                setState(() {
                                  isleaoding = false;
                                });
                              },
                              child: Text(
                                "${sarchKeyword[index]}",
                                style: myStyle(
                                    16,
                                    Color.fromARGB(255, 26, 5, 218),
                                    FontWeight.w700),
                              ),
                            );
                          },
                        ),
                      )
                    : SizedBox(
                        height: 0,
                      ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: searchList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(top: 25),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 215, 7, 223),
                                width: 5),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                            )),
                        child: ListTile(
                          leading:
                              Image.network("${searchList[index].urlToImage}"),
                          title: Text(
                            "${searchList[index].title}",
                            style: myStyle(16, Color.fromARGB(255, 231, 7, 145),
                                FontWeight.w700),
                          ),
                          subtitle: Text(
                            "${searchList[index].description}",
                            style: myStyle(14, Colors.black54, FontWeight.w500),
                          ),
                        ),
                      );
                    })
              ],
            )),
          ),
        ),
      ),
    );
  }
}
