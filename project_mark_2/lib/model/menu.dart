import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_mark_2/model/lists.dart';

class Menu extends StatefulWidget {
  String? img, name, price;
  
  Menu({Key? key, required this.img, required this.name, required this.price}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int add = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 140,
      child: Row(
        //  mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              '${widget.img}',
              fit: BoxFit.cover,
              width: 140,
              height: 140,
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(
              top: 40,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${widget.name}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
                Row(
                 
                  children: [
                    Text(
                      '${widget.price}',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                   
                
                         // if (add > 0) 
                          
                    Container(
                        padding: EdgeInsets.only(left: 12),
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                               if(add > 0) add--;
                              });
                            },
                            icon: Icon(
                              Icons.remove_circle_rounded,
                              size: 26,
                              color: Colors.amber[800],
                            ))),
                            Text('$add'),
                                Container(
                        padding: EdgeInsets.only(left: 12),
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                add++;
                              });
                            },
                            icon: Icon(
                              Icons.add_circle,
                              size: 26,
                              color: Colors.amber[800],
                            ))),
                  ],
                )
              ],
            ),
          ),
         

          
        ],
      ),
    );
  }
}
