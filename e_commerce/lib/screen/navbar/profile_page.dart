import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/prof.webp"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            "Welcome to\nmy profile page",
            style: GoogleFonts.lobster(
                color: Color.fromARGB(255, 12, 12, 12),
                fontSize: 40.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
