import 'base_class.dart';

class MeterPerSecond extends BaseUnitClass {
  MeterPerSecond() : super("Meter per second", "m/s");
  double toKilometerPerHour(double temp) {
    return temp * 3.6;
  }

  double toMilePerHour(double temp) {
    return temp * 2.23694;
  }
}

class KilometerPerHour extends BaseUnitClass {
  KilometerPerHour() : super("Kilometer per hour", "km/h");
  double toMeterPerSecond(double temp) {
    return temp / 3.6;
  }

  double toMilePerHour(double temp) {
    return temp * 0.621371;
  }
}

class MilePerHour extends BaseUnitClass {
  MilePerHour() : super("Mile per hour", "mph");
  double toKilometerPerHour(double temp) {
    return temp / 2.23694;
  }

  double toMeterPerSecond(double temp) {
    return temp / 0.621371;
  }
}

class SpeedUnits {
  final meterPerSecond = MeterPerSecond();
  final kilometerPerHour = KilometerPerHour();
  final milePerHour = MilePerHour();
}
