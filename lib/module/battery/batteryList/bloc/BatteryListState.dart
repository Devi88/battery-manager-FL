import 'package:battery_manager/module/battery/model/Battery.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class BatteryListState extends Equatable {
  BatteryListState([List props = const []]) : super(props);
}

class BatteryListLoadingState extends BatteryListState {
  @override
  String toString() => 'BatteryListLoading';
}

class BatteryListLoadedState extends BatteryListState {
  final List<Battery> batteries;

  BatteryListLoadedState([this.batteries = const []]) : super([batteries]);

  @override
  String toString() => 'BatteryListLoaded { batteries: $batteries}';
}

class BatteryListNotLoadedState extends BatteryListState {
  @override
  String toString() => 'BatteryListNotLoaded';
}

class BatteryListEmptyState extends BatteryListState {
  @override
  String toString() => 'BatteryListEmpty';
}

class BatteryListErrorState extends BatteryListState {}
