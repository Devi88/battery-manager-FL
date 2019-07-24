import 'package:battery_manager/module/battery/model/Battery.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BatteryItem extends StatelessWidget {
  final Battery battery;

  const BatteryItem(this.battery);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                    children: <Widget>[
                  Icon(Icons.battery_full,
                      color: const Color(0xFF000000), size: 32.0),
                ]),
                Column(
                    children: <Widget>[Text(battery.name)]),
                Column(
                  children: <Widget>[Text(battery.getTypeName())],
                )
              ],
              )),
    );
  }
//    return Row(
//      mainAxisAlignment: MainAxisAlignment.start,
//      mainAxisSize: MainAxisSize.max,
//      crossAxisAlignment: CrossAxisAlignment.center,
//      children: <Widget>[
//        Card(
//        child: ListTile_)
//    )
//        Padding(
//          padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
//        ),
//        Icon(Icons.battery_full, color: const Color(0xFF000000), size: 32.0),
//        Padding(
//          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
//        ),
//        Text(battery.name),
//        Column (mainAxisAlignment: MainAxisAlignment.end,
//          children: <Widget>[
//            Text(battery.getTypeName()
//          ],
//      ],
//    );
//  }
}
