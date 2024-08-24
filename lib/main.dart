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
      home: const MiCartScreen(),
    );
  }
}

class MiCartScreen extends StatefulWidget {
  const MiCartScreen({super.key});

  @override
  State<MiCartScreen> createState() => _MiCartScreenState();
}

class _MiCartScreenState extends State<MiCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/me_sv.jpg'),
            ),
            Text(
              "Nguyen Vinh",
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Flutter Developer",
              style: TextStyle(
                  fontFamily: 'Source Sans 3',
                  fontSize: 20,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade100),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '0839519415',
                  style: TextStyle(
                      fontFamily: 'Source Sans 3',
                      fontSize: 20,
                      color: Colors.teal.shade900),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.mail,
                  color: Colors.teal,
                ),
                title: Text(
                  'nguyennvv.21it@vku.udn.vn',
                  style: TextStyle(
                      fontFamily: 'Source Sans 3',
                      fontSize: 20,
                      color: Colors.teal.shade900),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
