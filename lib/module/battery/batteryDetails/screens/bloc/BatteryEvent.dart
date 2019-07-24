import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class BatteryEvent extends Equatable {
  BatteryEvent([List props = const []]) : super(props);
}

class FetchBatteries extends BatteryEvent {
  final String userId;

  FetchBatteries(this.userId) : super([userId]);
}

class FetchBattery extends BatteryEvent {
  final String batteryId;

  FetchBattery(this.batteryId) : super([batteryId]);
}

class UpdateBattery extends BatteryEvent {
  final String batteryId;

  UpdateBattery(this.batteryId) : super([batteryId]);
}

class DeleteBattery extends BatteryEvent {
  final String batteryId;

  DeleteBattery(this.batteryId) : super([batteryId]);
}
