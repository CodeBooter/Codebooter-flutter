import 'package:codebooter_study_app/Admin/authentication/AdminLogin.dart';
import 'package:codebooter_study_app/Admin/home/AdminHome.dart';
import 'package:codebooter_study_app/Admin/home/PostJob.dart';
import 'package:codebooter_study_app/Client/Screens/courses/CourseScreen.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNoteScreen.dart';
import 'package:codebooter_study_app/Client/Screens/InterviewPrepScreen.dart';
import 'package:codebooter_study_app/Client/Screens/SavedItem.dart';
import 'package:codebooter_study_app/Client/Screens/courses/Web/HtmlCss.dart';
import 'package:codebooter_study_app/Client/Screens/courses/Web/JavaScript.dart';
import 'package:codebooter_study_app/Client/Screens/courses/Web/MernProject.dart';
import 'package:codebooter_study_app/Client/Screens/courses/Web/MernStack.dart';
import 'package:codebooter_study_app/Client/Screens/dsa/Backtracking.dart';
import 'package:codebooter_study_app/Client/Screens/dsa/DynamicProgramming.dart';
import 'package:codebooter_study_app/Client/Screens/dsa/Sorting.dart';
import 'package:codebooter_study_app/Client/Screens/dsa/arrays.dart';
import 'package:codebooter_study_app/Client/Screens/dsa/greedy.dart';
import 'package:codebooter_study_app/Client/Screens/dsa/linkedList.dart';
import 'package:codebooter_study_app/Client/Screens/dsa/searching.dart';
import 'package:codebooter_study_app/Client/authentication/LoginPage.dart';
import 'package:codebooter_study_app/Client/authentication/auth_service.dart';
import 'package:codebooter_study_app/Client/Screens/jobs/JobInternship.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import 'package:codebooter_study_app/Client/Screens/dsa/DsaScreen.dart';
import 'package:codebooter_study_app/Client/Screens/ErrorScreen.dart';
import 'package:codebooter_study_app/Client/home/HomeScreen.dart';

import '../Client/Screens/dsa/Graph.dart';
import '../Client/Screens/dsa/Queue.dart';
import '../Client/Screens/dsa/Recursion.dart';
import '../Client/Screens/dsa/Stack.dart';
import '../Client/Screens/dsa/Tree.dart';
import '../Client/Screens/dsa/Trie.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

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
                  const HomeScreen(),
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
                GoRoute(
                  path: 'stack',
                  builder: (BuildContext context, GoRouterState state) =>
                      const Stacks(),
                ),
                // Add more subroutes as needed
                GoRoute(
                  path: 'queue',
                  builder: (BuildContext context, GoRouterState state) =>
                      const Queues(),
                ),
                GoRoute(
                  path: 'tree',
                  builder: (BuildContext context, GoRouterState state) =>
                      const Tree(),
                ),
                GoRoute(
                  path: 'trie',
                  builder: (BuildContext context, GoRouterState state) =>
                      const Trie(),
                ),
                // Add more subroutes as needed
                GoRoute(
                  path: 'graph',
                  builder: (BuildContext context, GoRouterState state) =>
                      const Graphs(),
                ),
                GoRoute(
                  path: 'dp',
                  builder: (BuildContext context, GoRouterState state) =>
                      const DynamicProgramming(),
                ),
                GoRoute(
                  path: 'recursion',
                  builder: (BuildContext context, GoRouterState state) =>
                      const Recursion(),
                ),
                GoRoute(
                  path: 'back',
                  builder: (BuildContext context, GoRouterState state) =>
                      const Backtracking(),
                ),
                GoRoute(
                  path: 'sort',
                  builder: (BuildContext context, GoRouterState state) =>
                      const Sorting(),
                ),
                GoRoute(
                  path: 'search',
                  builder: (BuildContext context, GoRouterState state) =>
                      const Searching(),
                ),
                GoRoute(
                  path: 'greedy',
                  builder: (BuildContext context, GoRouterState state) =>
                      const Greedy(),
                ),
              ],
            ),

            GoRoute(
                path: 'courses',
                builder: (BuildContext context, GoRouterState state) =>
                    const CourseScreen(),
                routes: [
                  GoRoute(
                    path: 'basicwebdev',
                    builder: (BuildContext context, GoRouterState state) =>
                        const HtmlCss(),
                  ),
                  GoRoute(
                    path: 'javascript',
                    builder: (BuildContext context, GoRouterState state) =>
                        const JavaScript(),
                  ),
                  GoRoute(
                    path: 'mernstack',
                    builder: (BuildContext context, GoRouterState state) =>
                        const MernStack(),
                  ),
                  GoRoute(
                    path: 'mernproject',
                    builder: (BuildContext context, GoRouterState state) =>
                        const MernProject(),
                  )
                ]),
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
              path: 'jobinternship',
              builder: (BuildContext context, GoRouterState state) =>
                  const JobInternships(),
            ),

            GoRoute(
              path: 'saveditems',
              builder: (BuildContext context, GoRouterState state) =>
                  const SavedItem(),
            ),
            GoRoute(
                path: 'admin',
                builder: (BuildContext context, GoRouterState state) =>
                    const AdminLogin(),
                routes: [
                  GoRoute(
                      path: 'home',
                      builder: (BuildContext context, GoRouterState state) =>
                          const AdminHome(),
                      routes: [
                        GoRoute(
                          path: 'jobpost',
                          builder:
                              (BuildContext context, GoRouterState state) =>
                                  PostJob(),
                        ),
                      ]),
                ])

            // GoRoute(
            //   path: 'courses',
            //   builder: (BuildContext context, GoRouterState state) =>
            //       const CourseScreen(),
            // ),
          ],
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            if (AuthService().isAuthenticated()) {
              if (AuthService().isUsingEmail()) {
                return const AdminHome();
              } else {
                return const HomeScreen();
              }
            } else {
              // Navigate to the login page
              return LoginPage();
            }
          })
    ],
  );
}
