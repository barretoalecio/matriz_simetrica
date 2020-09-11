import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:flutter/material.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  var controller1 = new TextEditingController();
  var controller2 = new TextEditingController();
  var controller3 = new TextEditingController();
  var controller4 = new TextEditingController();

  var color1 = Colors.pink;
  var color2 = Colors.green;

}
