import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          centerTitle: true,
          title: Text(
            'Dice',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.red),
          child: DiceScreen(),
        ),
      ),
    );
  }
}

class DiceScreen extends StatefulWidget {
  const DiceScreen({super.key});

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFaceRandom() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(10),
            child: GestureDetector(
                onTap: changeDiceFaceRandom,
                child: Image.asset('images/dice$leftDiceNumber.png')),
          )),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(10),
            child: GestureDetector(
                onTap: changeDiceFaceRandom,
                child: Image.asset('images/dice$rightDiceNumber.png')),
          )),
        ],
      ),
    );
  }
}
