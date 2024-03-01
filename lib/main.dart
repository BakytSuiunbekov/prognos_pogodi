import 'dart:math';

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
        // colorScheme:
        //  ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 241, 240, 243)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  String text = 'hod';
  String smil = '🥵';
  int gradus = 0;
  Color bgcolor = Colors.orange;

  int sandar({required min, required max}) {
    return min + Random().nextInt(max - min);
  }

  void abayraiy() {
    Random random = Random();
    setState(() {
      var resultat = random.nextInt(5);
      if (resultat == 0) {
        smil = '🥵';
        text = 'hot';
        gradus = sandar(min: 30, max: 50);
        bgcolor = Colors.orange;
      } else if (resultat == 1) {
        smil = '🤩';
        text = 'normal';
        gradus = sandar(min: 15, max: 30);
        bgcolor = Colors.green;
      } else if (resultat == 2) {
        smil = '🌧️';
        text = 'rain';
        gradus = sandar(min: 10, max: 15);
        bgcolor = Colors.grey;
      } else if (resultat == 3) {
        smil = '😶';
        text = 'cool';
        gradus = sandar(min: 1, max: 10);
        bgcolor = Colors.pink;
      } else if (resultat == 4) {
        smil = '🥶';
        text = 'gold';
        gradus = sandar(min: -10, max: -5);
        bgcolor = Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Аба ырайы'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            text,
            style: const TextStyle(fontSize: 30),
          ),
          Text(
            smil,
            style: const TextStyle(fontSize: 30),
          ),
          Text(
            '$gradus C',
            style: const TextStyle(fontSize: 45),
          ),
          TextButton(
            onPressed: () {
              abayraiy();
            },
            child: const Text('Аба ырайын алмаштыр'),
          ),
        ]),
      ),
    );
  }
}
