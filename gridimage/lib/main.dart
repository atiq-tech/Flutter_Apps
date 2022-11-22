import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyImages(),
  ));
}

class MyImages extends StatefulWidget {
  const MyImages({Key? key}) : super(key: key);

  @override
  State<MyImages> createState() => _MyImagesState();
}

class _MyImagesState extends State<MyImages> {
  List<String> values = [
    "assets/Atiqq.jpg",
    "assets/Atiqq.jpg",
    "assets/all.jpg",
    "assets/all.jpg",
    "assets/Ami.jpg",
    "assets/Atik11.jpg",
    "assets/All1.jpg",
    "assets/Atikpanjabi.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Grid huge images"),
      ),
      body: Container(
        child: Card(
          color: Colors.brown,
          child: GridView.builder(
            // gridDelegate: gridDelegate,
            itemCount: 8,
            itemBuilder: (context, index) {
              return Card(
                elevation: 10,
                child: Center(
                  child: Image.asset(values[index]),
                ),
              );
            },
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            // children: [
            //   Card(
            //     color: Colors.grey,
            //     child: Center(
            //       child: Text("Atiq"),
            //     ),
            //   ),
            //   Card(
            //     color: Colors.tealAccent,
            //     child: Center(
            //       child: Text("Tamanna"),
            //     ),
            //   ),
            // ],
          ),
        ),
      ),
    );
  }
}
