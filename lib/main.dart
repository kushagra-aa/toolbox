import 'package:flutter/material.dart';
import 'package:toolbox/helpers/unit_options.dart';
import 'package:toolbox/widgets/dropdown_widget.dart';

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
            seedColor: const Color.fromARGB(255, 58, 169, 183)),
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
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Welcome!',
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 60,
                letterSpacing: 8,
              ),
            ),
            Text(
              dropdownValue,
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 60,
                letterSpacing: 8,
              ),
            ),
            Dropdown(
              dropdownValue: dropdownValue,
              changeDropdownValue: (String? value) => {
                setState(() {
                  dropdownValue = value ?? '';
                })
              },
            )
          ],
        ),
      ),
    );
  }
}
