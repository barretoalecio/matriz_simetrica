import 'package:atividade/app/utils/matrix_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../home/home_controller.dart';

class ResultadoPage extends StatefulWidget {
  @override
  _ResultadoPageState createState() => _ResultadoPageState();
}

class _ResultadoPageState extends ModularState<ResultadoPage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MatrixBuilder(
              controller.controller1,
              controller.controller3,
              controller.controller2,
              controller.controller4,
              controller.color1,
              controller.color1,
              controller.color2,
              controller.color2),
          FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'VOLTAR',
                style: TextStyle(
                    decoration: TextDecoration.underline, color: Colors.red),
              ))
        ],
      ),
    );
  }
}
