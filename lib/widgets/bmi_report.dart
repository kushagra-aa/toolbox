import 'package:flutter/material.dart';

class BMIReport extends StatelessWidget {
  const BMIReport({super.key, required this.bmiValue, required this.reset});
  final double bmiValue;
  final Function reset;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'BMI:',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 24,
                ),
              ),
              Text(
                '$bmiValue',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 24,
                ),
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
    );
  }
}
