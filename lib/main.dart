import 'package:flutter/material.dart';
import 'package:toolbox/helpers/unit_options.dart';
import 'package:toolbox/widgets/dropdown_widget.dart';
import 'package:toolbox/widgets/unit_converter_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 8, 253, 233)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownValue = unitOptions[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 189, 236, 255),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
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
            const UnitConvertor(),
          ],
        ),
      ),
    );
  }
}
