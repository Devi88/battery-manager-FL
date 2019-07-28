import 'package:battery_manager/util/BatteryManagerBlocDelegate.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:battery_manager/util/const.dart';
import 'package:battery_manager/module/battery/batteryList/BatteryListScreen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'module/battery/batteryList/bloc/BatteryListBloc.dart';
import 'module/battery/batteryList/bloc/BatteryListEvent.dart';

void main() {
  BlocSupervisor.delegate = AppBlocDelegate();
  runApp(BatteryManagerApp());
}

class BatteryManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: BMConst.name,
      theme: ThemeData(primaryColor: BMConst.primaryColor),
      home: BlocProvider<BatteryListBloc>(
          builder: (context) =>
              BatteryListBloc()..dispatch(BatteryListLoadingEvent()),
          child: BatteryListScreen()),
    );
  }
}
