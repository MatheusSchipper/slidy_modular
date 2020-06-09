// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$pokedexAtom = Atom(name: '_HomeControllerBase.pokedex');

  @override
  ObservableFuture<List<PokemonModel>> get pokedex {
    _$pokedexAtom.reportRead();
    return super.pokedex;
  }

  @override
  set pokedex(ObservableFuture<List<PokemonModel>> value) {
    _$pokedexAtom.reportWrite(value, super.pokedex, () {
      super.pokedex = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic fetchPokedex() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.fetchPokedex');
    try {
      return super.fetchPokedex();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pokedex: ${pokedex}
    ''';
  }
}
