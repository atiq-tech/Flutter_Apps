import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class TagList extends StatefulWidget {
  const TagList({super.key});

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final _tagList = <String>["All", "⚡ Popular", "⭐ Featured"];

  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selected = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10.0),
                  decoration: BoxDecoration(
                    color: selected == index
                        ? Color.fromARGB(255, 66, 214, 199)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(25.0),
                    border: Border.all(
                        color: selected == index
                            ? Color.fromARGB(255, 0, 0, 0)
                            : Color.fromARGB(255, 194, 5, 137),
                        width: 4),
                  ),
                  child: Text(_tagList[index],
                      style: TextStyle(
                          color: Color.fromARGB(255, 8, 8, 8),
                          fontSize: 19.0,
                          fontWeight: FontWeight.bold)),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 10.0,
              ),
          itemCount: _tagList.length),
    );
  }
}
