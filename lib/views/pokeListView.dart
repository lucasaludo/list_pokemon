import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../views/pokeDetailsView.dart';
import '../controllers/pokeControllers.dart';

class PokemonListView extends StatelessWidget {
  final PokemonController controller = Get.put(PokemonController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pokémon List')),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: controller.pokemonList.length,
            itemBuilder: (context, index) {
              var pokemon = controller.pokemonList[index];
              return ListTile(
                leading: Image.network(pokemon.imageUrl),
                title: Text(pokemon.name),
                subtitle: Text('Pokedex: #${pokemon.pokedexNumber}'),
                onTap: () {
                  Get.to(() => PokemonDetailView(pokemon: pokemon));
                },
              );
            },
          );
        }
      }),
    );
  }
}