import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproducts/product.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductScreen(),
      theme: ThemeData().copyWith(
          appBarTheme: AppBarTheme(
        color: Colors.white,
      )),
    ),
  );
}
