import 'package:battery_manager/module/battery/model/Battery.dart';

class BatteryRepository {
  final batteries = <Battery>[];

  mockGetBatteries() {
    batteries.add(new Battery('Bateria Pierwsza'));
    batteries.add(new Battery('Bateria Druga'));
    batteries.add(new Battery('Bateria Trzecia'));
    batteries.add(new Battery('Bateria Czwarta'));
    batteries.add(new Battery('Bateria Piąta'));
  }

  getBatteries() {
    this.mockGetBatteries();
    return this.batteries;
  }
}
