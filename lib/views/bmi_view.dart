import 'package:flutter/material.dart';
import 'package:toolbox/widgets/bmi_calculator_widget.dart';

class BMIPage extends StatefulWidget {
  const BMIPage({super.key});

  @override
  State<BMIPage> createState() => _BMIPageState();
}

class _BMIPageState extends State<BMIPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 189, 236, 255),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("BMI Calculator"),
        leading: const BackButton(),
      ),
      body: const Center(child: BMICalculator()),
    );
  }
}
