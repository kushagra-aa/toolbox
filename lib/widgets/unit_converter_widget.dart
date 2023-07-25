import 'package:flutter/material.dart';
import 'package:toolbox/helpers/UnitsClass/unit_enum.dart';
import 'package:toolbox/helpers/UnitsClass/units_class.dart';

class UnitConvertor extends StatefulWidget {
  const UnitConvertor({super.key});

  @override
  State<UnitConvertor> createState() => _UnitConvertorState();
}

class _UnitConvertorState extends State<UnitConvertor> {
  late final TextEditingController _input1;
  late final TextEditingController _input2;

  double input1 = 0;
  double input2 = 0;

  @override
  void initState() {
    _input1 = TextEditingController();
    _input2 = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _input1.dispose();
    _input2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final units = Units();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          '${units.convert(input1, UnitEnum.time_day, UnitEnum.time_hour)}',
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
        TextField(
          controller: _input1,
          onChanged: (v) => setState(() {
            double temp =
                double.parse(double.parse(_input1.text).toStringAsFixed(3));
            double converted = double.parse(units
                .convert(temp, UnitEnum.time_day, UnitEnum.time_hour)
                .toStringAsFixed(3));
            input1 = temp;
            input2 = converted;
            _input2.text = converted.toString();
          }),
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
          keyboardType: TextInputType.number,
        ),
        TextField(
          controller: _input2,
          onChanged: (v) => setState(() {
            double temp =
                double.parse(double.parse(_input2.text).toStringAsFixed(3));
            double converted = double.parse(units
                .convert(temp, UnitEnum.time_hour, UnitEnum.time_day)
                .toStringAsFixed(3));
            input1 = converted;
            input2 = temp;
            _input1.text = converted.toString();
          }),
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
          keyboardType: TextInputType.number,
        )
      ],
    );
  }
}