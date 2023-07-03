import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/a11y-dark.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/AppState.dart';
import 'package:provider/provider.dart';

import '../../../utils/Colors.dart';
import '../../../widgets/BigText.dart';

class Recursion extends StatelessWidget {
  const Recursion({Key? key}) : super(key: key);

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
          text: "Recursion",
          color: appState.isDarkMode
              ? AppColors.mainTextColor
              : const Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(dimension.val20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(dimension.val5),
              child: Text(
                'Definition',
                style: TextStyle(
                  fontSize: dimension.font20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Georgia',
                ),
              ),
            ),
            SizedBox(height: dimension.val10),
            Padding(
              padding: EdgeInsets.only(
                  left: dimension.val15, right: dimension.val15),
              child: Text(
                'Recursion is a programming technique where a function calls itself to solve a problem by breaking it down into smaller subproblems.',
                style: TextStyle(
                  fontSize: dimension.font18,
                  fontFamily: 'Georgia',
                ),
              ),
            ),
            SizedBox(height: dimension.val25),
            Padding(
              padding: EdgeInsets.all(dimension.val5),
              child: Text(
                'Key Concepts',
                style: TextStyle(
                  fontSize: dimension.font20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Georgia',
                ),
              ),
            ),
            SizedBox(height: dimension.val10),
            Padding(
              padding: EdgeInsets.only(
                  left: dimension.val15, right: dimension.val15),
              child: Text(
                '1. Base Case: A condition that terminates the recursion and provides a result.\n'
                '2. Recursive Case: The part of the function that calls itself with a modified input to solve a smaller subproblem.\n'
                '3. Recursion Stack: The stack that keeps track of function calls and their respective local variables.',
                style: TextStyle(
                  fontSize: dimension.font18,
                  fontFamily: 'Georgia',
                ),
              ),
            ),
            SizedBox(height: dimension.val25),
            Padding(
              padding: EdgeInsets.all(dimension.val5),
              child: Text(
                'Example',
                style: TextStyle(
                  fontSize: dimension.font20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Georgia',
                ),
              ),
            ),
            SizedBox(height: dimension.val10),
            Container(
              margin: EdgeInsets.all(dimension.val20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(dimension.val10),
                color: AppColors.shadowColor,
                boxShadow: [
                  const BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: HighlightView(
                '''int factorial(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

void main() {
  int n = 5;
  int result = factorial(n);
  print('The factorial of \$n is: \$result');
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
    );
  }
}
