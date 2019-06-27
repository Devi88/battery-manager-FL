enum BatteryType { LiPo }

class Battery {
  int id;
  String name;
  BatteryType type;

  Battery(this.name);

  getTypeName() {
    String typeName;

    switch (this.type) {
      case BatteryType.LiPo:
        typeName = 'LiPo';
        break;
      default:
        typeName = 'LiPo';
        break;
    }

    return typeName;
  }
}

class BatteryLiPo extends Battery {
  BatteryLiPo(String name) : super(name) {
    this.type = BatteryType.LiPo;
  }
}
