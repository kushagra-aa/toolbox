import 'BaseClass.dart';

class Kilogram extends BaseUnitClass {
  Kilogram() : super("Kilogram", "kg");
  double toGram(double temp) {
    return temp * 1000;
  }

  double toMilligram(double temp) {
    return temp * 1e+6;
  }

  double toPound(double temp) {
    return temp * 2.20462;
  }

  double toOunce(double temp) {
    return temp * 35.27396;
  }
}

class Gram extends BaseUnitClass {
  Gram() : super("Gram", "g");
  double toKilogram(double temp) {
    return temp / 1000;
  }

  double toMilligram(double temp) {
    return temp * 1000;
  }

  double toPound(double temp) {
    return temp * 0.00220462;
  }

  double toOunce(double temp) {
    return temp * 0.03527396;
  }
}

class Milligram extends BaseUnitClass {
  Milligram() : super("Milligram", "mg");
  double toKilogram(double temp) {
    return temp * 1e-6;
  }

  double toGram(double temp) {
    return temp * 0.001;
  }

  double toPound(double temp) {
    return temp * 2.20462e-6;
  }

  double toOunce(double temp) {
    return temp * 3.5274e-5;
  }
}

class Pound extends BaseUnitClass {
  Pound() : super("Pound", "lb");
  double toKilogram(double temp) {
    return temp * 0.453592;
  }

  double toGram(double temp) {
    return temp * 453.592;
  }

  double toMilligram(double temp) {
    return temp * 453592;
  }

  double toOunce(double temp) {
    return temp * 16;
  }
}

class Ounce extends BaseUnitClass {
  Ounce() : super("Ounce", "oz");
  double toKilogram(double temp) {
    return temp * 0.0283495;
  }

  double toGram(double temp) {
    return temp * 28.3495;
  }

  double toMilligram(double temp) {
    return temp * 28349.5;
  }

  double toPound(double temp) {
    return temp * 0.0625;
  }
}

class WeightUnits {
  final killogram = Kilogram();
  final gram = Gram();
  final miligram = Milligram();
  final pound = Pound();
  final ounce = Ounce();
}
