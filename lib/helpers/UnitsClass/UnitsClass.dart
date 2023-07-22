import 'UnitClasses/AreaClass.dart';
import 'UnitClasses/EnergyClass.dart';
import 'UnitClasses/LengthClass.dart';
import 'UnitClasses/SpeedClass.dart';
import 'UnitClasses/TemperatureClass.dart';
import 'UnitClasses/TimeClass.dart';
import 'UnitClasses/VolumeClass.dart';
import 'UnitClasses/WeightClass.dart';
import 'UnitEnum.dart';

// ? Add New Values to Enum whenever a new unit is added
class Units {
  static final length = LengthUnits();
  static final weight = WeightUnits();
  static final temperature = TemperatureUnits();
  static final volume = VolumeUnits();
  static final area = AreaUnits();
  static final speed = SpeedUnits();
  static final time = TimeUnits();
  static final energy = EnergyUnits();

  double convert(double input, UnitEnum fromUnit, UnitEnum toUnit) {
    if (fromUnit == toUnit) return input;
    switch (fromUnit) {
      case UnitEnum.length_meter:
        switch (toUnit) {
          case UnitEnum.length_centimeter:
            return length.meter.toCentimeter(input);
          case UnitEnum.length_foot:
            return length.meter.toFoot(input);
          case UnitEnum.length_inch:
            return length.meter.toInch(input);
          case UnitEnum.length_kilometer:
            return length.meter.toKilometer(input);
          case UnitEnum.length_mile:
            return length.meter.toMile(input);
          case UnitEnum.length_millimeter:
            return length.meter.toMillimeter(input);
          case UnitEnum.length_yard:
            return length.meter.toYard(input);
          default:
            return input;
        }
      case UnitEnum.length_kilometer:
        switch (toUnit) {
          case UnitEnum.length_centimeter:
            return length.kilometer.toCentimeter(input);
          case UnitEnum.length_foot:
            return length.kilometer.toFoot(input);
          case UnitEnum.length_inch:
            return length.kilometer.toInch(input);
          case UnitEnum.length_meter:
            return length.kilometer.toMeter(input);
          case UnitEnum.length_mile:
            return length.kilometer.toMile(input);
          case UnitEnum.length_millimeter:
            return length.kilometer.toMillimeter(input);
          case UnitEnum.length_yard:
            return length.kilometer.toYard(input);
          default:
            return input;
        }
      case UnitEnum.length_centimeter:
        switch (toUnit) {
          case UnitEnum.length_meter:
            return length.centimeter.toMeter(input);
          case UnitEnum.length_foot:
            return length.centimeter.toFoot(input);
          case UnitEnum.length_inch:
            return length.centimeter.toInch(input);
          case UnitEnum.length_kilometer:
            return length.centimeter.toKilometer(input);
          case UnitEnum.length_mile:
            return length.centimeter.toMile(input);
          case UnitEnum.length_millimeter:
            return length.centimeter.toMillimeter(input);
          case UnitEnum.length_yard:
            return length.centimeter.toYard(input);
          default:
            return input;
        }
      case UnitEnum.length_millimeter:
        switch (toUnit) {
          case UnitEnum.length_centimeter:
            return length.milimeter.toCentimeter(input);
          case UnitEnum.length_foot:
            return length.milimeter.toFoot(input);
          case UnitEnum.length_inch:
            return length.milimeter.toInch(input);
          case UnitEnum.length_kilometer:
            return length.milimeter.toKilometer(input);
          case UnitEnum.length_mile:
            return length.milimeter.toMile(input);
          case UnitEnum.length_meter:
            return length.milimeter.toMeter(input);
          case UnitEnum.length_yard:
            return length.milimeter.toYard(input);
          default:
            return input;
        }
      case UnitEnum.length_inch:
        switch (toUnit) {
          case UnitEnum.length_centimeter:
            return length.inch.toCentimeter(input);
          case UnitEnum.length_foot:
            return length.inch.toFoot(input);
          case UnitEnum.length_meter:
            return length.inch.toMeter(input);
          case UnitEnum.length_kilometer:
            return length.inch.toKilometer(input);
          case UnitEnum.length_mile:
            return length.inch.toMile(input);
          case UnitEnum.length_millimeter:
            return length.inch.toMillimeter(input);
          case UnitEnum.length_yard:
            return length.inch.toYard(input);
          default:
            return input;
        }
      case UnitEnum.length_foot:
        switch (toUnit) {
          case UnitEnum.length_centimeter:
            return length.foot.toCentimeter(input);
          case UnitEnum.length_meter:
            return length.foot.toMeter(input);
          case UnitEnum.length_inch:
            return length.foot.toInch(input);
          case UnitEnum.length_kilometer:
            return length.foot.toKilometer(input);
          case UnitEnum.length_mile:
            return length.foot.toMile(input);
          case UnitEnum.length_millimeter:
            return length.foot.toMillimeter(input);
          case UnitEnum.length_yard:
            return length.foot.toYard(input);
          default:
            return input;
        }
      case UnitEnum.length_yard:
        switch (toUnit) {
          case UnitEnum.length_centimeter:
            return length.yard.toCentimeter(input);
          case UnitEnum.length_foot:
            return length.yard.toFoot(input);
          case UnitEnum.length_inch:
            return length.yard.toInch(input);
          case UnitEnum.length_kilometer:
            return length.yard.toKilometer(input);
          case UnitEnum.length_mile:
            return length.yard.toMile(input);
          case UnitEnum.length_millimeter:
            return length.yard.toMillimeter(input);
          case UnitEnum.length_meter:
            return length.yard.toMeter(input);
          default:
            return input;
        }
      case UnitEnum.length_mile:
        switch (toUnit) {
          case UnitEnum.length_centimeter:
            return length.mile.toCentimeter(input);
          case UnitEnum.length_foot:
            return length.mile.toFoot(input);
          case UnitEnum.length_inch:
            return length.mile.toInch(input);
          case UnitEnum.length_kilometer:
            return length.mile.toKilometer(input);
          case UnitEnum.length_yard:
            return length.mile.toYard(input);
          case UnitEnum.length_millimeter:
            return length.mile.toMillimeter(input);
          case UnitEnum.length_meter:
            return length.mile.toMeter(input);
          default:
            return input;
        }
      case UnitEnum.weight_killogram:
        switch (toUnit) {
          case UnitEnum.weight_gram:
            return weight.killogram.toGram(input);
          case UnitEnum.weight_miligram:
            return weight.killogram.toMilligram(input);
          case UnitEnum.weight_ounce:
            return weight.killogram.toOunce(input);
          case UnitEnum.weight_pound:
            return weight.killogram.toPound(input);
          default:
            return input;
        }
      case UnitEnum.weight_gram:
        switch (toUnit) {
          case UnitEnum.weight_killogram:
            return weight.gram.toKilogram(input);
          case UnitEnum.weight_miligram:
            return weight.gram.toMilligram(input);
          case UnitEnum.weight_ounce:
            return weight.gram.toOunce(input);
          case UnitEnum.weight_pound:
            return weight.gram.toPound(input);
          default:
            return input;
        }
      case UnitEnum.weight_miligram:
        switch (toUnit) {
          case UnitEnum.weight_gram:
            return weight.miligram.toGram(input);
          case UnitEnum.weight_killogram:
            return weight.miligram.toKilogram(input);
          case UnitEnum.weight_ounce:
            return weight.miligram.toOunce(input);
          case UnitEnum.weight_pound:
            return weight.miligram.toPound(input);
          default:
            return input;
        }
      case UnitEnum.weight_pound:
        switch (toUnit) {
          case UnitEnum.weight_gram:
            return weight.pound.toGram(input);
          case UnitEnum.weight_killogram:
            return weight.pound.toKilogram(input);
          case UnitEnum.weight_miligram:
            return weight.pound.toMilligram(input);
          case UnitEnum.weight_ounce:
            return weight.pound.toOunce(input);
          default:
            return input;
        }
      case UnitEnum.weight_ounce:
        switch (toUnit) {
          case UnitEnum.weight_gram:
            return weight.ounce.toGram(input);
          case UnitEnum.weight_killogram:
            return weight.ounce.toKilogram(input);
          case UnitEnum.weight_miligram:
            return weight.ounce.toMilligram(input);
          case UnitEnum.weight_pound:
            return weight.ounce.toPound(input);
          default:
            return input;
        }
      case UnitEnum.temperature_celsius:
        switch (toUnit) {
          case UnitEnum.temperature_fahrenheit:
            return temperature.celsius.toFahrenheit(input);
          case UnitEnum.temperature_kelvin:
            return temperature.celsius.toKelvin(input);
          default:
            return input;
        }
      case UnitEnum.temperature_fahrenheit:
        switch (toUnit) {
          case UnitEnum.temperature_celsius:
            return temperature.fahrenheit.toCelsius(input);
          case UnitEnum.temperature_kelvin:
            return temperature.fahrenheit.toKelvin(input);
          default:
            return input;
        }
      case UnitEnum.temperature_kelvin:
        switch (toUnit) {
          case UnitEnum.temperature_celsius:
            return temperature.kelvin.toCelsius(input);
          case UnitEnum.temperature_fahrenheit:
            return temperature.kelvin.toFahrenheit(input);
          default:
            return input;
        }
      case UnitEnum.volume_fluidOunce:
        switch (toUnit) {
          case UnitEnum.volume_cubicCentimeter:
            return volume.fluidOunce.toCubicCentimeter(input);
          case UnitEnum.volume_cubicMeter:
            return volume.fluidOunce.toCubicMeter(input);
          case UnitEnum.volume_gallon:
            return volume.fluidOunce.toGallon(input);
          case UnitEnum.volume_liter:
            return volume.fluidOunce.toLiter(input);
          case UnitEnum.volume_milliliter:
            return volume.fluidOunce.toMilliliter(input);
          case UnitEnum.volume_pint:
            return volume.fluidOunce.toPint(input);
          case UnitEnum.volume_quart:
            return volume.fluidOunce.toQuart(input);
          default:
            return input;
        }
      case UnitEnum.volume_gallon:
        switch (toUnit) {
          case UnitEnum.volume_cubicCentimeter:
            return volume.gallon.toCubicCentimeter(input);
          case UnitEnum.volume_cubicMeter:
            return volume.gallon.toCubicMeter(input);
          case UnitEnum.volume_fluidOunce:
            return volume.gallon.toFluidOunce(input);
          case UnitEnum.volume_liter:
            return volume.gallon.toLiter(input);
          case UnitEnum.volume_milliliter:
            return volume.gallon.toMilliliter(input);
          case UnitEnum.volume_pint:
            return volume.gallon.toPint(input);
          case UnitEnum.volume_quart:
            return volume.gallon.toQuart(input);
          default:
            return input;
        }
      case UnitEnum.volume_quart:
        switch (toUnit) {
          case UnitEnum.volume_cubicCentimeter:
            return volume.quart.toCubicCentimeter(input);
          case UnitEnum.volume_cubicMeter:
            return volume.quart.toCubicMeter(input);
          case UnitEnum.volume_fluidOunce:
            return volume.quart.toFluidOunce(input);
          case UnitEnum.volume_gallon:
            return volume.quart.toGallon(input);
          case UnitEnum.volume_liter:
            return volume.quart.toLiter(input);
          case UnitEnum.volume_milliliter:
            return volume.quart.toMilliliter(input);
          case UnitEnum.volume_pint:
            return volume.quart.toPint(input);
          default:
            return input;
        }
      case UnitEnum.volume_pint:
        switch (toUnit) {
          case UnitEnum.volume_cubicCentimeter:
            return volume.pint.toCubicCentimeter(input);
          case UnitEnum.volume_cubicMeter:
            return volume.pint.toCubicMeter(input);
          case UnitEnum.volume_fluidOunce:
            return volume.pint.toFluidOunce(input);
          case UnitEnum.volume_gallon:
            return volume.pint.toGallon(input);
          case UnitEnum.volume_liter:
            return volume.pint.toLiter(input);
          case UnitEnum.volume_milliliter:
            return volume.pint.toMilliliter(input);
          case UnitEnum.volume_quart:
            return volume.pint.toQuart(input);
          default:
            return input;
        }
      case UnitEnum.volume_cubicMeter:
        switch (toUnit) {
          case UnitEnum.volume_cubicCentimeter:
            return volume.cubicMeter.toCubicCentimeter(input);
          case UnitEnum.volume_fluidOunce:
            return volume.cubicMeter.toFluidOunce(input);
          case UnitEnum.volume_gallon:
            return volume.cubicMeter.toGallon(input);
          case UnitEnum.volume_liter:
            return volume.cubicMeter.toLiter(input);
          case UnitEnum.volume_milliliter:
            return volume.cubicMeter.toMilliliter(input);
          case UnitEnum.volume_pint:
            return volume.cubicMeter.toPint(input);
          case UnitEnum.volume_quart:
            return volume.cubicMeter.toQuart(input);
          default:
            return input;
        }
      case UnitEnum.volume_cubicCentimeter:
        switch (toUnit) {
          case UnitEnum.volume_cubicCentimeter:
            return volume.cubicCentimeter.toCubicMeter(input);
          case UnitEnum.volume_fluidOunce:
            return volume.cubicCentimeter.toFluidOunce(input);
          case UnitEnum.volume_gallon:
            return volume.cubicCentimeter.toGallon(input);
          case UnitEnum.volume_liter:
            return volume.cubicCentimeter.toLiter(input);
          case UnitEnum.volume_milliliter:
            return volume.cubicCentimeter.toMilliliter(input);
          case UnitEnum.volume_pint:
            return volume.cubicCentimeter.toPint(input);
          case UnitEnum.volume_quart:
            return volume.cubicCentimeter.toQuart(input);
          default:
            return input;
        }
      case UnitEnum.volume_milliliter:
        switch (toUnit) {
          case UnitEnum.volume_cubicCentimeter:
            return volume.milliliter.toCubicCentimeter(input);
          case UnitEnum.volume_cubicMeter:
            return volume.milliliter.toCubicMeter(input);
          case UnitEnum.volume_fluidOunce:
            return volume.milliliter.toFluidOunce(input);
          case UnitEnum.volume_gallon:
            return volume.milliliter.toGallon(input);
          case UnitEnum.volume_liter:
            return volume.milliliter.toLiter(input);
          case UnitEnum.volume_pint:
            return volume.milliliter.toPint(input);
          case UnitEnum.volume_quart:
            return volume.milliliter.toQuart(input);
          default:
            return input;
        }
      case UnitEnum.volume_liter:
        switch (toUnit) {
          case UnitEnum.volume_cubicCentimeter:
            return volume.liter.toCubicCentimeter(input);
          case UnitEnum.volume_cubicMeter:
            return volume.liter.toCubicMeter(input);
          case UnitEnum.volume_fluidOunce:
            return volume.liter.toFluidOunce(input);
          case UnitEnum.volume_gallon:
            return volume.liter.toGallon(input);
          case UnitEnum.volume_milliliter:
            return volume.liter.toMilliliter(input);
          case UnitEnum.volume_pint:
            return volume.liter.toPint(input);
          case UnitEnum.volume_quart:
            return volume.liter.toQuart(input);
          default:
            return input;
        }
      case UnitEnum.area_acre:
        switch (toUnit) {
          case UnitEnum.area_hectare:
            return area.acre.toHectare(input);
          case UnitEnum.area_squareCentimeter:
            return area.acre.toSquareCentimeter(input);
          case UnitEnum.area_squareFoot:
            return area.acre.toSquareFoot(input);
          case UnitEnum.area_squareInch:
            return area.acre.toSquareInch(input);
          case UnitEnum.area_squareKilometer:
            return area.acre.toSquareKilometer(input);
          case UnitEnum.area_squareMeter:
            return area.acre.toSquareMeter(input);
          default:
            return input;
        }
      case UnitEnum.area_hectare:
        switch (toUnit) {
          case UnitEnum.area_acre:
            return area.hectare.toAcre(input);
          case UnitEnum.area_squareCentimeter:
            return area.hectare.toSquareCentimeter(input);
          case UnitEnum.area_squareFoot:
            return area.hectare.toSquareFoot(input);
          case UnitEnum.area_squareInch:
            return area.hectare.toSquareInch(input);
          case UnitEnum.area_squareKilometer:
            return area.hectare.toSquareKilometer(input);
          case UnitEnum.area_squareMeter:
            return area.hectare.toSquareMeter(input);
          default:
            return input;
        }
      case UnitEnum.area_squareMeter:
        switch (toUnit) {
          case UnitEnum.area_acre:
            return area.squareMeter.toAcre(input);
          case UnitEnum.area_hectare:
            return area.squareMeter.toHectare(input);
          case UnitEnum.area_squareCentimeter:
            return area.squareMeter.toSquareCentimeter(input);
          case UnitEnum.area_squareFoot:
            return area.squareMeter.toSquareFoot(input);
          case UnitEnum.area_squareInch:
            return area.squareMeter.toSquareInch(input);
          case UnitEnum.area_squareKilometer:
            return area.squareMeter.toSquareKilometer(input);
          default:
            return input;
        }
      case UnitEnum.area_squareKilometer:
        switch (toUnit) {
          case UnitEnum.area_acre:
            return area.squareKilometer.toAcre(input);
          case UnitEnum.area_hectare:
            return area.squareKilometer.toHectare(input);
          case UnitEnum.area_squareCentimeter:
            return area.squareKilometer.toSquareCentimeter(input);
          case UnitEnum.area_squareFoot:
            return area.squareKilometer.toSquareFoot(input);
          case UnitEnum.area_squareInch:
            return area.squareKilometer.toSquareInch(input);
          case UnitEnum.area_squareMeter:
            return area.squareKilometer.toSquareMeter(input);
          default:
            return input;
        }
      case UnitEnum.area_squareCentimeter:
        switch (toUnit) {
          case UnitEnum.area_acre:
            return area.squareCentimeter.toAcre(input);
          case UnitEnum.area_hectare:
            return area.squareCentimeter.toHectare(input);
          case UnitEnum.area_squareFoot:
            return area.squareCentimeter.toSquareFoot(input);
          case UnitEnum.area_squareInch:
            return area.squareCentimeter.toSquareInch(input);
          case UnitEnum.area_squareKilometer:
            return area.squareCentimeter.toSquareKilometer(input);
          case UnitEnum.area_squareMeter:
            return area.squareCentimeter.toSquareMeter(input);
          default:
            return input;
        }
      case UnitEnum.area_squareInch:
        switch (toUnit) {
          case UnitEnum.area_acre:
            return area.squareInch.toAcre(input);
          case UnitEnum.area_hectare:
            return area.squareInch.toHectare(input);
          case UnitEnum.area_squareCentimeter:
            return area.squareInch.toSquareCentimeter(input);
          case UnitEnum.area_squareFoot:
            return area.squareInch.toSquareFoot(input);
          case UnitEnum.area_squareKilometer:
            return area.squareInch.toSquareKilometer(input);
          case UnitEnum.area_squareMeter:
            return area.squareInch.toSquareMeter(input);
          default:
            return input;
        }
      case UnitEnum.area_squareFoot:
        switch (toUnit) {
          case UnitEnum.area_acre:
            return area.squareFoot.toAcre(input);
          case UnitEnum.area_hectare:
            return area.squareFoot.toHectare(input);
          case UnitEnum.area_squareCentimeter:
            return area.squareFoot.toSquareCentimeter(input);
          case UnitEnum.area_squareInch:
            return area.squareFoot.toSquareInch(input);
          case UnitEnum.area_squareKilometer:
            return area.squareFoot.toSquareKilometer(input);
          case UnitEnum.area_squareMeter:
            return area.squareFoot.toSquareMeter(input);
          default:
            return input;
        }
      case UnitEnum.speed_meterPerSecond:
        switch (toUnit) {
          case UnitEnum.speed_meterPerSecond:
            return speed.meterPerSecond.toKilometerPerHour(input);
          case UnitEnum.speed_milePerHour:
            return speed.meterPerSecond.toMilePerHour(input);
          default:
            return input;
        }
      case UnitEnum.speed_kilometerPerHour:
        switch (toUnit) {
          case UnitEnum.speed_kilometerPerHour:
            return speed.kilometerPerHour.toMeterPerSecond(input);
          case UnitEnum.speed_milePerHour:
            return speed.kilometerPerHour.toMilePerHour(input);
          default:
            return input;
        }
      case UnitEnum.speed_milePerHour:
        switch (toUnit) {
          case UnitEnum.speed_kilometerPerHour:
            return speed.milePerHour.toMeterPerSecond(input);
          case UnitEnum.speed_meterPerSecond:
            return speed.milePerHour.toKilometerPerHour(input);
          default:
            return input;
        }
      case UnitEnum.time_second:
        switch (toUnit) {
          case UnitEnum.time_day:
            return time.second.toDay(input);
          case UnitEnum.time_hour:
            return time.second.toHour(input);
          case UnitEnum.time_minute:
            return time.second.toMinute(input);
          default:
            return input;
        }
      case UnitEnum.time_minute:
        switch (toUnit) {
          case UnitEnum.time_day:
            return time.minute.toDay(input);
          case UnitEnum.time_hour:
            return time.minute.toHour(input);
          case UnitEnum.time_second:
            return time.minute.toSecond(input);
          default:
            return input;
        }
      case UnitEnum.time_hour:
        switch (toUnit) {
          case UnitEnum.time_day:
            return time.hour.toDay(input);
          case UnitEnum.time_minute:
            return time.hour.toMinute(input);
          case UnitEnum.time_second:
            return time.hour.toSecond(input);
          default:
            return input;
        }
      case UnitEnum.time_day:
        switch (toUnit) {
          case UnitEnum.time_hour:
            return time.day.toHour(input);
          case UnitEnum.time_minute:
            return time.day.toMinute(input);
          case UnitEnum.time_second:
            return time.day.toSecond(input);
          default:
            return input;
        }
      case UnitEnum.energy_joule:
        switch (toUnit) {
          case UnitEnum.energy_calorie:
            return energy.joule.toCalorie(input);
          case UnitEnum.energy_kilocalorie:
            return energy.joule.toKilocalorie(input);
          default:
            return input;
        }
      case UnitEnum.energy_kilocalorie:
        switch (toUnit) {
          case UnitEnum.energy_calorie:
            return energy.kilocalorie.toCalorie(input);
          case UnitEnum.energy_joule:
            return energy.kilocalorie.toJoule(input);
          default:
            return input;
        }
      case UnitEnum.energy_calorie:
        switch (toUnit) {
          case UnitEnum.energy_joule:
            return energy.calorie.toJoule(input);
          case UnitEnum.energy_kilocalorie:
            return energy.calorie.toKilocalorie(input);
          default:
            return input;
        }
    }
  }

