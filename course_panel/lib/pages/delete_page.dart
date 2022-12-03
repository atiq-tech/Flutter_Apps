import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class deletePage extends StatefulWidget {
  const deletePage({super.key});

  @override
  State<deletePage> createState() => _deletePageState();
}

class _deletePageState extends State<deletePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: 350,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 175, 219, 245),
            borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            "Yes Item is deleted...",
            style: GoogleFonts.acme(
                fontStyle: FontStyle.italic,
                fontSize: 20,
                color: Color.fromARGB(255, 45, 46, 49),
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
