import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_design24/data/mylist_source.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AllData = MyListSource.generatedMySourecList();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 194, 225, 250),
      body: Container(
        padding: EdgeInsets.only(top: 45, left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hey Marin",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 25),
                  ),
                  Icon(Icons.notification_add),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Let's Make A Bid!",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 109, 105, 105),
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Search Items',
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 133, 125, 125),
                            fontWeight: FontWeight.w400,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.assessment,
                    size: 85,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                        color: Color.fromARGB(255, 75, 69, 69),
                        fontWeight: FontWeight.w600,
                        fontSize: 25),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        color: Color.fromARGB(255, 100, 97, 97),
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 130,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 120,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 250, 246, 246),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding:
                              EdgeInsets.only(top: 10, left: 10, right: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "${AllData[index].img}",
                                width: 100,
                                height: 80,
                              ),
                              Text(
                                "${AllData[index].title}",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (_, index) => SizedBox(
                            width: 15,
                          ),
                      itemCount: 10)),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Trending Auctions",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w600,
                        fontSize: 25),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        color: Color.fromARGB(255, 100, 97, 97),
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ],
              ),
              GridView.builder(
                  // scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                      //  maxCrossAxisExtent: 200,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: 10,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 243, 247, 244),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 120, right: 10.0),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  if (AllData[index].isClick == false) {
                                    AllData[index].isClick = true;
                                  } else {
                                    AllData[index].isClick = false;
                                  }
                                });
                              },
                              child: Icon(
                                Icons.favorite,
                                size: 30,
                                color: AllData[index].isClick == true
                                    ? Color.fromARGB(255, 241, 4, 4)
                                    : Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10),
                            child: Image.asset(
                              "${AllData[index].img}",
                              width: 250,
                              height: 80,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${AllData[index].company}",
                            style: TextStyle(
                                color: Color.fromARGB(255, 5, 5, 5),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("${AllData[index].title}",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 70, 66, 66),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                              Container(
                                width: 80,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black),
                                child: Center(
                                  child: Text("Bid Now",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 233, 224, 224),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ),
                            ],
                          ),
                          Text("${AllData[index].price}",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 24, 182, 3),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
