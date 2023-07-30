import 'package:flutter/material.dart';
import 'package:toolbox/constants/routes.dart';
import 'package:toolbox/views/bmi_view.dart';
import 'package:toolbox/views/home_view.dart';
import 'package:toolbox/views/units_view.dart';

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
      routes: {
        bmiRoute: (context) => const BMIPage(),
        unitRoute: (context) => const UnitConverterPage(),
      },
      home: const HomePage(title: 'Select App'),
    );
  }
}
