import 'package:flutter/material.dart';
import 'package:pokemonapp/datasource/pokemon_data.dart';
import 'package:pokemonapp/widgets/mytitle.dart';
import 'package:pokemonapp/widgets/pokemon_card.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);
  List<Map?>? pokemonData = PokemonDataSources.pokemons;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 25.0,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 25.0,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyTitle(
              text: "Pokedex",
              color: Colors.black,
            ),
            Expanded(
              flex: 12,
              child: Container(
                child: GridView.builder(
                  itemCount: pokemonData!.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 12.0,
                      childAspectRatio: 4 / 3,
                      crossAxisSpacing: 12.0,
                      crossAxisCount: 2),
                  itemBuilder: ((context, index) => PokemonCard(
                        name: "${pokemonData![index]!["name"]}",
                        types: [
                          pokemonData![index]!.containsKey("type")
                              ? "${pokemonData![index]!["type"]![0]}"
                              : "No power",
                          "Another one",
                        ],
                        imageURL: "${pokemonData![index]!["img"]}",
                        color: Color.fromARGB(255, 48, 192, 149),
                        pokemonMap: pokemonData![index],
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
