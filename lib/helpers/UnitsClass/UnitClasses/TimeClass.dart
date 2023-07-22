import 'BaseClass.dart';

class Second extends BaseUnitClass {
  Second() : super("Second", "s");
  double toMinute(double temp) {
    return (temp * (9 / 5)) + 32;
  }

  double toHour(double temp) {
    return (temp * (9 / 5)) + 32;
  }

  double toDay(double temp) {
    return (temp * (9 / 5)) + 32;
  }
}

class Minute extends BaseUnitClass {
  Minute() : super("Minute", "min");
  double toSecond(double temp) {
    return temp * 60;
  }

  double toHour(double temp) {
    return temp / 60;
  }

  double toDay(double temp) {
    return temp / 1440;
  }
}

class Hour extends BaseUnitClass {
  Hour() : super("Hour", "hr");
  double toMinute(double temp) {
    return temp * 60;
  }

  double toSecond(double temp) {
    return temp * 3600;
  }

  double toDay(double temp) {
    return temp / 24;
  }
}

class Day extends BaseUnitClass {
  Day() : super("Day", "day");
  double toMinute(double temp) {
    return temp * 1440;
  }

  double toHour(double temp) {
    return temp * 24;
  }

  double toSecond(double temp) {
    return temp * 86400;
  }
}

class TimeUnits {
  final second = Second();
  final minute = Minute();
  final hour = Hour();
  final day = Day();
}
