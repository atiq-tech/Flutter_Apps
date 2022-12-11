import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/register.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            "Welcome to\nmy order page",
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
