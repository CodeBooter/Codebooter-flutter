import 'package:codebooter_study_app/Admin/authentication/AdminLogin.dart';
import 'package:codebooter_study_app/Admin/home/AdminHome.dart';
import 'package:codebooter_study_app/Admin/home/PostJob.dart';
import 'package:codebooter_study_app/AppState.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/ChemistryNotes.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/EngineeringMaths1.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/ExamNotesScreen.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/Programming/CProgramming.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/Programming/CppProgramming.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/Programming/JsProgramming.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/Programming/PythonProgramming.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/Programming/SqlProgramming.dart';
import 'package:codebooter_study_app/Client/Screens/courses/AIML/ArtificialIntelligence.dart';
import 'package:codebooter_study_app/Client/Screens/courses/AIML/BasicStarting.dart';
import 'package:codebooter_study_app/Client/Screens/courses/AIML/DataScience.dart';
import 'package:codebooter_study_app/Client/Screens/courses/AIML/DeepLearning.dart';
import 'package:codebooter_study_app/Client/Screens/courses/AIML/MachineLearning.dart';
import 'package:codebooter_study_app/Client/Screens/courses/AIML/Project.dart';
import 'package:codebooter_study_app/Client/Screens/courses/ApplicationDevelopment/FirebaseBackend.dart';
import 'package:codebooter_study_app/Client/Screens/courses/ApplicationDevelopment/FlutterApp.dart';
import 'package:codebooter_study_app/Client/Screens/courses/ApplicationDevelopment/JavaApp.dart';
import 'package:codebooter_study_app/Client/Screens/courses/ApplicationDevelopment/ReactNative.dart';
import 'package:codebooter_study_app/Client/Screens/courses/CoreConcepts/CompilerDesign.dart';
import 'package:codebooter_study_app/Client/Screens/courses/CoreConcepts/ComputerNetwork.dart';
import 'package:codebooter_study_app/Client/Screens/courses/CoreConcepts/DBMS.dart';
import 'package:codebooter_study_app/Client/Screens/courses/CoreConcepts/OperatingSystem.dart';
import 'package:codebooter_study_app/Client/Screens/courses/CoreConcepts/TOC.dart';
import 'package:codebooter_study_app/Client/Screens/courses/CourseScreen.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/Test.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/InterviewPrepScreen.dart';
import 'package:codebooter_study_app/Client/Screens/SavedItem.dart';
import 'package:codebooter_study_app/Client/Screens/courses/CyberSecurity/CCNA.dart';
import 'package:codebooter_study_app/Client/Screens/courses/CyberSecurity/CyberSecurity.dart';
import 'package:codebooter_study_app/Client/Screens/courses/CyberSecurity/InformationGathering.dart';
import 'package:codebooter_study_app/Client/Screens/courses/CyberSecurity/Kali.dart';
import 'package:codebooter_study_app/Client/Screens/courses/CyberSecurity/NetWorkSecurity.dart';
import 'package:codebooter_study_app/Client/Screens/courses/PrgrammingLanguages/CLang.dart';
import 'package:codebooter_study_app/Client/Screens/courses/PrgrammingLanguages/CPP.dart';
import 'package:codebooter_study_app/Client/Screens/courses/PrgrammingLanguages/GO.dart';
import 'package:codebooter_study_app/Client/Screens/courses/PrgrammingLanguages/Java.dart';
import 'package:codebooter_study_app/Client/Screens/courses/PrgrammingLanguages/Python.dart';
import 'package:codebooter_study_app/Client/Screens/courses/PrgrammingLanguages/TypeScript.dart';
import 'package:codebooter_study_app/Client/Screens/courses/Web/Angular.dart';
import 'package:codebooter_study_app/Client/Screens/courses/Web/HtmlCss.dart';
import 'package:codebooter_study_app/Client/Screens/courses/Web/JavaScript.dart';
import 'package:codebooter_study_app/Client/Screens/courses/Web/MernProject.dart';
import 'package:codebooter_study_app/Client/Screens/courses/Web/MernStack.dart';
import 'package:codebooter_study_app/Client/Screens/courses/Web/NodeJS.dart';
import 'package:codebooter_study_app/Client/Screens/courses/Web/ReactJS.dart';
import 'package:codebooter_study_app/Client/Screens/courses/Web3/DecentralizedApplication.dart';
import 'package:codebooter_study_app/Client/Screens/courses/Web3/Etherium.dart';
import 'package:codebooter_study_app/Client/Screens/courses/Web3/IntroToWeb3.dart';
import 'package:codebooter_study_app/Client/Screens/courses/Web3/Solidity.dart';
import 'package:codebooter_study_app/Client/Screens/courses/Web3/Tokenization.dart';
import 'package:codebooter_study_app/Client/Screens/dsa/Backtracking.dart';
import 'package:codebooter_study_app/Client/Screens/dsa/DynamicProgramming.dart';
import 'package:codebooter_study_app/Client/Screens/dsa/Sorting.dart';
import 'package:codebooter_study_app/Client/Screens/dsa/arrays.dart';
import 'package:codebooter_study_app/Client/Screens/dsa/greedy.dart';
import 'package:codebooter_study_app/Client/Screens/dsa/linkedList.dart';
import 'package:codebooter_study_app/Client/Screens/dsa/searching.dart';
import 'package:codebooter_study_app/Client/Screens/help.dart';
import 'package:codebooter_study_app/Client/authentication/LoginPage.dart';
import 'package:codebooter_study_app/Client/authentication/auth_service.dart';
import 'package:codebooter_study_app/Client/Screens/jobs/JobInternship.dart';
import 'package:codebooter_study_app/Client/home/JobInternshipScreen.dart';
import 'package:provider/provider.dart';
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
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: Provider.of<AppState>(context).isDarkMode
            ? ThemeMode.dark
            : ThemeMode.light,
        color: Color.fromARGB(255, 255, 253, 253),
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
              path: 'help',
              builder: (BuildContext context, GoRouterState state) =>
                  const Help(),
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
                        HtmlCss(
                      context: context,
                    ),
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
                  ),
                  GoRoute(
                    path: 'angular',
                    builder: (BuildContext context, GoRouterState state) =>
                        const Angular(),
                  ),
                  GoRoute(
                    path: 'nodejs',
                    builder: (BuildContext context, GoRouterState state) =>
                        const NodeJS(),
                  ),
                  GoRoute(
                    path: 'reactjs',
                    builder: (BuildContext context, GoRouterState state) =>
                        const ReactJs(),
                  ),
                  GoRoute(
                    path: 'artificialintelligence',
                    builder: (BuildContext context, GoRouterState state) =>
                        const ArtificialIntelligence(),
                  ),
                  GoRoute(
                    path: 'basicstarting',
                    builder: (BuildContext context, GoRouterState state) =>
                        const BasicStarting(),
                  ),
                  GoRoute(
                    path: 'datascience',
                    builder: (BuildContext context, GoRouterState state) =>
                        const DataScience(),
                  ),
                  GoRoute(
                    path: 'deeplearning',
                    builder: (BuildContext context, GoRouterState state) =>
                        const DeepLearning(),
                  ),
                  GoRoute(
                    path: 'machinelearning',
                    builder: (BuildContext context, GoRouterState state) =>
                        const MachineLearning(),
                  ),
                  GoRoute(
                    path: 'project',
                    builder: (BuildContext context, GoRouterState state) =>
                        const Project(),
                  ),
                  GoRoute(
                    path: 'firebasebackend',
                    builder: (BuildContext context, GoRouterState state) =>
                        const FirebaseBackend(),
                  ),
                  GoRoute(
                    path: 'flutterapp',
                    builder: (BuildContext context, GoRouterState state) =>
                        const FlutterApp(),
                  ),
                  GoRoute(
                    path: 'javaapp',
                    builder: (BuildContext context, GoRouterState state) =>
                        const JavaApp(),
                  ),
                  GoRoute(
                    path: 'reactnative',
                    builder: (BuildContext context, GoRouterState state) =>
                        const ReactNative(),
                  ),
                  GoRoute(
                    path: 'compilerdesign',
                    builder: (BuildContext context, GoRouterState state) =>
                        const CompilerDesign(),
                  ),
                  GoRoute(
                    path: 'computernetwork',
                    builder: (BuildContext context, GoRouterState state) =>
                        const ComputerNetwork(),
                  ),
                  GoRoute(
                    path: 'dbms',
                    builder: (BuildContext context, GoRouterState state) =>
                        const DBMS(),
                  ),
                  GoRoute(
                    path: 'operatingsystem',
                    builder: (BuildContext context, GoRouterState state) =>
                        const OperatingSystem(),
                  ),
                  GoRoute(
                      path: 'toc',
                      builder: (BuildContext context, GoRouterState state) =>
                          const TOC()),
                  GoRoute(
                    path: 'ccna',
                    builder: (BuildContext context, GoRouterState state) =>
                        const CCNA(),
                  ),
                  GoRoute(
                    path: 'cybersecurity',
                    builder: (BuildContext context, GoRouterState state) =>
                        const CyberSecurity(),
                  ),
                  GoRoute(
                    path: 'informationgathering',
                    builder: (BuildContext context, GoRouterState state) =>
                        const InformationGathering(),
                  ),
                  GoRoute(
                    path: 'kali',
                    builder: (BuildContext context, GoRouterState state) =>
                        const Kali(),
                  ),
                  GoRoute(
                    path: 'networksecurity',
                    builder: (BuildContext context, GoRouterState state) =>
                        const NetworkSecurity(),
                  ),
                  GoRoute(
                    path: 'clang',
                    builder: (BuildContext context, GoRouterState state) =>
                        const CLang(),
                  ),
                  GoRoute(
                    path: 'cpp',
                    builder: (BuildContext context, GoRouterState state) =>
                        const CPP(),
                  ),
                  GoRoute(
                    path: 'go',
                    builder: (BuildContext context, GoRouterState state) =>
                        const GO(),
                  ),
                  GoRoute(
                    path: 'java',
                    builder: (BuildContext context, GoRouterState state) =>
                        const Java(),
                  ),
                  GoRoute(
                    path: 'python',
                    builder: (BuildContext context, GoRouterState state) =>
                        const Python(),
                  ),
                  GoRoute(
                    path: 'typescript',
                    builder: (BuildContext context, GoRouterState state) =>
                        const TypeScript(),
                  ),
                  GoRoute(
                    path: 'introtoweb3',
                    builder: (BuildContext context, GoRouterState state) =>
                        const IntroToWeb3(),
                  ),
                  GoRoute(
                    path: 'decentralizedapplication',
                    builder: (BuildContext context, GoRouterState state) =>
                        const DecentralizedApplication(),
                  ),
                  GoRoute(
                    path: 'tokenization',
                    builder: (BuildContext context, GoRouterState state) =>
                        const Tokenization(),
                  ),
                  GoRoute(
                    path: 'etherium',
                    builder: (BuildContext context, GoRouterState state) =>
                        const Etherium(),
                  ),
                  GoRoute(
                    path: 'solidity',
                    builder: (BuildContext context, GoRouterState state) =>
                        const Solidity(),
                  )
                ]),
            GoRoute(
                path: 'interview',
                builder: (BuildContext context, GoRouterState state) =>
                    const InterviewPrepScreen(),
                routes: [
                  GoRoute(
                    path: 'cprogramming',
                    builder: (BuildContext context, GoRouterState state) =>
                        CProgramming(),
                  ),
                  GoRoute(
                    path: 'c++programming',
                    builder: (BuildContext context, GoRouterState state) =>
                        const CppProgramming(),
                  ),
                  GoRoute(
                    path: 'pythonprogramming',
                    builder: (BuildContext context, GoRouterState state) =>
                        const PythonProgramming(),
                  ),
                  GoRoute(
                    path: 'jsprogramming',
                    builder: (BuildContext context, GoRouterState state) =>
                        const JsProgramming(),
                  ),
                  GoRoute(
                    path: 'sqlprogramming',
                    builder: (BuildContext context, GoRouterState state) =>
                        const SqlProgramming(),
                  ),
                ]),
            GoRoute(
                path: 'notes',
                builder: (BuildContext context, GoRouterState state) =>
                    const ExamNotesScreen(),
                routes: [
                  GoRoute(
                    path: 'chemistry',
                    builder: (BuildContext context, GoRouterState state) =>
                        const ChemistryNotes(),
                  ),
                  GoRoute(
                    path: 'mathematics1',
                    builder: (BuildContext context, GoRouterState state) =>
                        const EngineeringMaths1(),
                  )
                ]),
            GoRoute(
              path: 'jobinternship',
              builder: (BuildContext context, GoRouterState state) =>
                  const JobInternshipScreen(),
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
