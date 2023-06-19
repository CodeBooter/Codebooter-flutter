import 'package:codebooter_study_app/Admin/home/admin_home.dart';
import 'package:codebooter_study_app/Screens/CourseScreen.dart';
import 'package:codebooter_study_app/Screens/ExamNoteScreen.dart';
import 'package:codebooter_study_app/Screens/InterviewPrepScreen.dart';
import 'package:codebooter_study_app/Screens/SavedItem.dart';
import 'package:codebooter_study_app/Screens/dsa/arrays.dart';
import 'package:codebooter_study_app/Screens/dsa/linkedList.dart';
import 'package:codebooter_study_app/authentication/LoginPage.dart';
import 'package:codebooter_study_app/authentication/auth_service.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../Screens/dsa/DsaScreen.dart';
import '../Screens/ErrorScreen.dart';
import '../home/HomeScreen.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        color: Colors.transparent,
        routerDelegate: _router.routerDelegate,
        routeInformationParser: _router.routeInformationParser,
        routeInformationProvider: _router.routeInformationProvider,
        // routerDelegate: appRouter().router.routerDelegate,
        // routeInformationParser: appRouter().router.routeInformationParser,
        // routeInformationProvider: appRouter().router.routeInformationProvider,
        debugShowCheckedModeBanner: false);
  }

  final GoRouter _router = GoRouter(
    errorBuilder: (context, state) => ErrorScreen(error: state.error),
    routes: <GoRoute>[
      GoRoute(
          routes: <GoRoute>[
            GoRoute(
              path: 'homepage',
              builder: (BuildContext context, GoRouterState state) =>
                  const AdminPage(),
            ),
            GoRoute(
              path: 'dsa',
              builder: (BuildContext context, GoRouterState state) =>
                  const DsaScreen(),
              routes: [
                GoRoute(
                  path: 'arrays',
                  builder: (BuildContext context, GoRouterState state) =>
                      const Arrays(),
                ),
                // Add more subroutes as needed
                GoRoute(
                  path: 'linkedlist',
                  builder: (BuildContext context, GoRouterState state) =>
                      const LinkedList(),
                ),
              ],
            ),

            GoRoute(
              path: 'courses',
              builder: (BuildContext context, GoRouterState state) =>
                  const CourseScreen(),
            ),
            GoRoute(
              path: 'interview',
              builder: (BuildContext context, GoRouterState state) =>
                  const InterviewPrepScreen(),
            ),
            GoRoute(
              path: 'notes',
              builder: (BuildContext context, GoRouterState state) =>
                  const ExamNoteScreen(),
            ),
            GoRoute(
              path: 'saveditems',
              builder: (BuildContext context, GoRouterState state) =>
                  const SavedItem(),
            ),
            GoRoute(
              path: 'AdminLogin',
              builder: (BuildContext context, GoRouterState state) =>
                  const AdminPage(),
            ),
            // GoRoute(
            //   path: 'courses',
            //   builder: (BuildContext context, GoRouterState state) =>
            //       const CourseScreen(),
            // ),
          ],
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            if (AuthService().isAuthenticated()) {
              return const HomeScreen();
            } else {
              return const LoginPage();
            }
          })
    ],
  );
}
