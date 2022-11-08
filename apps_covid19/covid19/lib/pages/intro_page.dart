import 'package:covid19/core/consts.dart';
import 'package:covid19/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.mainColor,
              AppColors.mainColor.withOpacity(0.7),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            _buildHeader(),
            Align(
              alignment: Alignment.center,
              child: Container(
                  width: MediaQuery.of(context).size.width * .75,
                  child:
                      Center(child: Image.asset("assets/images/myvirus2.png"))),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .20,
              right: 30.0,
              child: Container(
                  width: MediaQuery.of(context).size.width * .4,
                  child: Image.asset("assets/images/person.png")),
            ),
            _buildFooter(context)
          ],
        ),
      ),
    );
  }

  Padding _buildHeader() {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Align(
          alignment: Alignment.topCenter,
          child: Image.asset(
            "assets/images/mylogo.png",
            width: 260.0,
            height: 140.0,
          )),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Positioned(
      bottom: 50.0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Coronavirus disease (COVID-19)",
              style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "is an infectianus disease caused by a new \nvirus.",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 25.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(50.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      offset: Offset(1, 1),
                      spreadRadius: 2,
                      blurRadius: 3,
                    )
                  ],
                ),
                width: MediaQuery.of(context).size.width * .85,
                height: 60.0,
                child: Center(
                  child: Text(
                    "GET STARTED",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: AppColors.mainColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
