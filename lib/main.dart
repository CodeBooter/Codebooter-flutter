import 'package:codebooter_study_app/AppState.dart';
import 'package:codebooter_study_app/Routes/PageRoutes.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';

import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //false debug mode

  setPathUrlStrategy();
  return runApp(
      ChangeNotifierProvider(create: (_) => AppState(), child: App()));
}
