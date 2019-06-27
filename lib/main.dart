import 'package:flutter/material.dart';
import 'package:battery_manager/util/const.dart';
import 'module/battery/screens/BatteryListScreen.dart';

void main() {
  runApp(BatteryManager());
}

class BatteryManager extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    '/': (BuildContext context) => BatteryListScreen()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: BMConst.name,
        theme: ThemeData(primaryColor: BMConst.primaryColor),
        routes: routes);
  }
}
