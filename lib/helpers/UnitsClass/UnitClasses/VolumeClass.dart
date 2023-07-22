import 'BaseClass.dart';

class Liter extends BaseUnitClass {
  Liter() : super("Liter", "L");
  double toMilliliter(double temp) {
    return temp * 1000;
  }

  double toCubicMeter(double temp) {
    return temp / 1000;
  }

  double toCubicCentimeter(double temp) {
    return temp * 1000;
  }

  double toGallon(double temp) {
    return temp * 0.264172;
  }

  double toQuart(double temp) {
    return temp * 1.056688;
  }

  double toPint(double temp) {
    return temp * 2.113376;
  }

  double toFluidOunce(double temp) {
    return temp * 33.814;
  }
}

class Milliliter extends BaseUnitClass {
  Milliliter() : super("Milliliter", "mL");
  double toLiter(double temp) {
    return temp / 1000;
  }

  double toCubicMeter(double temp) {
    return temp / 1e+6;
  }

  double toCubicCentimeter(double temp) {
    return temp;
  }

  double toGallon(double temp) {
    return temp * 0.000264172;
  }

  double toQuart(double temp) {
    return temp * 0.001056688;
  }

  double toPint(double temp) {
    return temp * 0.002113376;
  }

  double toFluidOunce(double temp) {
    return temp * 0.033814;
  }
}

class CubicMeter extends BaseUnitClass {
  CubicMeter() : super("Cubic Meter", "m³");
  double toMilliliter(double temp) {
    return temp * 1000;
  }

  double toLiter(double temp) {
    return temp * 1e+6;
  }

  double toCubicCentimeter(double temp) {
    return temp * 1e+6;
  }

  double toGallon(double temp) {
    return temp * 264.172;
  }

  double toQuart(double temp) {
    return temp * 1056.688;
  }

  double toPint(double temp) {
    return temp * 2113.376;
  }

  double toFluidOunce(double temp) {
    return temp * 33814.0227;
  }
}

class CubicCentimeter extends BaseUnitClass {
  CubicCentimeter() : super("Cubic Centimeter", "cm³");
  double toMilliliter(double temp) {
    return temp / 1000;
  }

  double toCubicMeter(double temp) {
    return temp;
  }

  double toLiter(double temp) {
    return temp / 1e+6;
  }

  double toGallon(double temp) {
    return temp * 2.64172e-4;
  }

  double toQuart(double temp) {
    return temp * 1.056688e-3;
  }

  double toPint(double temp) {
    return temp * 2.113376e-3;
  }

  double toFluidOunce(double temp) {
    return temp * 3.3814e-2;
  }
}

class Gallon extends BaseUnitClass {
  Gallon() : super("Gallon", "gal");
  double toMilliliter(double temp) {
    return temp * 3.78541;
  }

  double toCubicMeter(double temp) {
    return temp * 3785.41;
  }

  double toCubicCentimeter(double temp) {
    return temp * 0.00378541;
  }

  double toLiter(double temp) {
    return temp * 3785410;
  }

  double toQuart(double temp) {
    return temp * 4;
  }

  double toPint(double temp) {
    return temp * 8;
  }

  double toFluidOunce(double temp) {
    return temp * 128;
  }
}

class Quart extends BaseUnitClass {
  Quart() : super("Quart", "qt");
  double toMilliliter(double temp) {
    return temp * 0.946353;
  }

  double toCubicMeter(double temp) {
    return temp * 946.353;
  }

  double toCubicCentimeter(double temp) {
    return temp * 9.46353e-4;
  }

  double toGallon(double temp) {
    return temp * 946.353;
  }

  double toLiter(double temp) {
    return temp * 0.25;
  }

  double toPint(double temp) {
    return temp * 2;
  }

  double toFluidOunce(double temp) {
    return temp * 32;
  }
}

class Pint extends BaseUnitClass {
  Pint() : super("Pint", "pt");
  double toMilliliter(double temp) {
    return temp * 0.473176;
  }

  double toCubicMeter(double temp) {
    return temp * 473.176;
  }

  double toCubicCentimeter(double temp) {
    return temp * 4.73176e-4;
  }

  double toGallon(double temp) {
    return temp * 473.176;
  }

  double toQuart(double temp) {
    return temp * 0.125;
  }

  double toLiter(double temp) {
    return temp * 0.5;
  }

  double toFluidOunce(double temp) {
    return temp * 16;
  }
}

class FluidOunce extends BaseUnitClass {
  FluidOunce() : super("Fluid Ounce", "fl oz");
  double toMilliliter(double temp) {
    return temp * 0.0295735;
  }

  double toCubicMeter(double temp) {
    return temp * 29.5735;
  }

  double toCubicCentimeter(double temp) {
    return temp * 2.95735e-5;
  }

  double toGallon(double temp) {
    return temp * 29.5735;
  }

  double toQuart(double temp) {
    return temp * 0.0078125;
  }

  double toPint(double temp) {
    return temp * 0.03125;
  }

  double toLiter(double temp) {
    return temp * 0.0625;
  }
}

class VolumeUnits {
  final fluidOunce = FluidOunce();
  final gallon = Gallon();
  final quart = Quart();
  final pint = Pint();
  final cubicMeter = CubicMeter();
  final cubicCentimeter = CubicCentimeter();
  final milliliter = Milliliter();
  final liter = Liter();
}
