import 'BaseClass.dart';

class SquareMeter extends BaseUnitClass {
  SquareMeter() : super("Square meter", "m²");
  double toSquareKilometer(double temp) {
    return temp / 1e6;
  }

  double toSquareCentimeter(double temp) {
    return temp * 10000;
  }

  double toSquareInch(double temp) {
    return temp * 1550.0031;
  }

  double toSquareFoot(double temp) {
    return temp * 10.76391;
  }

  double toAcre(double temp) {
    return temp * 0.000247105;
  }

  double toHectare(double temp) {
    return temp * 0.0001;
  }
}

class SquareKilometer extends BaseUnitClass {
  SquareKilometer() : super("Square kilometer", "km²");
  double toSquareMeter(double temp) {
    return temp * 1e6;
  }

  double toSquareCentimeter(double temp) {
    return temp * 1e10;
  }

  double toSquareInch(double temp) {
    return temp * 1.55e+9;
  }

  double toSquareFoot(double temp) {
    return temp * 1.076e+7;
  }

  double toAcre(double temp) {
    return temp * 247.105;
  }

  double toHectare(double temp) {
    return temp * 100;
  }
}

class SquareCentimeter extends BaseUnitClass {
  SquareCentimeter() : super("Square centimeter", "cm²");
  double toSquareKilometer(double temp) {
    return temp * 0.0001;
  }

  double toSquareMeter(double temp) {
    return temp * 1e-10;
  }

  double toSquareInch(double temp) {
    return temp * 0.15500031;
  }

  double toSquareFoot(double temp) {
    return temp * 0.001076391;
  }

  double toAcre(double temp) {
    return temp * 2.47105e-8;
  }

  double toHectare(double temp) {
    return temp * 1e-8;
  }
}

class SquareInch extends BaseUnitClass {
  SquareInch() : super("Square inch", "in²");
  double toSquareKilometer(double temp) {
    return temp * 0.00064516;
  }

  double toSquareCentimeter(double temp) {
    return temp * 6.4516e-10;
  }

  double toSquareMeter(double temp) {
    return temp * 6.4516;
  }

  double toSquareFoot(double temp) {
    return temp * 0.006944444;
  }

  double toAcre(double temp) {
    return temp * 1.59423e-7;
  }

  double toHectare(double temp) {
    return temp * 6.4516e-8;
  }
}

class SquareFoot extends BaseUnitClass {
  SquareFoot() : super("Square foot", "ft²");
  double toSquareKilometer(double temp) {
    return temp * 0.09290304;
  }

  double toSquareCentimeter(double temp) {
    return temp * 9.290304e-8;
  }

  double toSquareInch(double temp) {
    return temp * 929.0304;
  }

  double toSquareMeter(double temp) {
    return temp * 144;
  }

  double toAcre(double temp) {
    return temp * 2.2957e-5;
  }

  double toHectare(double temp) {
    return temp * 9.290304e-6;
  }
}

class Acre extends BaseUnitClass {
  Acre() : super("Acre", "ac");
  double toSquareKilometer(double temp) {
    return temp * 4046.85642;
  }

  double toSquareCentimeter(double temp) {
    return temp * 0.00404685642;
  }

  double toSquareInch(double temp) {
    return temp * 4.04685642e+7;
  }

  double toSquareFoot(double temp) {
    return temp * 6.273e+6;
  }

  double toSquareMeter(double temp) {
    return temp * 43560;
  }

  double toHectare(double temp) {
    return temp * 0.404685642;
  }
}

class Hectare extends BaseUnitClass {
  Hectare() : super("Hectare", "ha");
  double toSquareKilometer(double temp) {
    return temp * 10000;
  }

  double toSquareCentimeter(double temp) {
    return temp * 0.01;
  }

  double toSquareInch(double temp) {
    return temp * 1e+8;
  }

  double toSquareFoot(double temp) {
    return temp * 1.55e+7;
  }

  double toAcre(double temp) {
    return temp * 107639.1;
  }

  double toSquareMeter(double temp) {
    return temp * 2.47105;
  }
}

class AreaUnits {
  final squareMeter = SquareMeter();
  final squareKilometer = SquareKilometer();
  final squareCentimeter = SquareCentimeter();
  final squareInch = SquareInch();
  final squareFoot = SquareFoot();
  final acre = Acre();
  final hectare = Hectare();
}
