import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  "https://images.all-free-download.com/images/graphiclarge/beautiful_nature_landscape_05_hd_picture_166223.jpg",
                ),
                fit: BoxFit.cover)),
      ),
    );
  }
}
