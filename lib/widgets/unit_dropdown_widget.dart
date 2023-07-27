import 'package:flutter/material.dart';
import 'package:toolbox/helpers/UnitsClass/unit_enum.dart';

class UnitDropdown extends StatefulWidget {
  const UnitDropdown(
      {super.key,
      required this.dropdownValue,
      required this.changeDropdownValue,
      required this.dropdownOptions});
  final String dropdownValue;
  final List<Map<String, Object>> dropdownOptions;
  final void Function(String? value) changeDropdownValue;
  @override
  State<UnitDropdown> createState() => _UnitDropdownState();
}

class _UnitDropdownState extends State<UnitDropdown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: widget.dropdownValue,
      // isExpanded: true,
      icon: Icon(Icons.arrow_drop_down,
          color: Theme.of(context).colorScheme.inversePrimary),
      elevation: 10,
      style: const TextStyle(fontSize: 14),
      underline: Container(
        height: 2,
        color: Theme.of(context).colorScheme.inversePrimary,
      ),
      onChanged: (String? value) {
        widget.changeDropdownValue(value);
      },
      items: widget.dropdownOptions.map<DropdownMenuItem<String>>((value) {
        final option = value;
        return DropdownMenuItem<String>(
          value: (option["value"] as UnitEnum).toString(),
          child: Text(
            option["symbol"] as String,
            style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
          ),
        );
      }).toList(),
    );
  }
}
