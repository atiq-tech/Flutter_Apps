import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.menu,
            size: 30.0,
            color: Color.fromARGB(255, 252, 252, 252),
          ),
        ),
        Container(
          width: 50.0,
          height: 50.0,
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.yellow, width: 2),
              borderRadius: BorderRadius.all(
                Radius.circular(100.0),
              ),
              image: DecorationImage(
                  image: AssetImage("assets/images/profilemy.jpg"))),
        ),
      ],
    );
  }
}
