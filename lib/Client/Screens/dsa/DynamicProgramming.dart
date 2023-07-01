import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/a11y-dark.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/AppState.dart';
import 'package:provider/provider.dart';
import '../../../utils/Colors.dart';
import '../../../widgets/BigText.dart';



class DynamicProgramming extends StatefulWidget {
  const DynamicProgramming({Key? key}) : super(key: key);

  @override
  _DynamicProgrammingState createState() => _DynamicProgrammingState();
}

class _DynamicProgrammingState extends State<DynamicProgramming> {
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    return Scaffold(
      backgroundColor: appState.isDarkMode
          ? AppColors.primaryColor
          : AppColors.lightModePrimary,
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: appState.isDarkMode ? Colors.white : Colors.black),
        backgroundColor: appState.isDarkMode
            ? AppColors.primaryColor
            : AppColors.lightModePrimary,
        elevation: 4,
        centerTitle: true,
        title: bigText(
          text: "Dynamic Programming",
          color: appState.isDarkMode
              ? AppColors.mainTextColor
              : const Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(dimension.val20),
        children: [
          Card(
            color:  appState.isDarkMode?AppColors.primaryColor:AppColors.lightModePrimary,
            elevation: 6,
            child: Padding(
              padding: EdgeInsets.all(dimension.val15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Definition',
                    style: TextStyle(
                      fontSize:dimension.font20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Georgia',
                    ),
                  ),
                  SizedBox(height: dimension.val10),
                  Text(
                    'Dynamic Programming is a method for solving complex problems by breaking them down into simpler overlapping subproblems. It optimizes the overall solution by storing and reusing the results of solved subproblems.',
                    style: TextStyle(
                      fontSize: dimension.font18,
                      fontFamily: 'Georgia',
                      color:  appState.isDarkMode?AppColors.lightModePrimary:AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: dimension.val25),
          Card(
            color:  appState.isDarkMode?AppColors.primaryColor:AppColors.lightModePrimary,
            elevation: 6,
            child: Padding(
              padding: EdgeInsets.all(dimension.val15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Key Concepts',
                    style: TextStyle(
                      fontSize: dimension.font20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Georgia',
                      color:  appState.isDarkMode?AppColors.lightModePrimary:AppColors.primaryColor,
                    ),
                  ),
                  SizedBox(height: dimension.val10),
                  Text(
                    '1. Overlapping Subproblems: The problem can be divided into smaller subproblems, and the solution to the main problem can be constructed from the solutions of these overlapping subproblems.\n'
                        '2. Memoization: Storing the results of expensive function calls and reusing them when the same inputs occur again to avoid redundant calculations.\n'
                        '3. Tabulation: Building a table (usually an array or matrix) to store and retrieve solutions of subproblems.',
                    style: TextStyle(
                      fontSize: dimension.font18,
                      fontFamily: 'Georgia',
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: dimension.val25),
          Card(
            color:  appState.isDarkMode?AppColors.primaryColor:AppColors.lightModePrimary,
            elevation: 6,
            child: Padding(
              padding: EdgeInsets.all(dimension.val15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Example',
                    style: TextStyle(
                      fontSize: dimension.font20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Georgia',
                      color:  appState.isDarkMode?AppColors.lightModePrimary:AppColors.primaryColor,
                    ),
                  ),
                  SizedBox(height: dimension.val10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(dimension.val10),
                      color: Colors.grey[200],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: dimension.val2,
                          blurRadius: dimension.val5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: HighlightView(
                      '''int fibonacci(int n) {
  if (n <= 1) {
    return n;
  }

  List<int> fib = List<int>.filled(n + 1, -1);
  fib[0] = 0;
  fib[1] = 1;

  for (int i = 2; i <= n; i++) {
    fib[i] = fib[i - 1] + fib[i - 2];
  }

  return fib[n];
}

void main() {
  int n = 10;
  int result = fibonacci(n);
  print('The \$n-th Fibonacci number is: \$result');
}''',
                      language: 'dart',
                      theme: a11yDarkTheme,
                      padding: EdgeInsets.all(dimension.val15),
                      textStyle: TextStyle(
                        fontFamily: 'Courier New',
                        fontSize: dimension.font14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}