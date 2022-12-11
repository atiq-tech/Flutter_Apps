import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/prd1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            "Welcome to\nmy product page",
            style: GoogleFonts.lobster(
                color: Color.fromARGB(255, 253, 251, 251),
                fontSize: 40.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
