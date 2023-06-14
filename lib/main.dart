import 'package:codebooter_study_app/home/AppBar.dart';
import 'package:codebooter_study_app/home/NavBar.dart';
import 'package:codebooter_study_app/home/SideBar.dart';
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
      // debugShowCheckedModeBanner: false,
      // title: 'My Flutter App',
      // home: NavBar(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
          home: MyHomePage(),
      
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: sideBar(),
      appBar: AppBar(
        title: Header(),
      ),
      body:NavBar(),
    );
  }
}
