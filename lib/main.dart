import 'package:flutter/material.dart';

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
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.redAccent),
                color: Theme.of(context).colorScheme.background,
              ),
              height: 40,
              width: 600,
              child: const Text('background'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.redAccent),
                color: Theme.of(context).colorScheme.error,
              ),
              height: 40,
              width: 600,
              child: const Text('error'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.redAccent),
                color: Theme.of(context).colorScheme.onBackground,
              ),
              height: 40,
              width: 600,
              child: Text(
                'onBackground',
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.redAccent),
                color: Theme.of(context).colorScheme.onError,
              ),
              height: 40,
              width: 600,
              child: const Text('onError'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.redAccent),
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              height: 40,
              width: 600,
              child: const Text('onPrimary'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.redAccent),
                color: Theme.of(context).colorScheme.onSecondary,
              ),
              height: 40,
              width: 600,
              child: const Text('onSecondary'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.redAccent),
                color: Theme.of(context).colorScheme.onSurface,
              ),
              height: 40,
              width: 600,
              child: Text(
                'onSurface',
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.redAccent),
                color: Theme.of(context).colorScheme.primary,
              ),
              height: 40,
              width: 600,
              child: const Text('primary'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.redAccent),
                color: Theme.of(context).colorScheme.secondary,
              ),
              height: 40,
              width: 600,
              child: const Text('secondary'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.redAccent),
                color: Theme.of(context).colorScheme.surface,
              ),
              height: 40,
              width: 600,
              child: const Text('surface'),
            ),
          ],
        ),
      ),
    );
  }
}
