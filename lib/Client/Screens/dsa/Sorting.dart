import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/a11y-dark.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/AppState.dart';
import 'package:provider/provider.dart';
import '../../../utils/Colors.dart';
import '../../../widgets/BigText.dart';

class Sorting extends StatelessWidget {
  const Sorting({Key? key}) : super(key: key);

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
      body: ListView(
        padding: EdgeInsets.all(dimension.val20),
        children: [
          Card(
            color:  appState.isDarkMode?AppColors.primaryColor:AppColors.lightModePrimary,
            elevation: 7,
            child: Padding(
              padding: EdgeInsets.all(dimension.val15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Definition',
                    style: TextStyle(
                      fontSize: dimension.font20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Georgia',
                      color:  appState.isDarkMode?AppColors.lightModePrimary:AppColors.primaryColor,
                    ),
                  ),
                  SizedBox(height: dimension.val10),
                  Text(
                    'Sorting is the process of arranging elements in a specific order, typically in increasing or decreasing order based on a certain property or key.',
                    style: TextStyle(
                      fontSize: dimension.font18,
                      fontFamily: 'Georgia',
                      color: appState.isDarkMode?AppColors.lightModePrimary:AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: dimension.val25),
          Card(
            color:  appState.isDarkMode?AppColors.primaryColor:AppColors.lightModePrimary,
            elevation: 7,
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
                      color:  appState.isDarkMode?AppColors.lightModePrimary:AppColors.primaryColor
                    ),
                  ),
                  SizedBox(height: dimension.val10),
                  Text(
                    '1. Sorting Algorithm: The algorithm that determines the process of rearranging elements in a specific order.\n'
                        '2. Comparison-based Sorting: Sorting algorithms that compare elements and make decisions based on the comparison results.\n'
                        '3. Stable Sorting: Sorting algorithms that maintain the relative order of elements with equal keys.\n'
                        '4. In-place Sorting: Sorting algorithms that rearrange elements within the given array without using additional memory.\n'
                        '5. Time Complexity: The measure of the amount of time required by a sorting algorithm to perform the sorting operation.',
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
                      '''void bubbleSort(List<int> array) {
  int n = array.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (array[j] > array[j + 1]) {
        // Swap array[j] and array[j + 1]
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
  }
}

void main() {
  List<int> numbers = [5, 8, 2, 10, 3];
  bubbleSort(numbers);
  print('Sorted numbers: \$numbers');
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
