import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_modular/app/app_controller.dart';
import 'package:slidy_modular/app/app_widget.dart';
import 'package:slidy_modular/app/pages/other/other_page.dart';
import 'package:slidy_modular/app/shared/repositories/poke_repository.dart';
import 'package:slidy_modular/app/shared/utils/constants.dart';

import 'pages/home/home_controller.dart';
import 'pages/home/home_page.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => HomeController(i.get())),
        Bind((i) => PokeRepository(i.get())),
        Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE_API))),
      ];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router('/other', child: (_, args) => OtherPage()),
      ];
}
