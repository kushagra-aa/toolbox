import 'package:flutter/material.dart';
import 'package:toolbox/helpers/UnitsClass/units_class.dart';
import 'package:toolbox/helpers/get_unit_options.dart';
import 'package:toolbox/widgets/unit_dropdown_widget.dart';
import 'dart:developer' as devtools show log;

class UnitConvertor extends StatefulWidget {
  final String? initialDropdownValue;

  // ignore: prefer_const_constructors_in_immutables
  UnitConvertor({super.key, this.initialDropdownValue});

  @override
  State<UnitConvertor> createState() => _UnitConvertorState();
}

class _UnitConvertorState extends State<UnitConvertor> {
  late final TextEditingController _input1;
  late final TextEditingController _input2;

  late String dropdownValue;
  late List<Map<String, Object>> unitOptions;

  double input1 = 0;
  double input2 = 0;
  late String selectedFromOption;
  late String selectedToOption;

  @override
  void initState() {
    _input1 = TextEditingController();
    _input2 = TextEditingController();
    dropdownValue = widget.initialDropdownValue ?? "area";
    unitOptions = getUnitOptions(dropdownValue);
    devtools.log(unitOptions.toString());
    devtools.log(widget.initialDropdownValue ?? 'not found');
    devtools.log(dropdownValue);
    selectedFromOption = (unitOptions[0]['name']).toString();
    selectedToOption = (unitOptions[0]['name']).toString();
    super.initState();
  }

  @override
  void didUpdateWidget(UnitConvertor oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialDropdownValue != widget.initialDropdownValue) {
      // Dropdown value has changed in the parent (HomePage), update the state and trigger the function
      dropdownValue = widget.initialDropdownValue ?? "area";
      devtools.log("Change");
      unitOptions = getUnitOptions(dropdownValue);
      selectedFromOption = (unitOptions[0]['name']).toString();
      selectedToOption = (unitOptions[0]['name']).toString();
      devtools.log(dropdownValue);
      devtools.log(unitOptions.toString());
    }
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
                        const InputDecoration.collapsed(hintText: 'From Value'),
                    controller: _input1,
                    onChanged: (v) => setState(() {
                      double temp = double.parse(
                          double.parse(_input1.text).toStringAsFixed(8));
                      double converted = double.parse(units
                          .convert(
                              temp,
                              units.getUnitEnumFromName(selectedFromOption),
                              units.getUnitEnumFromName(selectedToOption))
                          .toStringAsFixed(8));
                      input1 = temp;
                      input2 = converted;
                      _input2.text = converted.toString();
                    }),
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground),
                    keyboardType: TextInputType.number,
                  ),
                ),
                UnitDropdown(
                  dropdownValue: selectedFromOption,
                  changeDropdownValue: (v) {
                    setState(() => selectedFromOption =
                        v ?? (unitOptions[0]['name']).toString());
                  },
                  dropdownOptions: unitOptions,
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
                        const InputDecoration.collapsed(hintText: 'To Value'),
                    controller: _input2,
                    onChanged: (v) => setState(() {
                      double temp = double.parse(
                          double.parse(_input2.text).toStringAsFixed(8));
                      double converted = double.parse(units
                          .convert(
                              temp,
                              units.getUnitEnumFromName(selectedToOption),
                              units.getUnitEnumFromName(selectedFromOption))
                          .toStringAsFixed(8));
                      input1 = converted;
                      input2 = temp;
                      _input1.text = converted.toString();
                    }),
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground),
                    keyboardType: TextInputType.number,
                  ),
                ),
                UnitDropdown(
                  dropdownValue: selectedToOption,
                  changeDropdownValue: (v) {
                    setState(() => selectedToOption =
                        v ?? (unitOptions[0]['name']).toString());
                  },
                  dropdownOptions: unitOptions,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