  String getUnitName(UnitEnum unit) {
    switch (unit) {
      case UnitEnum.length_meter:
        return length.meter.name;
      case UnitEnum.length_kilometer:
        return length.kilometer.name;
      case UnitEnum.length_centimeter:
        return length.centimeter.name;
      case UnitEnum.length_millimeter:
        return length.milimeter.name;
      case UnitEnum.length_inch:
        return length.inch.name;
      case UnitEnum.length_foot:
        return length.foot.name;
      case UnitEnum.length_yard:
        return length.yard.name;
      case UnitEnum.length_mile:
        return length.mile.name;
      case UnitEnum.weight_killogram:
        return weight.killogram.name;
      case UnitEnum.weight_gram:
        return weight.gram.name;
      case UnitEnum.weight_miligram:
        return weight.miligram.name;
      case UnitEnum.weight_pound:
        return weight.pound.name;
      case UnitEnum.weight_ounce:
        return weight.ounce.name;
      case UnitEnum.temperature_celsius:
        return temperature.celsius.name;
      case UnitEnum.temperature_fahrenheit:
        return temperature.fahrenheit.name;
      case UnitEnum.temperature_kelvin:
        return temperature.kelvin.name;
      case UnitEnum.volume_fluidOunce:
        return volume.fluidOunce.name;
      case UnitEnum.volume_gallon:
        return volume.gallon.name;
      case UnitEnum.volume_quart:
        return volume.quart.name;
      case UnitEnum.volume_pint:
        return volume.pint.name;
      case UnitEnum.volume_cubicMeter:
        return volume.cubicMeter.name;
      case UnitEnum.volume_cubicCentimeter:
        return volume.cubicCentimeter.name;
      case UnitEnum.volume_milliliter:
        return volume.milliliter.name;
      case UnitEnum.volume_liter:
        return volume.liter.name;
      case UnitEnum.area_acre:
        return area.acre.name;
      case UnitEnum.area_hectare:
        return area.hectare.name;
      case UnitEnum.area_squareMeter:
        return area.squareMeter.name;
      case UnitEnum.area_squareKilometer:
        return area.squareKilometer.name;
      case UnitEnum.area_squareCentimeter:
        return area.squareCentimeter.name;
      case UnitEnum.area_squareInch:
        return area.squareInch.name;
      case UnitEnum.area_squareFoot:
        return area.squareFoot.name;
      case UnitEnum.speed_meterPerSecond:
        return speed.meterPerSecond.name;
      case UnitEnum.speed_kilometerPerHour:
        return speed.kilometerPerHour.name;
      case UnitEnum.speed_milePerHour:
        return speed.milePerHour.name;
      case UnitEnum.time_second:
        return time.second.name;
      case UnitEnum.time_minute:
        return time.minute.name;
      case UnitEnum.time_hour:
        return time.hour.name;
      case UnitEnum.time_day:
        return time.day.name;
      case UnitEnum.energy_joule:
        return energy.joule.name;
      case UnitEnum.energy_kilocalorie:
        return energy.kilocalorie.name;
      case UnitEnum.energy_calorie:
        return energy.calorie.name;
    }
  }

