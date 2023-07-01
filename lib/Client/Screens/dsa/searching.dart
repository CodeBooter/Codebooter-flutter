import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/a11y-dark.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/AppState.dart';
import 'package:provider/provider.dart';
import '../../../utils/Colors.dart';
import '../../../widgets/BigText.dart';

class Searching extends StatelessWidget {
  const Searching({Key? key}) : super(key: key);

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
      body: Container(
        padding: EdgeInsets.all(dimension.val20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Definition',
              style: TextStyle(
                fontSize: dimension.font20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Georgia',
              ),
            ),
            SizedBox(height: dimension.val10),
            Text(
              'Searching is the process of finding a specific element or condition within a collection of elements.',
              style: TextStyle(
                fontSize: dimension.font18,
                fontFamily: 'Georgia',
              ),
            ),
            SizedBox(height: dimension.val25),
            Text(
              'Key Concepts',
              style: TextStyle(
                fontSize: dimension.font20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Georgia',
              ),
            ),
            SizedBox(height: dimension.val10),
            Text(
                  '1. Target Element: The element being searched within the collection.\n'
                  '2. Collection: The group of elements in which the search is performed.\n'
                  '3. Searching Algorithm: The algorithm that determines the process of searching for the target element.\n'
                  '4. Search Space: The range or area within which the search is conducted.',
              style: TextStyle(
                fontSize: dimension.font18,
                fontFamily: 'Georgia',
              ),
            ),
            SizedBox(height: dimension.val25),
            Text(
              'Example',
              style: TextStyle(
                fontSize: dimension.font20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Georgia',
              ),
            ),
            SizedBox(height: dimension.val10),
            Expanded(
              child: Container(
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
                  '''int linearSearch(List<int> array, int target) {
  for (int i = 0; i < array.length; i++) {
    if (array[i] == target) {
      return i; // Return the index where target is found
    }
  }
  return -1; // Return -1 if target is not found
}

void main() {
  List<int> numbers = [5, 8, 2, 10, 3];
  int target = 10;
  int index = linearSearch(numbers, target);
  if (index != -1) {
    print('Target found at index \$index');
  } else {
    print('Target not found');
  }
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
            ),
          ],
        ),
      ),
    );
  }
}
