import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  final String title;
  const PageTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "$title",
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
    );
  }
}
