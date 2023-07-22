import 'BaseClass.dart';

class Celsius extends BaseUnitClass {
  Celsius() : super("Celsius", "°C");
  // (C × 9/5) + 32
  double toFahrenheit(double temp) {
    return (temp * (9 / 5)) + 32;
  }

  // C + 273.15
  double toKelvin(double temp) {
    return temp + 273.15;
  }
}

class Fahrenheit extends BaseUnitClass {
  Fahrenheit() : super("Fahrenheit", "°F");
  // (F − 32) × 5/9
  double toCelsius(double temp) {
    return (temp - 32) * (5 / 9);
  }

  // ((F − 32) × 5/9) + 273.15
  double toKelvin(double temp) {
    return ((temp - 32) * (5 / 9) + 273.15);
  }
}

class Kelvin extends BaseUnitClass {
  Kelvin() : super("Kelvin", "K");
  // K − 273.15
  double toCelsius(double temp) {
    return temp - 273.15;
  }

  // ((K - 273.15) × 9/5) + 32
  double toFahrenheit(double temp) {
    return ((temp - 273.15) * (9 / 5)) + 32;
  }
}

class TemperatureUnits {
  final celsius = Celsius();
  final fahrenheit = Fahrenheit();
  final kelvin = Kelvin();
}
