import 'package:flutter/material.dart';
import 'package:pokemonapp/pages/details_page.dart';
import 'package:pokemonapp/widgets/pokemon_card.dart';

import 'pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomePage(),
    );
  }
}
