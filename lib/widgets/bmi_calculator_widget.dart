import 'package:flutter/material.dart';
import 'package:toolbox/helpers/UnitsClass/unit_enum.dart';
import 'package:toolbox/helpers/UnitsClass/units_class.dart';
import 'package:toolbox/helpers/bmi_calculator.dart';
import 'package:toolbox/helpers/unit_options.dart';
import 'package:toolbox/widgets/bmi_report.dart';
import 'package:toolbox/widgets/unit_dropdown_widget.dart';
import 'dart:developer' as devtools show log;

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  late final TextEditingController _heightInput;
  late final TextEditingController _weightInput;

  late List<Map<String, Object>> bmiHeightOptions;
  late List<Map<String, Object>> bmiWeightOptions;

  late String selectedHeightOption;
  late String selectedWightOption;
  String report = '';
  double value = 0;

  void calculate() {
    double heightInM = double.parse(_heightInput.text);
    double weightInKG = double.parse(_weightInput.text);
    final units = Units();
    if (selectedHeightOption != lengthOptions[0]['name']) {
      heightInM = units.convert(
          heightInM,
          units.getUnitEnumFromName(selectedHeightOption),
          UnitEnum.length_meter);
    }
    if (selectedWightOption != weightOptions[0]['name']) {
      weightInKG = units.convert(
          weightInKG,
          units.getUnitEnumFromName(selectedWightOption),
          UnitEnum.weight_killogram);
    }
    setState(() {
      value =
          double.parse(calculateBMI(heightInM, weightInKG).toStringAsFixed(2));
      if (value > 27) {
        report = 'You Fat!';
      } else {
        report = '';
      }
      devtools.log(_heightInput.text);
      devtools.log(_weightInput.text);
    });
  }

  @override
  void initState() {
    _heightInput = TextEditingController();
    _weightInput = TextEditingController();
    bmiHeightOptions = lengthOptions;
    bmiWeightOptions = weightOptions;
    selectedHeightOption = (bmiHeightOptions[0]['name']).toString();
    selectedWightOption = (bmiWeightOptions[0]['name']).toString();
    super.initState();
  }

  @override
  void dispose() {
    _heightInput.dispose();
    _weightInput.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (value == 0) {
      return Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  width: 1,
                ))),
                height: 50,
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Expanded(
                    child: TextField(
                      decoration:
                          const InputDecoration.collapsed(hintText: 'Height'),
                      controller: _heightInput,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onBackground),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  UnitDropdown(
                    dropdownValue: selectedHeightOption,
                    changeDropdownValue: (v) {
                      setState(() => selectedHeightOption =
                          v ?? (bmiHeightOptions[0]['name']).toString());
                    },
                    dropdownOptions: bmiHeightOptions,
                  ),
                ])),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: Theme.of(context).colorScheme.inversePrimary,
                width: 1,
              ))),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: TextField(
                      decoration:
                          const InputDecoration.collapsed(hintText: 'Weight'),
                      controller: _weightInput,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onBackground),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  UnitDropdown(
                    dropdownValue: selectedWightOption,
                    changeDropdownValue: (v) {
                      setState(() => selectedWightOption =
                          v ?? (bmiWeightOptions[0]['name']).toString());
                    },
                    dropdownOptions: bmiWeightOptions,
                  ),
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                    onPressed: () {
                      calculate();
                    },
                    child: const Text('Calculate'))),
          ],
        ),
      );
    }
    return BMIReport(
        bmiValue: value,
        heightValue: double.parse(_heightInput.text),
        reset: () {
          setState(() {
            value = 0;
            _heightInput.text = '';
            _weightInput.text = '';
          });
        });
  }
}
