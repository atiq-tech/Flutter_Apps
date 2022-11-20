import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

myStyle(double size, Color clr, [FontWeight? fw]) {
  return GoogleFonts.nunito(fontSize: size, color: clr, fontWeight: fw);
}

String baseUrl = "https://newsapi.org/v2/everything?";
String token = "b706456c5f044cd19d6f40858beef2c8";
