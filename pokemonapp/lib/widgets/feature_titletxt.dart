import 'package:flutter/material.dart';

class FeatureTitletext extends StatelessWidget {
  final String text;
  const FeatureTitletext({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 26.0),
      child: Text(
        "$text",
        style: TextStyle(color: Colors.grey, fontSize: 18.0),
      ),
    );
  }
}
