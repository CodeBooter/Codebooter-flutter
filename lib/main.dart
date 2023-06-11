import 'package:flutter/material.dart';

import 'package:codebooter_study_app/utils/Dimensions.dart';
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
      home: homeScreen(),
    );
  }
}
