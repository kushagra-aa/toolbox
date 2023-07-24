import 'package:flutter/material.dart';
import 'package:toolbox/helpers/unit_options.dart';
import 'package:toolbox/widgets/dropdown_widget.dart';

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          '$input1  $input2',
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
        TextField(
          controller: _input1,
          onChanged: (v) => setState(() => input1 = double.parse(_input1.text)),
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
          keyboardType: TextInputType.number,
        ),
        TextField(
          controller: _input2,
          onChanged: (v) => setState(() => input2 = double.parse(_input2.text)),
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
          keyboardType: TextInputType.number,
        )
      ],
    );
  }
}
