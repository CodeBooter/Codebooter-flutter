import 'package:codebooter_study_app/Admin/authentication/AdminLogin.dart';
import 'package:codebooter_study_app/Admin/home/AdminHome.dart';
import 'package:codebooter_study_app/Admin/home/PostJob.dart';
import 'package:codebooter_study_app/AppState.dart';

import 'package:codebooter_study_app/Client/Screens/ExamNotes/FirstYear/ChemistryNotes.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/FirstYear/EngineeringMaths1.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/ExamNotesScreen.dart';

import 'package:codebooter_study_app/Client/Screens/ExamNotes/FirstYear/BasicCivil.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/FirstYear/BasicComputers.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/FirstYear/BasicElectricals.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/FirstYear/BasicMechanical.dart';

import 'package:codebooter_study_app/Client/Screens/ExamNotes/FirstYear/communication.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/FirstYear/graphics.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/FirstYear/mathematics2.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/FirstYear/physics.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/FourthYear/BigData.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/FourthYear/CloudComputing.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/FourthYear/CrptographyInformation.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/FourthYear/DataMining.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/FourthYear/ImageProccessing.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/FourthYear/InternetOfThings.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/FourthYear/ObjectOrientedSoftware.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/FourthYear/SoftwareArch.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/FourthYear/Wireless&Mobile.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/SecondYear/AnalysisDesign.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/SecondYear/ComputerArch.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/SecondYear/DataStructures.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/SecondYear/DigitalSystems.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/SecondYear/Discrete.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/SecondYear/Environmental.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/SecondYear/Mathematics3.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/SecondYear/ObjectOriented.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/SecondYear/SoftwareEngineering.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/ThirdYear/AdvancedArch.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/ThirdYear/DataAnalysis.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/ThirdYear/Database.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/ThirdYear/Internetweb.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/ThirdYear/KnowledgeManagement.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/ThirdYear/ProjectManagement.dart';
import 'package:codebooter_study_app/Client/Screens/ExamNotes/ThirdYear/TheoryOfComputation.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/Aptitude/AptitudeMain.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/Aptitude/Average.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/Aptitude/MixtureAndAlligation.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/Aptitude/Numbers.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/Aptitude/Percentage.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/Aptitude/ProftAndLoss.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/Aptitude/TimeAndWork.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/Aptitude/TimeDistanceAndSpeed.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/CoreConcepts/DBMS2.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/CoreConcepts/OperatingSystem2.dart';

import 'package:codebooter_study_app/Client/Screens/InterviePrep/DsaInterview/DsaProblems.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/DsaInterview/DsaQuestion.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/HR/h_r.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/MockInterview/MockInterview.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/Programming/CProgramming.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/Programming/CppProgramming.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/Programming/JsProgramming.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/Programming/PythonProgramming.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/Programming/SqlProgramming.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/TopResumes/TopResumes.dart';
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
import 'package:codebooter_study_app/Client/Screens/InterviePrep/InterviewPrepScreen.dart';
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
import 'package:codebooter_study_app/Client/home/JobInternshipScreen.dart';
import 'package:codebooter_study_app/Client/home/Tour.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import 'package:codebooter_study_app/Client/Screens/dsa/DsaScreen.dart';
import 'package:codebooter_study_app/Client/Screens/ErrorScreen.dart';
import 'package:codebooter_study_app/Client/home/HomeScreen.dart';

