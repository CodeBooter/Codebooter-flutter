import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/a11y-dark.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';

class Searching extends StatelessWidget {
  const Searching({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          'Searching',
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
                'Searching is the process of finding a specific element or condition within a collection of elements.',
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
                '1. Target Element: The element being searched within the collection.\n'
                    '2. Collection: The group of elements in which the search is performed.\n'
                    '3. Searching Algorithm: The algorithm that determines the process of searching for the target element.\n'
                    '4. Search Space: The range or area within which the search is conducted.',
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
          ],
        ),
      ),
    );
  }
}
