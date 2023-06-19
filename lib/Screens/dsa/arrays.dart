import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/a11y-dark.dart';

class Arrays extends StatefulWidget {
  const Arrays({super.key});

  @override
  State<Arrays> createState() => _DsaScreenState();
}

class _DsaScreenState extends State<Arrays> {
  @override
  Widget build(BuildContext context) {
    String code = '''
#include <iostream>

int main() {
    int num1, num2;
    
    // Input the two numbers
    std::cout << "Enter the first number: ";
    std::cin >> num1;
    
    std::cout << "Enter the second number: ";
    std::cin >> num2;
    
    // Add the numbers
    int sum = num1 + num2;
    
    // Display the result
    std::cout << "The sum of " << num1 << " and " << num2 << " is " << sum << std::endl;
    
    return 0;
}
''';
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          toolbarHeight: dimension.val70,
          centerTitle: true,
          title: bigText(
            text: "Arrays",
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 252, 19, 19),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              child: HighlightView(
                code,
                language: 'cpp',
                theme: a11yDarkTheme,

                // theme: themeMap[ThemeColor.lightTheme],
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(
                  fontFamily: 'Courier New',
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ));
  }
}
