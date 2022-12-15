import 'package:flutter/material.dart';
import 'package:pokemonapp/pages/details_page.dart';

import 'power_badge.dart';

class PokemonCard extends StatelessWidget {
  final String name;
  final List<String> types;
  final String imageURL;
  final Color color;
  final Map? pokemonMap;
  const PokemonCard(
      {Key? key,
      required this.name,
      required this.types,
      required this.imageURL,
      required this.pokemonMap,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => DetailsPage(data: pokemonMap),
        ),
      ),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: color,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$name",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                  PowerBadge(text: "${types[0]}"),
                  // PowerBadge(text: "${types[1]}"),
                ],
              ),
            ),
          ),
          Positioned(
            left: 75.0,
            bottom: 0.0,
            child: Hero(
              tag: "pokemon-${name}",
              child: Image.network(
                "$imageURL",
                width: 110.0,
                height: 110.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
