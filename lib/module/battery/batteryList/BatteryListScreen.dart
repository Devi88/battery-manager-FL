import 'package:battery_manager/module/battery/batteryList/widget/BatteryList.dart';
import 'package:battery_manager/util/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/BatteryListBloc.dart';
import 'bloc/BatteryListState.dart';

class BatteryListScreen extends StatefulWidget {
  @override
  State<BatteryListScreen> createState() => _BatteryListScreenState();
}

class _BatteryListScreenState extends State<BatteryListScreen> {
  @override
  void initState() {
    super.initState();
  }

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
            print('State ' + state.toString());
            if (state is BatteryListEmptyState) {
              print('State active ' + state.toString());
              return Center(child: Text('BatteryListEmpty'));
            } else if (state is BatteryListLoadingState) {
              print('State active ' + state.toString());
              return Center(child: CircularProgressIndicator());
            } else if (state is BatteryListLoadedState) {
              print('State active ' + state.toString());
              return BatteryList(state.batteries);
            } else {
              print('State active else ' + state.toString());
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
