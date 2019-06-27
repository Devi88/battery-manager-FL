import 'package:battery_manager/module/battery/model/Battery.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BatteryItem extends StatelessWidget {
  final Battery battery;

  const BatteryItem(this.battery);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
        ),
        Icon(Icons.battery_full, color: const Color(0xFF000000), size: 32.0),
        new Padding(
          padding: const EdgeInsets.fromLTRB(25.0, 0.0, 24.0, 25.0),
        ),
        Text(battery.name),
        new Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 6.0, 24.0, 24.0),
        ),

        Text(battery.getTypeName()),
      ],
    );
  }
}
