import 'package:flutter/material.dart';
import 'package:toolbox/helpers/unit_options.dart';
import 'package:toolbox/widgets/dropdown_widget.dart';
import 'package:toolbox/widgets/unit_converter_widget.dart';

class UnitConverterPage extends StatefulWidget {
  const UnitConverterPage({super.key});

  @override
  State<UnitConverterPage> createState() => _UnitConverterPageState();
}

class _UnitConverterPageState extends State<UnitConverterPage> {
  String dropdownValue = unitOptions[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 189, 236, 255),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Unit Converter'),
        leading: BackButton(onPressed: () {
          Navigator.pop(context);
        }),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: Theme.of(context).colorScheme.onSecondary,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Select Unit Type:",
                      style: TextStyle(fontSize: 16),
                    ),
                    Dropdown(
                      dropdownValue: dropdownValue,
                      changeDropdownValue: (String? value) => {
                        setState(() {
                          dropdownValue = value ?? '';
                        })
                      },
                    ),
                  ]),
            ),
            Expanded(
                child: UnitConvertor(
              initialDropdownValue: dropdownValue,
            )),
          ],
        ),
      ),
    );
  }
}
