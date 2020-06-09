import 'package:mobx/mobx.dart';
import 'package:slidy_modular/app/shared/models/pokemon_model.dart';
import 'package:slidy_modular/app/shared/repositories/poke_repository.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final PokeRepository repository;

  @observable
  ObservableFuture<List<PokemonModel>> pokedex;

  _HomeControllerBase(this.repository)
  {
    fetchPokedex();
  }

  @action
  fetchPokedex() {
    pokedex = repository.getAllPokemon().asObservable();
  }
}