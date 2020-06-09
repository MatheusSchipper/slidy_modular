import 'package:dio/dio.dart';
import 'package:slidy_modular/app/modules/home/models/pokemon_model.dart';

class PokeRepository {
  final Dio dio;

  PokeRepository(this.dio);

  Future<List<PokemonModel>> getAllPokemon() async {
    var response = await dio.get('pokemon');
    List<PokemonModel> pokedex = [];
    for (var json in (response.data['results'] as List)) {
      PokemonModel pokemon = PokemonModel(name: json['name']);
      pokedex.add(pokemon);
    }

    return pokedex;
  }
}