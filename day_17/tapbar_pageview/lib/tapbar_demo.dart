import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tapbar_pageview/pages/page1.dart';
import 'package:tapbar_pageview/pages/page2.dart';
import 'package:tapbar_pageview/pages/page3.dart';
import 'package:tapbar_pageview/pages/page4.dart';
import 'package:tapbar_pageview/pages/page5.dart';

class TapbarDemo extends StatefulWidget {
  const TapbarDemo({super.key});

  @override
  State<TapbarDemo> createState() => _TapbarDemoState();
}

class _TapbarDemoState extends State<TapbarDemo>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      "https://media.istockphoto.com/photos/colorful-panoramic-mountain-view-at-sunrise-picture-id1129473522?b=1&k=20&m=1129473522&s=170667a&w=0&h=BUuwJYJXKx1nBZtKhddIFe0dfwJzeMyq7IcvSkewyOE=",
                    ),
                    fit: BoxFit.cover)),
            child: TabBar(
              indicatorColor: Color.fromARGB(255, 247, 5, 146),
              controller: tabController,
              labelColor: Color.fromARGB(255, 255, 252, 255),
              tabs: [
                Tab(
                  text: "Home",
                  icon: Icon(
                    Icons.home,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  text: "notification",
                  icon: Icon(
                    Icons.notification_add,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  text: "Additon",
                  icon: Icon(
                    Icons.add_circle_outline,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  text: "Photo",
                  icon: Icon(
                    Icons.photo_library_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  text: "MenuBar",
                  icon: Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(controller: tabController, children: [
              Page1(),
              Page2(),
              Page3(),
              Page4(),
              Page5(),
            ]),
          ),
        ],
      ),
    );
  }
}
