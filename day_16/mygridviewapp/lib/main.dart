import 'package:flutter/material.dart';
import 'package:mygridviewapp/gridview_with_ui_demo.dart';
import 'package:mygridviewapp/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridviewUIDemo(),
    );
  }
}
