import 'dart:math';

import 'package:flutter/material.dart';
class Page2 extends StatelessWidget {
  const Page2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_rounded,color: Colors.blue,),
          backgroundColor: Colors.white,
          title: Text('Cupons',style: TextStyle(
            color: Colors.black
          ),),
          centerTitle: true,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Text('No Copuns are avaleble !!',style: TextStyle(color: Colors.grey),),
        ),
        
      ),
    );
  }
}