import '../Client/Screens/InterviePrep/Aptitude/RatioAndProportion.dart';
import '../Client/Screens/InterviePrep/CoreConcepts/ComputerNetworks.dart';
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
              path: 'log',
              builder: (BuildContext context, GoRouterState state) =>
                  LoginPage(),
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
                  GoRoute(
                    path: 'hr',
                    builder: (BuildContext context, GoRouterState state) =>
                        HR(),
                  ),
                  GoRoute(
                    path: 'dsaquestions',
                    builder: (BuildContext context, GoRouterState state) =>
                        DsaQuestion(),
                  ),
                  GoRoute(
                    path: 'dsaproblems',
                    builder: (BuildContext context, GoRouterState state) =>
                        DsaProblems(),
                  ),
                  GoRoute(
                    path: 'mockinterview',
                    builder: (BuildContext context, GoRouterState state) =>
                        MockInterview(),
                  ),
                  GoRoute(
                    path: 'resumes',
                    builder: (BuildContext context, GoRouterState state) =>
                        TopResumes(),
                  ),
                  GoRoute(
                    path: 'os',
                    builder: (BuildContext context, GoRouterState state) =>
                        OperatingSystem2(),
                  ),
                  GoRoute(
                    path: 'dbms',
                    builder: (BuildContext context, GoRouterState state) =>
                        DBMS2(),
                  ),
                  GoRoute(
                    path: 'cn',
                    builder: (BuildContext context, GoRouterState state) =>
                        ComputerNetworks(),
                  ),
                  GoRoute(
                      path: 'aptitude',
                      builder: (BuildContext context, GoRouterState state) =>
                          const AptitudeMain(),
                      routes: [
                        GoRoute(
                          path: 'numbers',
                          builder:
                              (BuildContext context, GoRouterState state) =>
                                  const Numbers(),
                        ),
                        GoRoute(
                          path: 'percentage',
                          builder:
                              (BuildContext context, GoRouterState state) =>
                                  const Percentage(),
                        ),
                        GoRoute(
                          path: 'profit',
                          builder:
                              (BuildContext context, GoRouterState state) =>
                                  const ProfitAndLoss(),
                        ),
                        GoRoute(
                          path: 'average',
                          builder:
                              (BuildContext context, GoRouterState state) =>
                                  const Average(),
                        ),
                        GoRoute(
                          path: 'mixture',
                          builder:
                              (BuildContext context, GoRouterState state) =>
                                  const MixtureAndAlligation(),
                        ),
                        GoRoute(
                          path: 'time1',
                          builder:
                              (BuildContext context, GoRouterState state) =>
                                  const TimeAndWork(),
                        ),
                        GoRoute(
                          path: 'time2',
                          builder:
                              (BuildContext context, GoRouterState state) =>
                                  const TimeDistanceAndSpeed(),
                        ),
                        GoRoute(
                          path: 'ratio',
                          builder:
                              (BuildContext context, GoRouterState state) =>
                                  const RatioAndProportion(),
                        ),
                      ]),
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
                  ),
                  GoRoute(
                    path: 'bcm',
                    builder: (BuildContext context, GoRouterState state) =>
                        const BasicCivil(),
                  ),
                  GoRoute(
                    path: 'bce',
                    builder: (BuildContext context, GoRouterState state) =>
                        const BasicComputers(),
                  ),
                  GoRoute(
                    path: 'beee',
                    builder: (BuildContext context, GoRouterState state) =>
                        const BasicElectricals(),
                  ),
                  GoRoute(
                    path: 'bme',
                    builder: (BuildContext context, GoRouterState state) =>
                        const BasicMechanical(),
                  ),
                  GoRoute(
                    path: 'communication',
                    builder: (BuildContext context, GoRouterState state) =>
                        const Communication(),
                  ),
                  GoRoute(
                    path: 'graphics',
                    builder: (BuildContext context, GoRouterState state) =>
                        const EngineeringGraphics(),
                  ),
                  GoRoute(
                    path: 'mathematics2',
                    builder: (BuildContext context, GoRouterState state) =>
                        const Mathematics2(),
                  ),
                  GoRoute(
                    path: 'physics',
                    builder: (BuildContext context, GoRouterState state) =>
                        const Physics(),
                  ),
                  GoRoute(
                    path: 'bigdata',
                    builder: (BuildContext context, GoRouterState state) =>
                        const BigData(),
                  ),
                  GoRoute(
                    path: 'cc',
                    builder: (BuildContext context, GoRouterState state) =>
                        const CloudComputing(),
                  ),
                  GoRoute(
                    path: 'cis',
                    builder: (BuildContext context, GoRouterState state) =>
                        const CryptographyInformation(),
                  ),
                  GoRoute(
                    path: 'dmw',
                    builder: (BuildContext context, GoRouterState state) =>
                        const DataMining(),
                  ),
                  GoRoute(
                    path: 'sa',
                    builder: (BuildContext context, GoRouterState state) =>
                        const SoftwareArch(),
                  ),
                  GoRoute(
                    path: 'ipcv',
                    builder: (BuildContext context, GoRouterState state) =>
                        const ImageProcessing(),
                  ),
                  GoRoute(
                    path: 'oose',
                    builder: (BuildContext context, GoRouterState state) =>
                        const ObjectOrientedSoftware(),
                  ),
                  GoRoute(
                    path: 'iot',
                    builder: (BuildContext context, GoRouterState state) =>
                        const InternetOfThings(),
                  ),
                  GoRoute(
                    path: 'wmc',
                    builder: (BuildContext context, GoRouterState state) =>
                        const WirelessMobile(),
                  ),
                  GoRoute(
                    path: 'advarch',
                    builder: (BuildContext context, GoRouterState state) =>
                        const AdvanceArch(),
                  ),
                  GoRoute(
                    path: 'km',
                    builder: (BuildContext context, GoRouterState state) =>
                        const KnowledgeManagement(),
                  ),
                  GoRoute(
                    path: 'pm',
                    builder: (BuildContext context, GoRouterState state) =>
                        const ProjectManagement(),
                  ),
                  GoRoute(
                    path: 'cd',
                    builder: (BuildContext context, GoRouterState state) =>
                        const CompilerDesign(),
                  ),
                  GoRoute(
                    path: 'cn',
                    builder: (BuildContext context, GoRouterState state) =>
                        const ComputerNetwork(),
                  ),
                  GoRoute(
                    path: 'ml',
                    builder: (BuildContext context, GoRouterState state) =>
                        const MachineLearning(),
                  ),
                  GoRoute(
                    path: 'cybersecurity',
                    builder: (BuildContext context, GoRouterState state) =>
                        const CyberSecurity(),
                  ),
                  GoRoute(
                    path: 'dataanalysis',
                    builder: (BuildContext context, GoRouterState state) =>
                        const DataAnalysis(),
                  ),
                  GoRoute(
                    path: 'oop',
                    builder: (BuildContext context, GoRouterState state) =>
                        const ObjectOriented(),
                  ),
                  GoRoute(
                    path: 'dbms',
                    builder: (BuildContext context, GoRouterState state) =>
                        const Database(),
                  ),
                  GoRoute(
                    path: 'toc',
                    builder: (BuildContext context, GoRouterState state) =>
                        const TheoryOfComputation(),
                  ),
                  GoRoute(
                    path: 'iwt',
                    builder: (BuildContext context, GoRouterState state) =>
                        const InternetWeb(),
                  ),
                  GoRoute(
                    path: 'ada',
                    builder: (BuildContext context, GoRouterState state) =>
                        const AnalysisDesin(),
                  ),
                  GoRoute(
                    path: 'se',
                    builder: (BuildContext context, GoRouterState state) =>
                        const SoftwareEngineering(),
                  ),
                  GoRoute(
                    path: 'coa',
                    builder: (BuildContext context, GoRouterState state) =>
                        const ComputerArch(),
                  ),
                  GoRoute(
                    path: 'mathematics3',
                    builder: (BuildContext context, GoRouterState state) =>
                        const Mathematics3(),
                  ),
                  GoRoute(
                    path: 'os',
                    builder: (BuildContext context, GoRouterState state) =>
                        const OperatingSystem(),
                  ),
                  GoRoute(
                    path: 'oopm',
                    builder: (BuildContext context, GoRouterState state) =>
                        const ObjectOriented(),
                  ),
                  GoRoute(
                    path: 'digitalsystems',
                    builder: (BuildContext context, GoRouterState state) =>
                        const DigitalSystems(),
                  ),
                  GoRoute(
                    path: 'datastructure',
                    builder: (BuildContext context, GoRouterState state) =>
                        const DataStructure(),
                  ),
                  GoRoute(
                    path: 'discrete',
                    builder: (BuildContext context, GoRouterState state) =>
                        const Discrete(),
                  ),
                  GoRoute(
                    path: 'eees',
                    builder: (BuildContext context, GoRouterState state) =>
                        const Environmental(),
                  ),
                ]),
            GoRoute(
              path: 'jobinternship',
              builder: (BuildContext context, GoRouterState state) =>
                  const JobInternshipScreen(),
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
              return CarouselScreen();
            }
          })
    ],
  );
}
