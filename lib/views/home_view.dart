import 'package:flutter/material.dart';
import 'package:toolbox/constants/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 189, 236, 255),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Unit Converter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(unitRoute);
                },
                child: const Text('Unit Converter')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(bmiRoute);
                },
                child: const Text('BMI Calculator')),
          ],
        ),
      ),
    );
  }
}
