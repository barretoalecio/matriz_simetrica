import 'dart:html';
import 'dart:ui';

import 'package:atividade/app/modules/resultado/resultado_page.dart';
import 'package:atividade/app/utils/matrix_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MatrixBuilder(
              controller.controller1,
              controller.controller2,
              controller.controller3,
              controller.controller4,
              controller.color1,
              controller.color2, controller.color1, controller.color2),
          FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ResultadoPage()));
              },
              child: Text(
                'CALCULAR',
                style: TextStyle(
                    decoration: TextDecoration.underline, color: Colors.red),
              ))
        ],
      ),
    );
  }
}
