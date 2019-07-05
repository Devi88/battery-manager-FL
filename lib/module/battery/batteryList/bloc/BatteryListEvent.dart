import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class BatteryListEvent extends Equatable {
  BatteryListEvent([List props = const []]) : super(props);
}

class BatteryListLoadEvent extends BatteryListEvent {
  @override
  String toString() => 'BatteryListLoadEvent';
}
