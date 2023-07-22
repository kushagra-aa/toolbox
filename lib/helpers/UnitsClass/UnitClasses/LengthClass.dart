import 'BaseClass.dart';

class Meter extends BaseUnitClass {
  Meter() : super("Meter", "m");
  // (C × 9/5) + 32
  double toKilometer(double temp) {
    return temp / 1000;
  }

  double toCentimeter(double temp) {
    return temp * 100;
  }

  double toMillimeter(double temp) {
    return temp * 1000;
  }

  double toInch(double temp) {
    return temp * 39.3701;
  }

  double toFoot(double temp) {
    return temp * 3.28084;
  }

  double toYard(double temp) {
    return temp * 1.09361;
  }

  double toMile(double temp) {
    return temp * 0.000621371;
  }
}

class Kilometer extends BaseUnitClass {
  Kilometer() : super("Kilometer", "km");
  double toMeter(double temp) {
    return temp * 1000;
  }

  double toCentimeter(double temp) {
    return temp * 100000;
  }

  double toMillimeter(double temp) {
    return temp * 1e+6;
  }

  double toInch(double temp) {
    return temp * 39370.1;
  }

  double toFoot(double temp) {
    return temp * 3280.84;
  }

  double toYard(double temp) {
    return temp * 1093.61;
  }

  double toMile(double temp) {
    return temp * 0.621371;
  }
}

class Centimeter extends BaseUnitClass {
  Centimeter() : super("Centimeter", "cm");
  double toMeter(double temp) {
    return temp / 100;
  }

  double toKilometer(double temp) {
    return temp / 100000;
  }

  double toMillimeter(double temp) {
    return temp * 10;
  }

  double toInch(double temp) {
    return temp * 0.393701;
  }

  double toFoot(double temp) {
    return temp * 0.0328084;
  }

  double toYard(double temp) {
    return temp * 0.0109361;
  }

  double toMile(double temp) {
    return temp * 6.2137e-6;
  }
}

class Millimeter extends BaseUnitClass {
  Millimeter() : super("Millimeter", "mm");
  double toMeter(double temp) {
    return temp / 1000;
  }

  double toKilometer(double temp) {
    return temp / 1e+6;
  }

  double toCentimeter(double temp) {
    return temp / 10;
  }

  double toInch(double temp) {
    return temp * 0.0393701;
  }

  double toFoot(double temp) {
    return temp * 0.00328084;
  }

  double toYard(double temp) {
    return temp * 0.00109361;
  }

  double toMile(double temp) {
    return temp * 6.2137e-7;
  }
}

class Inch extends BaseUnitClass {
  Inch() : super("Inch", "in");
  double toMeter(double temp) {
    return temp * 0.0254;
  }

  double toKilometer(double temp) {
    return temp * 2.54e-5;
  }

  double toCentimeter(double temp) {
    return temp * 2.54;
  }

  double toMillimeter(double temp) {
    return temp * 25.4;
  }

  double toFoot(double temp) {
    return temp * 0.0833333;
  }

  double toYard(double temp) {
    return temp * 0.0277778;
  }

  double toMile(double temp) {
    return temp * 1.5783e-5;
  }
}

class Foot extends BaseUnitClass {
  Foot() : super("Foot", "ft");
  double toMeter(double temp) {
    return temp * 0.3048;
  }

  double toKilometer(double temp) {
    return temp * 0.0003048;
  }

  double toCentimeter(double temp) {
    return temp * 30.48;
  }

  double toMillimeter(double temp) {
    return temp * 304.8;
  }

  double toInch(double temp) {
    return temp * 12;
  }

  double toYard(double temp) {
    return temp * 0.333333;
  }

  double toMile(double temp) {
    return temp * 0.000189394;
  }
}

class Yard extends BaseUnitClass {
  Yard() : super("Yard", "yd");
  double toMeter(double temp) {
    return temp * 0.9144;
  }

  double toKilometer(double temp) {
    return temp * 0.0009144;
  }

  double toCentimeter(double temp) {
    return temp * 91.44;
  }

  double toMillimeter(double temp) {
    return temp * 914.4;
  }

  double toInch(double temp) {
    return temp * 36;
  }

  double toFoot(double temp) {
    return temp * 3;
  }

  double toMile(double temp) {
    return temp * 0.000568182;
  }
}

class Mile extends BaseUnitClass {
  Mile() : super("Mile", "mi");
  double toKilometer(double temp) {
    return temp * 1609.34;
  }

  double toCentimeter(double temp) {
    return temp * 1.60934;
  }

  double toMillimeter(double temp) {
    return temp * 160934;
  }

  double toInch(double temp) {
    return temp * 1.609e+6;
  }

  double toFoot(double temp) {
    return temp * 63360;
  }

  double toYard(double temp) {
    return temp * 5280;
  }

  double toMeter(double temp) {
    return temp * 1760;
  }
}

class LengthUnits {
  final meter = Meter();
  final kilometer = Kilometer();
  final centimeter = Centimeter();
  final milimeter = Millimeter();
  final inch = Inch();
  final foot = Foot();
  final yard = Yard();
  final mile = Mile();
}
