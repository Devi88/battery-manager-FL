import 'package:battery_manager/module/battery/widgets/BatteryList.dart';
import 'package:battery_manager/util/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BatteryListScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(BMConst.name),
      ),
      body: Container(
        child: BatteryList(),
      ),
    );
  }
}
