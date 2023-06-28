import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/a11y-dark.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';

class Backtracking extends StatelessWidget {
  const Backtracking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          'Backtracking',
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
                'Backtracking is a problem-solving technique that explores all possible solutions by incrementally building candidates and abandons a candidate as soon as it determines that it cannot be a valid solution.',
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
                '1. Candidate: A potential solution to the problem being solved.\n'
                    '2. Constraints: Rules that determine whether a candidate is valid or not.\n'
                    '3. Backtracking: A recursive algorithm that incrementally builds and explores candidates, abandoning a candidate as soon as it violates a constraint.\n'
                    '4. Pruning: The process of discarding candidates that are known to be invalid.',
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
                '''void solveNQueens(int n) {
  List<List<String>> result = [];
  List<int> queens = List.filled(n, -1);
  backtrack(result, queens, n, 0);
  printResult(result);
}
void backtrack(List<List<String>> result, List<int> queens, int n, int row) {
  if (row == n) {
    result.add(generateBoard(queens, n));
  } else {
    for (int col = 0; col < n; col++) {
      if (isValid(queens, row, col)) {
        queens[row] = col;
        backtrack(result, queens, n, row + 1);
        queens[row] = -1; // Reset the queen's position for backtracking
      }
    }
  }
}
List<String> generateBoard(List<int> queens, int n) {
  List<String> board = [];
  for (int i = 0; i < n; i++) {
    String row = '';
    for (int j = 0; j < n; j++) {
      row += queens[i] == j ? 'Q' : '.';
    }
    board.add(row);
  }
  return board;
}
void printResult(List<List<String>> result) {
  for (List<String> board in result) {
    for (String row in board) {
      print(row);
    }
    print('');
  }
}

void main() {
  int n = 4;
  solveNQueens(n);
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
