import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      home: SafeArea(
        child: Container(
          child: XylophoneScreen(),
        ),
      ),
    );
  }
}

class XylophoneScreen extends StatefulWidget {
  const XylophoneScreen({super.key});

  @override
  State<XylophoneScreen> createState() => _XylophoneScreenState();
}

class _XylophoneScreenState extends State<XylophoneScreen> {
  late AudioPlayer audioPlayer = AudioPlayer();

  int number = 1;

  @override
  void initState() {
    audioPlayer = AudioPlayer();
    super.initState();
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  void playSound(int $number) async {
    await audioPlayer
        .play(AssetSource('images/note' + $number.toString() + '.wav'));
  }

  Widget buttonXylophone(int number, Color colors) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          playSound(number);
        },
        child: Container(
          decoration: BoxDecoration(color: colors),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        buttonXylophone(1, Colors.red),
        buttonXylophone(2, Colors.orange),
        buttonXylophone(3, Colors.yellow),
        buttonXylophone(4, Colors.green),
        buttonXylophone(5, Colors.greenAccent),
        buttonXylophone(6, Colors.blue),
        buttonXylophone(7, Colors.pink),
      ],
    ));
  }
}
