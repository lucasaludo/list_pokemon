import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/pokeListView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false, // Remove o banner de debug
      title: 'Pokedex App',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Define o tema principal
      ),
      home: PokemonListView(), // Define a tela inicial como PokeView.
    );
  }
}
