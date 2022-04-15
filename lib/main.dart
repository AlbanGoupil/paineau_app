import 'package:flutter/material.dart';
import 'package:paineau_app/ui/screens/home.dart';
import 'package:paineau_app/ui/screens/dashboard.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parc Véhicules',
      routes: {
        'home': (context) => Home(),
        'dashboard': (context) => Dashboard(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
