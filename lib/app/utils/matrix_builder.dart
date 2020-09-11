import 'dart:ui';

import 'package:flutter/material.dart';

class MatrixBuilder extends StatelessWidget {
  final controller1;
  final controller2;
  final controller3;
  final controller4;

  final color1;
  final color2;
  final color3;
  final color4;
  MatrixBuilder(this.controller1, this.controller2, this.controller3,
      this.controller4, this.color1, this.color2, this.color3, this.color4);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: TextFormField(
                controller: controller1,
                decoration: InputDecoration(
                  hintText: 'VALOR 1',
                ),
                style: TextStyle(color: color2),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              child: TextFormField(
                controller: controller2,
                decoration: InputDecoration(
                  hintText: 'VALOR 2',
                ),
                style: TextStyle(color: color1),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: TextFormField(
                controller: controller3,
                decoration: InputDecoration(
                  hintText: 'VALOR 3',
                ),
                style: TextStyle(color: color3),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              child: TextFormField(
                controller: controller4,
                decoration: InputDecoration(
                  hintText: 'VALOR 4',
                ),
                style: TextStyle(color: color4),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
