import 'package:battery_manager/module/battery/model/Battery.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class BatteryListState extends Equatable {
  BatteryListState([List props = const []]) : super(props);
}

class BatteryListLoading extends BatteryListState {
  @override
  String toString() => 'BatteryListLoading';
}

class BatteryListLoaded extends BatteryListState {
  final List<Battery> batteries;

  BatteryListLoaded([this.batteries = const []]) : super([batteries]);

  @override
  String toString() => 'BatteryListLoaded { batteries: $batteries}';
}

class BatteryListNotLoaded extends BatteryListState {
  @override
  String toString() => 'BatteryListNotLoaded';
}

class BatteryListEmpty extends BatteryListState {
  @override
  String toString() => 'BatteryListEmpty';
}

class BatteryListError extends BatteryListState {}
