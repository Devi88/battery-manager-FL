import 'package:battery_manager/module/battery/model/Battery.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class BatteryState extends Equatable {
  BatteryState([List props = const[]]): super(props);
}

class InitialBatteryState extends BatteryState {}

class BatteryLoading extends BatteryState {}

class BatteryLoaded extends BatteryState {
  final List<Battery> batteries;

  BatteryLoaded(this.batteries) : super([batteries]);
}

class BatteryNotLoaded extends BatteryState {}

class WeatherEmpty extends BatteryState {}
