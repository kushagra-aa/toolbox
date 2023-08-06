import 'package:flutter/material.dart';
import 'package:toolbox/helpers/UnitsClass/units_class.dart';
import 'package:toolbox/helpers/bmi_calculator.dart';

class BMIReport extends StatelessWidget {
  const BMIReport(
      {super.key,
      required this.bmiValue,
      required this.heightValue,
      required this.weightValue,
      required this.reset});

  final double heightValue;
  final double weightValue;
  final double bmiValue;
  final Function reset;

  final double idealBMIStart = 18.5;
  final double idealBMIEnd = 25;

  double getIdealWeightStart() {
    return double.parse(
        calculateWeightFromBMI(heightValue, idealBMIStart).toStringAsFixed(2));
  }

  double getIdealWeightEnd() {
    return double.parse(
        calculateWeightFromBMI(heightValue, idealBMIEnd).toStringAsFixed(2));
  }

  String getReport() {
    if (bmiValue < 18.5) return "Underweight";
    if (bmiValue < 25) return "Normal";
    if (bmiValue < 30) return "Overweight";
    return "Obesity";
  }

  Color getReportColor() {
    if (bmiValue < 18.5) return Colors.red;
    if (bmiValue < 25) return Colors.green;
    if (bmiValue < 30) return Colors.orangeAccent;
    return Colors.redAccent;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          const Text(
            "Report",
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'BMI:',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 24,
                  ),
                ),
                const Spacer(),
                Text(
                  '$bmiValue',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Your Height:',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 24,
                  ),
                ),
                const Spacer(),
                Text(
                  '$heightValue ${Units.length.meter.symbol}',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Your Weight:',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 24,
                  ),
                ),
                const Spacer(),
                Text(
                  '$weightValue ${Units.weight.killogram.symbol}',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  getReport(),
                  style: TextStyle(fontSize: 22, color: getReportColor()),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Ideal Weight Range For You:',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  (getIdealWeightStart()).toString(),
                  style: const TextStyle(fontSize: 20),
                ),
                const Spacer(),
                const Text('----'),
                const Spacer(),
                Text(
                  (getIdealWeightEnd()).toString(),
                  style: const TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Ideal BMI Range:',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  (idealBMIStart).toString(),
                  style: const TextStyle(fontSize: 20),
                ),
                const Spacer(),
                const Text('----'),
                const Spacer(),
                Text(
                  (idealBMIEnd).toString(),
                  style: const TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                reset();
              },
              child: const Text("Reset"))
        ],
      ),
    );
  }
}
