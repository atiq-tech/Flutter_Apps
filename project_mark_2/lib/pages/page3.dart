import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_rounded,color: Colors.blue,),
          backgroundColor: Colors.white,
          title: Text('Cart',style: TextStyle(
            color: Colors.black
          ),),
          centerTitle: true,
        ),
         body: Container(
          alignment: Alignment.center,
          child: Text('You have not listed any item !!',style: TextStyle(color: Colors.grey),),
        ),
        
      ),
    );
  }
}