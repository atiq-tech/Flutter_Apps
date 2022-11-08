import 'package:covid19/core/consts.dart';
import 'package:covid19/core/flutter_icons.dart';
import 'package:covid19/widgets/charts_widget.dart';
import 'package:covid19/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StatisticPage extends StatefulWidget {
  const StatisticPage({Key? key}) : super(key: key);

  @override
  State<StatisticPage> createState() => _StatisticPageState();
}

class _StatisticPageState extends State<StatisticPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          Container(
            height: 275.0,
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(25.0),
                bottomRight: Radius.circular(25.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Image.asset("assets/images/virus2.png"),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppbar(),
                const Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "STATISTICS",
                    style: TextStyle(
                        fontSize: 32.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                _buildStatistic(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: _buildGender(FlutterIcons.menu,
                              Colors.orangeAccent, "MALE", "59.5%")),
                      SizedBox(
                        width: 16.0,
                      ),
                      Expanded(
                          child: _buildGender(FlutterIcons.menu,
                              Colors.redAccent, "FEMALE", "40.5%")),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: RichText(
                    text: TextSpan(
                        text: "Global class of",
                        style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: " COVID-19",
                            style: TextStyle(
                              color: AppColors.mainColor,
                            ),
                          )
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                      height: 160.0,
                      child:
                          Center(child: Image.asset("assets/images/map.png"))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGender(IconData icon, Color color, String title, String value) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(15.0),
        ),
        border: Border.all(color: Colors.white),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(1, 1),
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 60,
                color: color,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 10, 10, 10),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Confirmed\nCase",
                    style: TextStyle(color: Colors.black38, height: 1.5),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            value,
            style: TextStyle(
                fontSize: 32.0, color: color, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget _buildStatistic() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
        border: Border.all(color: Colors.white),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(1, 1),
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      padding: EdgeInsets.all(24.0),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 150.0,
              height: 150.0,
              child: DonutPieChart.withSampleData(),
            ),
            SizedBox(
              width: 25.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _builStatisticitem(Colors.blueAccent, "Confirmed", "23,29,539"),
                _builStatisticitem(
                    Colors.yellowAccent, "Recovered", "5,92,229"),
                _builStatisticitem(Colors.redAccent, "Deaths", "1,60,717"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _builStatisticitem(Color color, String title, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Icon(
          FlutterIcons.label,
          color: color,
          size: 50.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.black38),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(value),
          ],
        ),
      ],
    );
  }
}
