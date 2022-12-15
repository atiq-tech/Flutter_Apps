import 'package:flutter/material.dart';

class featurTextDetails extends StatelessWidget {
  final String text;
  final Color color;
  const featurTextDetails({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 26.0),
      child: Text(
        "$text",
        style: TextStyle(
            color: color, fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}
