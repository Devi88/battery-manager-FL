import 'package:battery_manager/module/battery/model/Battery.dart';
import 'package:battery_manager/module/battery/repository/BatteryRepository.dart';
import 'package:bloc/bloc.dart';

import 'BatteryListState.dart';
import 'BatteryListEvent.dart';

class BatteryListBloc extends Bloc<BatteryListEvent, BatteryListState> {
  final batteryRepo = new BatteryRepository();

  @override
  BatteryListState get initialState => BatteryListLoading();

  @override
  Stream<BatteryListState> mapEventToState(
    BatteryListEvent event,
  ) async* {
    if (event is BatteryListLoadEvent) {
      yield* _mapBatteryListLoadToState();
    }
  }

  Stream<BatteryListState> _mapBatteryListLoadToState() async* {
    try {
      List<Battery> batteries = batteryRepo.getBatteries();
      yield BatteryListLoaded(batteries);
    } catch (_) {
      yield BatteryListNotLoaded();
    }
  }
}
