import 'package:flutter/material.dart';
import 'package:pokemon_app/datasource/pokemon_datasource.dart';

import '../widget/my_title.dart';
import '../widget/pokemon_card.dart';

class HomePage extends StatelessWidget {
  HomePage({
    super.key,
  });

  List<Map?>? pokemondata = PokemonDatasource.pokemon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10.0,
            ),
            child: Icon(
              Icons.account_balance_sharp,
              color: Colors.black,
              size: 50.0,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyTitle(
              text: "Pokedex",
              color: Colors.white,
            ),
            Expanded(
              flex: 12,
              child: Container(
                child: GridView.builder(
                  itemCount: pokemondata?.length ?? 0,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 4 / 3,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 12.0,
                  ),
                  itemBuilder: (context, index) => PokemonCard(
                    color: Color(0xff4ad0b0),
                    name: "${pokemondata![index]!["name"]}",
                    types: [
                      pokemondata![index]!.containsKey("type")
                          ? "${pokemondata![index]!["type"]![0]}"
                          : "no Power",
                      // pokemondata![index]!.containsKey("type")
                      //     ? "${pokemondata![index]!["type"]![1]}"
                      //     : "no Power",
                    ],
                    imageUrl: "${pokemondata![index]!["img"]}",
                    pokemonMap: pokemondata![index],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
