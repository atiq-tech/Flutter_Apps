import 'package:covid19/core/consts.dart';
import 'package:covid19/core/flutter_icons.dart';
import 'package:covid19/widgets/custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'statistics_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(25.0),
                bottomRight: Radius.circular(25.0),
              ),
            ),
            padding: EdgeInsets.only(top: 25.0, bottom: 30.0),
            child: Stack(
              children: [
                Image.asset("assets/images/virus2.png"),
                _buildHeader(),
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: RichText(
              text: TextSpan(
                  text: "Symptoms of",
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
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 120.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 16.0),
              physics: BouncingScrollPhysics(),
              children: [
                _buildSymptomitem("assets/images/my1.png", "Fever"),
                _buildSymptomitem("assets/images/2.png", "Dry Cough"),
                _buildSymptomitem("assets/images/4.png", "Breathless"),
                _buildSymptomitem("assets/images/3.png", "Headache"),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Prevention",
              style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 16.0),
              physics: BouncingScrollPhysics(),
              children: [
                _buildPrevention(
                    "assets/images/a10.png", "WASH", "hands often"),
                _buildPrevention("assets/images/a4.png", "COVER", "your cough"),
                _buildPrevention("assets/images/a6.png", "ALWAYS", "clean"),
                _buildPrevention("assets/images/a9.png", "USE", "mask"),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => StatisticPage()));
            },
            child: Container(
              height: 90.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                  border: Border.all(color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(1, 1),
                      spreadRadius: 1,
                      blurRadius: 3,
                    ),
                  ]),
              padding: EdgeInsets.all(12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/map.png"),
                  SizedBox(
                    width: 25.0,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "CASES\n",
                      style: TextStyle(
                          color: AppColors.mainColor,
                          fontWeight: FontWeight.bold,
                          height: 1.2),
                      children: [
                        TextSpan(
                          text: "Overview Worldwide\n",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: "21.118.594 confirmed",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.normal,
                              fontSize: 10.0),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  IconButton(
                      onPressed: null, icon: Icon(Icons.arrow_forward_ios))
                ],
              ),
              margin: EdgeInsets.symmetric(horizontal: 16.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPrevention(String path, String text1, String text2) {
    return Column(
      children: [
        Container(
          width: 170.0,
          height: 70.0,
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
              ]),
          padding: EdgeInsets.all(12),
          child: Row(
            children: [
              Image.asset(path),
              SizedBox(
                width: 10.0,
              ),
              RichText(
                text: TextSpan(
                  text: "${text1}\n",
                  style: TextStyle(
                      color: AppColors.mainColor, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: text2,
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          margin: EdgeInsets.only(right: 20.0),
        ),
        SizedBox(
          height: 7.0,
        ),
      ],
    );
  }

  Widget _buildSymptomitem(String path, String text) {
    return Column(
      children: [
        Container(
          width: 90.0,
          height: 90.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              gradient: LinearGradient(colors: [
                AppColors.backgroundColor,
                Colors.white,
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              border: Border.all(color: Colors.white),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(1, 1),
                  spreadRadius: 1,
                  blurRadius: 1,
                ),
              ]),
          padding: EdgeInsets.only(top: 15.0),
          child: Image.asset(path),
          margin: EdgeInsets.only(right: 20.0),
        ),
        SizedBox(
          height: 7.0,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppbar(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "COVID-19",
            style: TextStyle(
                fontSize: 32.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Coronavirus Relief Fund",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "to this fund will help to stop the virus's spread and give\ncommunitieson the font lines",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 25.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Expanded(
                child: RaisedButton(
                  color: Colors.blue,
                  onPressed: () {},
                  child: Text(
                    "DONATE NOW",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: RaisedButton(
                  color: Color.fromARGB(255, 250, 4, 4),
                  onPressed: () {},
                  child: Text(
                    "DONATE NOW",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
