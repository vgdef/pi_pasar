import 'package:flutter/material.dart';
import 'package:pi_pasar/screen/home/drawer_screen.dart';
import 'package:pi_pasar/screen/home/home_screen.dart';
// import 'package:pi_pasar/model/fruits.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    theme: ThemeData(fontFamily: 'Circular'),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          HomeScreen(),
        ],
      ),
    );
  }
}
