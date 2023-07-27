import 'package:toolbox/helpers/unit_options.dart';

List<Map<String, Object>> getUnitOptions(String option) {
  switch (option) {
    case "area":
      return areaOptions;
    case "energy":
      return energyOptions;
    case "length":
      return lengthOptions;
    case "speed":
      return speedOptions;
    case "temperature":
      return temperatureOptions;
    case "time":
      return timeOptions;
    case "volume":
      return volumeOptions;
    case "weight":
      return weightOptions;
  }
  return areaOptions;
}
