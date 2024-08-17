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
      home: const IAmRich(),
    );
  }
}

class IAmRich extends StatefulWidget {
  const IAmRich({super.key});

  @override
  State<IAmRich> createState() => _IAmRichState();
}

class _IAmRichState extends State<IAmRich> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 4, 14, 20),
        title: Text(
          "I Am Rich",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.blueGrey),
        child: Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
          ),
        ),
      ),
    );
  }
}
