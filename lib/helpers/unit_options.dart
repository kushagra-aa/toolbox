// ? Add New Values to Enum whenever a new unit is added
import 'package:toolbox/helpers/UnitsClass/unit_enum.dart';
import 'package:toolbox/helpers/UnitsClass/units_class.dart';

const unitOptions = [
  "area",
  "energy",
  "length",
  "speed",
  "temperature",
  "time",
  "volume",
  "weight"
];

final areaOptions = [
  {
    "name": Units.area.squareMeter.name,
    "symbol": Units.area.squareMeter.symbol,
    "value": UnitEnum.area_squareMeter,
  },
  {
    "name": Units.area.squareKilometer.name,
    "symbol": Units.area.squareKilometer.symbol,
    "value": UnitEnum.area_squareKilometer,
  },
  {
    "name": Units.area.squareCentimeter.name,
    "symbol": Units.area.squareCentimeter.symbol,
    "value": UnitEnum.area_squareCentimeter,
  },
  {
    "name": Units.area.squareInch.name,
    "symbol": Units.area.squareInch.symbol,
    "value": UnitEnum.area_squareInch,
  },
  {
    "name": Units.area.squareFoot.name,
    "symbol": Units.area.squareFoot.symbol,
    "value": UnitEnum.area_squareFoot,
  },
  {
    "name": Units.area.acre.name,
    "symbol": Units.area.acre.symbol,
    "value": UnitEnum.area_acre,
  },
  {
    "name": Units.area.hectare.name,
    "symbol": Units.area.hectare.symbol,
    "value": UnitEnum.area_hectare,
  },
];
final energyOptions = [
  {
    "name": Units.energy.joule.name,
    "symbol": Units.energy.joule.symbol,
    "value": UnitEnum.energy_joule,
  },
  {
    "name": Units.energy.kilocalorie.name,
    "symbol": Units.energy.kilocalorie.symbol,
    "value": UnitEnum.energy_kilocalorie,
  },
  {
    "name": Units.energy.calorie.name,
    "symbol": Units.energy.calorie.symbol,
    "value": UnitEnum.energy_calorie,
  },
];
final lengthOptions = [
  {
    "name": Units.length.meter.name,
    "symbol": Units.length.meter.symbol,
    "value": UnitEnum.length_meter,
  },
  {
    "name": Units.length.kilometer.name,
    "symbol": Units.length.kilometer.symbol,
    "value": UnitEnum.length_kilometer,
  },
  {
    "name": Units.length.centimeter.name,
    "symbol": Units.length.centimeter.symbol,
    "value": UnitEnum.length_centimeter,
  },
  {
    "name": Units.length.milimeter.name,
    "symbol": Units.length.milimeter.symbol,
    "value": UnitEnum.length_millimeter,
  },
  {
    "name": Units.length.inch.name,
    "symbol": Units.length.inch.symbol,
    "value": UnitEnum.length_inch,
  },
  {
    "name": Units.length.foot.name,
    "symbol": Units.length.foot.symbol,
    "value": UnitEnum.length_foot,
  },
  {
    "name": Units.length.yard.name,
    "symbol": Units.length.yard.symbol,
    "value": UnitEnum.length_yard,
  },
  {
    "name": Units.length.mile.name,
    "symbol": Units.length.mile.symbol,
    "value": UnitEnum.length_mile,
  },
];
final speedOptions = [
  {
    "name": Units.speed.meterPerSecond.name,
    "symbol": Units.speed.meterPerSecond.symbol,
    "value": UnitEnum.speed_meterPerSecond,
  },
  {
    "name": Units.speed.kilometerPerHour.name,
    "symbol": Units.speed.kilometerPerHour.symbol,
    "value": UnitEnum.speed_kilometerPerHour,
  },
  {
    "name": Units.speed.milePerHour.name,
    "symbol": Units.speed.milePerHour.symbol,
    "value": UnitEnum.speed_milePerHour,
  },
];
final temperatureOptions = [
  {
    "name": Units.temperature.celsius.name,
    "symbol": Units.temperature.celsius.symbol,
    "value": UnitEnum.temperature_celsius,
  },
  {
    "name": Units.temperature.fahrenheit.name,
    "symbol": Units.temperature.fahrenheit.symbol,
    "value": UnitEnum.temperature_fahrenheit,
  },
  {
    "name": Units.temperature.kelvin.name,
    "symbol": Units.temperature.kelvin.symbol,
    "value": UnitEnum.temperature_kelvin,
  },
];
final timeOptions = [
  {
    "name": Units.time.second.name,
    "symbol": Units.time.second.symbol,
    "value": UnitEnum.time_second,
  },
  {
    "name": Units.time.minute.name,
    "symbol": Units.time.minute.symbol,
    "value": UnitEnum.time_minute,
  },
  {
    "name": Units.time.hour.name,
    "symbol": Units.time.hour.symbol,
    "value": UnitEnum.time_hour,
  },
  {
    "name": Units.time.day.name,
    "symbol": Units.time.day.symbol,
    "value": UnitEnum.time_day,
  },
];
final volumeOptions = [
  {
    "name": Units.volume.fluidOunce.name,
    "symbol": Units.volume.fluidOunce.symbol,
    "value": UnitEnum.volume_fluidOunce,
  },
  {
    "name": Units.volume.gallon.name,
    "symbol": Units.volume.gallon.symbol,
    "value": UnitEnum.volume_gallon,
  },
  {
    "name": Units.volume.quart.name,
    "symbol": Units.volume.quart.symbol,
    "value": UnitEnum.volume_quart,
  },
  {
    "name": Units.volume.pint.name,
    "symbol": Units.volume.pint.symbol,
    "value": UnitEnum.volume_pint,
  },
  {
    "name": Units.volume.cubicMeter.name,
    "symbol": Units.volume.cubicMeter.symbol,
    "value": UnitEnum.volume_cubicMeter,
  },
  {
    "name": Units.volume.cubicCentimeter.name,
    "symbol": Units.volume.cubicCentimeter.symbol,
    "value": UnitEnum.volume_cubicCentimeter,
  },
  {
    "name": Units.volume.milliliter.name,
    "symbol": Units.volume.milliliter.symbol,
    "value": UnitEnum.volume_milliliter,
  },
  {
    "name": Units.volume.liter.name,
    "symbol": Units.volume.liter.symbol,
    "value": UnitEnum.volume_liter,
  },
];
final weightOptions = [
  {
    "name": Units.weight.killogram.name,
    "symbol": Units.weight.killogram.symbol,
    "value": UnitEnum.weight_killogram,
  },
  {
    "name": Units.weight.gram.name,
    "symbol": Units.weight.gram.symbol,
    "value": UnitEnum.weight_gram,
  },
  {
    "name": Units.weight.miligram.name,
    "symbol": Units.weight.miligram.symbol,
    "value": UnitEnum.weight_miligram,
  },
  {
    "name": Units.weight.pound.name,
    "symbol": Units.weight.pound.symbol,
    "value": UnitEnum.weight_pound,
  },
  {
    "name": Units.weight.ounce.name,
    "symbol": Units.weight.ounce.symbol,
    "value": UnitEnum.weight_ounce,
  },
];
