import 'package:battery_manager/module/battery/model/Battery.dart';
import 'package:battery_manager/module/battery/repository/BatteryRepository.dart';
import 'package:bloc/bloc.dart';

import 'BatteryListState.dart';
import 'BatteryListEvent.dart';

class BatteryListBloc extends Bloc<BatteryListEvent, BatteryListState> {
  final batteryRepo = new BatteryRepository();

  @override
  BatteryListState get initialState => BatteryListEmptyState();

  @override
  Stream<BatteryListState> mapEventToState(BatteryListEvent event) async* {
    if(event is BatteryListLoadingEvent) {
      print('Event BatteryListLoadingEvent');
      yield BatteryListLoadingState();
      try {
        List<Battery> batteries = await batteryRepo.getBatteries();
        yield BatteryListLoadedState(batteries);
      } catch(_) {
        yield BatteryListErrorState();
      }
    }
  }
}
