import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/a11y-dark.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/AppState.dart';
import 'package:provider/provider.dart';

import '../../../utils/Colors.dart';
import '../../../widgets/BigText.dart';

class Greedy extends StatelessWidget {
  const Greedy({Key? key}) : super(key: key);

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
          text: "Backtracking",
          color: appState.isDarkMode
              ? AppColors.mainTextColor
              : const Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(Dimension.val20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(Dimension.val5),
              child: Text(
                'Definition',
                style: TextStyle(
                  fontSize: Dimension.font20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Georgia',
                ),
              ),
            ),
            SizedBox(height: Dimension.val10),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimension.val15, right: Dimension.val15),
              child: Text(
                'Greedy is an algorithmic paradigm that follows the problem-solving heuristic of making the locally optimal choice at each stage with the hope of finding a global optimum.',
                style: TextStyle(
                  fontSize: Dimension.font18,
                  fontFamily: 'Georgia',
                ),
              ),
            ),
            SizedBox(height: Dimension.val25),
            Padding(
              padding: EdgeInsets.all(Dimension.val5),
              child: Text(
                'Key Concepts',
                style: TextStyle(
                  fontSize: Dimension.font20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Georgia',
                ),
              ),
            ),
            SizedBox(height: Dimension.val10),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimension.val15, right: Dimension.val15),
              child: Text(
                '1. Greedy Algorithm: An algorithmic approach that builds up a solution step by step by making a series of locally optimal choices.\n'
                '2. Locally Optimal Choice: A choice that seems to be the best at the current stage.\n'
                '3. Greedy Choice Property: The locally optimal choice made at each stage should lead to a globally optimal solution.\n'
                '4. Optimization Problems: Problems that require finding the best solution among a set of possible solutions.\n'
                '5. Greedy Algorithms in Practice: Greedy algorithms are often used for optimization problems such as scheduling, routing, and data compression.',
                style: TextStyle(
                  fontSize: Dimension.font18,
                  fontFamily: 'Georgia',
                ),
              ),
            ),
            SizedBox(height: Dimension.val25),
            Padding(
              padding: EdgeInsets.all(Dimension.val5),
              child: Text(
                'Example',
                style: TextStyle(
                  fontSize: Dimension.font20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Georgia',
                ),
              ),
            ),
            SizedBox(height: Dimension.val10),
            Container(
              margin: EdgeInsets.all(Dimension.val20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.val10),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: Dimension.val2,
                    blurRadius: Dimension.val5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: HighlightView(
                '''List<int> coinChangeGreedy(List<int> coins, int amount) {
  coins.sort((a, b) => b.compareTo(a));
  List<int> result = [];
  for (int coin in coins) {
    while (amount >= coin) {
      result.add(coin);
      amount -= coin;
    }
  }
  if (amount > 0) {
    return [];
  }
  return result;
}

void main() {
  List<int> coins = [25, 10, 5, 1];
  int amount = 47;
  List<int> change = coinChangeGreedy(coins, amount);
  print('Coins to make \$change');
}''',
                language: 'dart',
                theme: a11yDarkTheme,
                padding: EdgeInsets.all(Dimension.val15),
                textStyle: TextStyle(
                  fontFamily: 'Courier New',
                  fontSize: Dimension.font14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
