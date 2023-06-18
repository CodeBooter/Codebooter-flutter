import 'package:codebooter_study_app/Routes/PageRoutes.dart';
import 'package:codebooter_study_app/Splash/splash_screen.dart';

import 'package:flutter/material.dart';

import 'package:url_strategy/url_strategy.dart';

import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  await Future.delayed(const Duration(seconds: 7));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //false debug mode

  setPathUrlStrategy();
  return runApp(App());
}
