import 'dart:math';
import 'package:project_mark_2/model/lists.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_mark_2/model/menu.dart';
import 'package:project_mark_2/model/lists.dart';

class Page1 extends StatefulWidget {
  Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
     TabController _tabController = TabController(length: 4,vsync: this);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  height: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage('all/kacchi.jpg'),
                          fit: BoxFit.cover,
                          opacity: .3)),
                  child: Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(top: 20, left: 0, right: 10),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 10,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 18,
                            child: Icon(Icons.arrow_back_rounded),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10),
                          alignment: Alignment.bottomCenter,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                    text: 'Different \n',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600)),
                                TextSpan(
                                  text: 'Kind',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.amber[800],
                                    fontSize: 30,
                                  ),
                                ),
                                TextSpan(
                                    text: ' of Foods!',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 30,
                                    )),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Text(
                      'Recomended Items',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(   
                    height: 220,
                    width: double.infinity,
                    child: GridView.builder(
                        shrinkWrap: true,
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                        itemCount: slide.length,
                        scrollDirection: Axis.horizontal,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 3 / 2,
                            mainAxisSpacing: 10,
                            crossAxisCount: 1),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Expanded(
                                  flex: 10,
                                  child: Image(
                                    height: 100,
                                    width: 150,
                                    image: AssetImage('${slide[index]['img']}'),
                                    fit: BoxFit.cover,
                                  )),
                              Expanded(
                                  flex: 6,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '${slide[index]['name']}',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        '${slide[index]['price']}',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Center(
                                          child: InkWell(
                                            onTap: (){},
                                            child: Card(
                                                color: Colors.amber[800],
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.symmetric(
                                                          horizontal: 15,
                                                          vertical: 8),
                                                  child: Text(
                                                    'Order',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(15.0),
                                                )),
                                          ))
                                    ],
                                  ))
                            ],
                          );
                        },
                        ),
                        ),
                        SizedBox(
                  height: 50,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Text(
                      'Menus of our Resturent',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Divider(),
    
                       TabBar(
                  controller: _tabController,
                   
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                  
                    indicatorSize: TabBarIndicatorSize.label,
                 tabs: [
                     Tab(text: 'Lunch',),
                    Tab(text: 'Fast Food',),
                   Tab(text: 'Noodels',),
                   Tab(text: 'Momos',),
                  ]),
                Container(
                  height:400,
                  width: double.maxFinite,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                       ListView.builder(itemCount: allFood.length,
                    itemBuilder: (_,index){
                    return Menu(img: '${allFood[index]['img']}', name: '${allFood[index]['name']}', price: '${allFood[index]['price']}');
                  }),
                  ListView.builder(itemCount: fastFood.length,
                    itemBuilder: (_,index){
                    return Menu(img: '${fastFood[index]['img']}', name: '${fastFood[index]['name']}', price: '${fastFood[index]['price']}');
                  }),
                  ListView.builder(itemCount: noodels.length,
                    itemBuilder: (_,index){
                    return Menu(img: '${noodels[index]['img']}', name: '${noodels[index]['name']}', price: '${noodels[index]['price']}');
                  }),
                  ListView.builder(itemCount: momo.length,
                    itemBuilder: (_,index){
                    return Menu(img: '${momo[index]['img']}', name: '${momo[index]['name']}', price: '${momo[index]['price']}');
                  }),
    
                   
                  ]),
                )
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
