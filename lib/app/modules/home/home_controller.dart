import 'package:mobx/mobx.dart';

import 'models/pokemon_model.dart';
import 'repositories/poke_repository.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final PokeRepository repository;

  @observable
  ObservableFuture<List<PokemonModel>> pokedex;

  _HomeControllerBase(this.repository) {
    fetchPokedex();
  }

  @action
  fetchPokedex() {
    pokedex = repository.getAllPokemon().asObservable();
  }
}
