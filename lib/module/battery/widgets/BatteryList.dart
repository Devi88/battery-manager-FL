import 'package:battery_manager/module/battery/model/Battery.dart';
import 'package:flutter/cupertino.dart';

import 'BatteryItem.dart';

class BatteryList extends StatelessWidget {
  final List<Battery> batteries = [BatteryLiPo('Pierwsza'), BatteryLiPo('Druga'), BatteryLiPo('Trzecia')];

  Widget _buildBatteryItem(BuildContext context, int index) {
    return BatteryItem(batteries[index]);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildBatteryItem,
      itemCount: batteries.length,
    );
  }
}
