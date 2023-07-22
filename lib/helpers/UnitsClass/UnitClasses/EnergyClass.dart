import 'BaseClass.dart';

class Joule extends BaseUnitClass {
  Joule() : super("Joule", "J");
  double toKilocalorie(double temp) {
    return temp * 0.000239006;
  }

  double toCalorie(double temp) {
    return temp * 0.239006;
  }
}

class Kilocalorie extends BaseUnitClass {
  Kilocalorie() : super("Kilocalorie", "kcal");
  double toJoule(double temp) {
    return temp * 4184;
  }

  double toCalorie(double temp) {
    return temp / 1000;
  }
}

class Calorie extends BaseUnitClass {
  Calorie() : super("Calorie", "cal");
  double toKilocalorie(double temp) {
    return temp * 1000;
  }

  double toJoule(double temp) {
    return temp * 4.184;
  }
}

class EnergyUnits {
  final joule = Joule();
  final kilocalorie = Kilocalorie();
  final calorie = Calorie();
}
