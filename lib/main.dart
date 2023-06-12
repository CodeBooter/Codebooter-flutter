import 'package:codebooter_study_app/home/NavBar.dart';
import 'package:flutter/material.dart';

import 'home/HomeScreen.dart';

void main() {
  //print the screen height
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      home: NavBar(),
    );
  }
}
