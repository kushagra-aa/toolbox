import 'package:flutter/material.dart';
import 'package:toolbox/helpers/unit_options.dart';

class Dropdown extends StatefulWidget {
  const Dropdown(
      {super.key,
      required this.dropdownValue,
      required this.changeDropdownValue});
  final String dropdownValue;
  final void Function(String? value) changeDropdownValue;
  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: widget.dropdownValue,
      icon: Icon(Icons.arrow_drop_down,
          color: Theme.of(context).colorScheme.primary),
      elevation: 16,
      style: const TextStyle(fontSize: 14),
      underline: Container(
        height: 2,
        color: Theme.of(context).colorScheme.primary,
      ),
      onChanged: (String? value) {
        widget.changeDropdownValue(value);
      },
      items: unitOptions.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value.toUpperCase(),
            style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
          ),
        );
      }).toList(),
    );
  }
}