  String getUnitSymbol(UnitEnum unit) {
    switch (unit) {
      case UnitEnum.length_meter:
        return length.meter.symbol;
      case UnitEnum.length_kilometer:
        return length.kilometer.symbol;
      case UnitEnum.length_centimeter:
        return length.centimeter.symbol;
      case UnitEnum.length_millimeter:
        return length.milimeter.symbol;
      case UnitEnum.length_inch:
        return length.inch.symbol;
      case UnitEnum.length_foot:
        return length.foot.symbol;
      case UnitEnum.length_yard:
        return length.yard.symbol;
      case UnitEnum.length_mile:
        return length.mile.symbol;
      case UnitEnum.weight_killogram:
        return weight.killogram.symbol;
      case UnitEnum.weight_gram:
        return weight.gram.symbol;
      case UnitEnum.weight_miligram:
        return weight.miligram.symbol;
      case UnitEnum.weight_pound:
        return weight.pound.symbol;
      case UnitEnum.weight_ounce:
        return weight.ounce.symbol;
      case UnitEnum.temperature_celsius:
        return temperature.celsius.symbol;
      case UnitEnum.temperature_fahrenheit:
        return temperature.fahrenheit.symbol;
      case UnitEnum.temperature_kelvin:
        return temperature.kelvin.symbol;
      case UnitEnum.volume_fluidOunce:
        return volume.fluidOunce.symbol;
      case UnitEnum.volume_gallon:
        return volume.gallon.symbol;
      case UnitEnum.volume_quart:
        return volume.quart.symbol;
      case UnitEnum.volume_pint:
        return volume.pint.symbol;
      case UnitEnum.volume_cubicMeter:
        return volume.cubicMeter.symbol;
      case UnitEnum.volume_cubicCentimeter:
        return volume.cubicCentimeter.symbol;
      case UnitEnum.volume_milliliter:
        return volume.milliliter.symbol;
      case UnitEnum.volume_liter:
        return volume.liter.symbol;
      case UnitEnum.area_acre:
        return area.acre.symbol;
      case UnitEnum.area_hectare:
        return area.hectare.symbol;
      case UnitEnum.area_squareMeter:
        return area.squareMeter.symbol;
      case UnitEnum.area_squareKilometer:
        return area.squareKilometer.symbol;
      case UnitEnum.area_squareCentimeter:
        return area.squareCentimeter.symbol;
      case UnitEnum.area_squareInch:
        return area.squareInch.symbol;
      case UnitEnum.area_squareFoot:
        return area.squareFoot.symbol;
      case UnitEnum.speed_meterPerSecond:
        return speed.meterPerSecond.symbol;
      case UnitEnum.speed_kilometerPerHour:
        return speed.kilometerPerHour.symbol;
      case UnitEnum.speed_milePerHour:
        return speed.milePerHour.symbol;
      case UnitEnum.time_second:
        return time.second.symbol;
      case UnitEnum.time_minute:
        return time.minute.symbol;
      case UnitEnum.time_hour:
        return time.hour.symbol;
      case UnitEnum.time_day:
        return time.day.symbol;
      case UnitEnum.energy_joule:
        return energy.joule.symbol;
      case UnitEnum.energy_kilocalorie:
        return energy.kilocalorie.symbol;
      case UnitEnum.energy_calorie:
        return energy.calorie.symbol;
    }
  }
}
