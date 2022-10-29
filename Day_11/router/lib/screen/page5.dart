import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:router/screen/page6.dart';

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Page5",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.yellowAccent,
              fontSize: 30.0),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Color.fromARGB(255, 29, 5, 243),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Page6()));
              },
              child: Text(
                "Go to Next Page",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.yellowAccent,
                    fontSize: 25.0),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            MaterialButton(
              color: Color.fromARGB(255, 248, 4, 187),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Go to back Page",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.yellowAccent,
                    fontSize: 25.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
