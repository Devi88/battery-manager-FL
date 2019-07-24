import 'package:battery_manager/module/battery/model/Battery.dart';
import 'package:battery_manager/module/battery/repository/BatteryRepository.dart';
import 'package:bloc/bloc.dart';

import 'BatteryEvent.dart';
import 'BatteryState.dart';

class BatteryBloc extends Bloc<BatteryEvent, BatteryState> {
  final batteryRepo = new BatteryRepository();

  @override
  BatteryState get initialState => InitialBatteryState();

  @override
  Stream<BatteryState> mapEventToState(
    BatteryEvent event,
  ) async* {
    if (event is FetchBattery) {
      yield* _mapFetchBatteryToState();
    }
  }

  Stream<BatteryState> _mapFetchBatteryToState() async* {
    try {
      List<Battery> batteries = batteryRepo.getBatteries();
      yield BatteryLoaded(batteries);
    } catch (_) {
      yield BatteryNotLoaded();
    }
  }
}
