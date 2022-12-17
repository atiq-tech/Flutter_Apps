import 'package:flutter/material.dart';
import 'package:myapp/code.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Location(),
    
    routes: {
       // Welcome.path: (ctx) => Welcome(),
        Location.path: (ctx) => Location(),
        // Login.path: (ctx) => Login(),
      },
  ));
}

