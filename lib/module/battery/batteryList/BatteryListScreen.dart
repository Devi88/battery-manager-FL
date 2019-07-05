import 'package:battery_manager/module/battery/batteryList/widget/BatteryList.dart';
import 'package:battery_manager/util/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/BatteryListBloc.dart';
import 'bloc/BatteryListState.dart';

class BatteryListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BatteryListBloc _batteryListBloc =
        BlocProvider.of<BatteryListBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(BMConst.name),
      ),
      body: BlocBuilder(
          bloc: _batteryListBloc,
          builder: (BuildContext context, BatteryListState state) {
            if (state is BatteryListEmpty) {
              return Container(child: Text('BatteryListEmpty'));
            } else if (state is BatteryListLoaded) {
              return BatteryList(state.batteries);
            } else {
              return Center(
                child: Text(
                  state.toString(),
                  style: TextStyle(fontSize: 24.0),
                ),
              );
            }
          }),
    );
  }
}
