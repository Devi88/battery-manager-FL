import 'package:battery_manager/module/battery/model/Battery.dart';

class BatteryRepository {
  final batteries = <Battery>[];

  mockGetBatteries() {
    batteries.add(new Battery('Batteria Pierwsza'));
    batteries.add(new Battery('Batteria Druga'));
    batteries.add(new Battery('Batteria Trzecia'));
    batteries.add(new Battery('Batteria Czwarta'));
    batteries.add(new Battery('Batteria Piąta'));
  }

  getBatteries() {
    this.mockGetBatteries();
    return this.batteries;
  }
}