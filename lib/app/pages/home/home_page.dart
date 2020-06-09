import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_modular/app/pages/home/home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Observer(builder: (_) {
        if (homeController.pokedex.error != null) {
          return Center(
            child: RaisedButton(
                child: Text("Reload"),
                onPressed: () {
                  homeController.fetchPokedex();
                }),
          );
        }
        if (homeController.pokedex.value == null) {
          return CircularProgressIndicator();
        }

        var pokedex = homeController.pokedex.value;
        return ListView.builder(
            itemCount: pokedex.length,
            itemBuilder: (_, index) {
              return ListTile(
                title: Text(pokedex[index].name),
              );
            });
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Modular.to.pushNamed('/other');
        },
        tooltip: 'Increment',
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
