import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:codebooter_study_app/Screens/CourseScreen.dart';
import 'package:codebooter_study_app/Screens/ExamNoteScreen.dart';
import 'package:codebooter_study_app/Screens/InterviewPrepScreen.dart';
import 'package:codebooter_study_app/Screens/SavedItem.dart';
import 'package:codebooter_study_app/Screens/help.dart';

import 'package:codebooter_study_app/authentication/LoginPage.dart';
import 'package:codebooter_study_app/authentication/authentiction.dart';
import 'package:codebooter_study_app/home/SideBar.dart';
import 'package:codebooter_study_app/home/blog.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../Screens/DsaScreen.dart';
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
  // Future main() async{
  //   WidgetsFlutterBinding.ensureInitialized();
  //
  //   await Future.delayed(const Duration(seconds: 7));
  //   FlutterNativeSplash.remove();
  //
  //   runApp( App());
  // }
  final GoRouter _router = GoRouter(
    errorBuilder: (context, state) => ErrorScreen(error: state.error),
    routes: <GoRoute>[
      GoRoute(
        routes: <GoRoute>[
          GoRoute(
            path: 'homepage',
            builder: (BuildContext context, GoRouterState state) =>
                HomeScreen(),
          ),
          GoRoute(
            path: 'dsa',
            builder: (BuildContext context, GoRouterState state) =>
                const DsaScreen(),
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
            path: 'blog',
            builder: (BuildContext context, GoRouterState state) =>
            const blog(),
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
            path: 'help',
            builder: (BuildContext context, GoRouterState state) =>
            const HelpPage(),
          ),
          GoRoute(
            path: 'logout',
            builder: (BuildContext context, GoRouterState state) =>
            const LoginPage(),
          ),
          // GoRoute(
          //   path: 'courses',
          //   builder: (BuildContext context, GoRouterState state) =>
          //       const CourseScreen(),
          // ),
        ],
        path: '/',
        // builder: (BuildContext context, GoRouterState state) {
        //   // Check if the user is authenticated
        //   final isAuthenticated = AuthService().isAuthenticated();
        //   // final isLogout = sideBar().clickedLogout;
        //
        //   // If authenticated, redirect to HomePage
        //   if (!isAuthenticated) {
        //     return LoginPage();
        //   } else {
        //     // Otherwise, show the LoginPage
        //     return HomeScreen();
        //   }
        // },
        builder: (BuildContext context, GoRouterState state) {
          // Check if the user is authenticated
          final isAuthenticated = AuthService().isAuthenticated();

          // If authenticated, redirect to HomePage
          if (isAuthenticated) {
            return AnimatedSplashScreen(
                splash:Image.asset('assets/images/logo1.png',),
             nextScreen: HomeScreen(),
                splashTransition: SplashTransition.slideTransition,
            );
          } else {
            // Otherwise, show the SplashScreen
            return AnimatedSplashScreen(
                splash:Image.asset('assets/images/logo1.png',height: 700,width: 700,),
                nextScreen: LoginPage(),
              splashTransition: SplashTransition.fadeTransition,
              duration: 30000,
              splashIconSize: dimension.width180,
            );
          }
        },
      ),
    ],
  );
}
