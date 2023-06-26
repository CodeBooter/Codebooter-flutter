import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/a11y-dark.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';

class Recursion extends StatelessWidget {
  const Recursion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          'Recursion',
          style: TextStyle(
            fontSize: dimension.font24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Georgia',
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(dimension.val20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 6,
              child: Padding(
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
            ),
            SizedBox(height: dimension.val10),
            Padding(
              padding: EdgeInsets.only(left: dimension.val15, right: dimension.val15),
              child: Text(
                'Recursion is a programming technique where a function calls itself to solve a problem by breaking it down into smaller subproblems.',
                style: TextStyle(
                  fontSize: dimension.font18,
                  fontFamily: 'Georgia',
                ),
              ),
            ),
            SizedBox(height: dimension.val25),
            Card(
              elevation: 6,
              child: Padding(
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
            ),
            SizedBox(height: dimension.val10),
            Padding(
              padding: EdgeInsets.only(left: dimension.val15, right: dimension.val15),
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
            Card(
              elevation: 6,
              child: Padding(
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
            ),
            SizedBox(height: dimension.val10),
            Container(
              margin: EdgeInsets.all(dimension.val20),
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
