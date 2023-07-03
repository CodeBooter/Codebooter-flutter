import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/a11y-dark.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/AppState.dart';
import 'package:provider/provider.dart';

import '../../../utils/Colors.dart';
import '../../../widgets/BigText.dart';

class Stacks extends StatefulWidget {
  const Stacks({Key? key}) : super(key: key);

  @override
  _StacksState createState() => _StacksState();
}

class _StacksState extends State<Stacks> {
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
          text: "Stack",
          color: appState.isDarkMode
              ? AppColors.mainTextColor
              : const Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
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
                'A stack is a data structure that follows the Last-In-First-Out (LIFO) principle.',
                style: TextStyle(
                  fontSize: dimension.font18,
                  fontFamily: 'Georgia',
                ),
              ),
              // ...
              SizedBox(height: dimension.val25),
              Center(
                child: Image(
                  image: const NetworkImage('https://i.imgur.com/mK2qWri.png'),
                  height: dimension.height150,
                ),
              ),

              SizedBox(height: dimension.val25),
              Text(
                'Types of Stacks',
                style: TextStyle(
                  fontSize: dimension.font20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Georgia',
                ),
              ),
              SizedBox(height: dimension.val25),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildStackType(
                      title: 'Simple Stack',
                      definition:
                          ' A static stack has a fixed size determined at the time of creation. Once the stack is full, it cannot accommodate any more elements until some are removed (popped) from the stack.',
                    ),
                    SizedBox(width: dimension.val15),
                    _buildStackType(
                      title: 'Dynamic Stack',
                      definition:
                          'Dynamic stack, also known as a resizable stack, can grow or shrink dynamically based on the number of elements it contains. It uses dynamic memory allocation to resize itself.',
                    ),
                    SizedBox(width: dimension.val15),
                    _buildStackType(
                      title: 'Fixed-size Stack',
                      definition:
                          'n array-based stack is implemented using an array or a similar fixed-size data structure. It maintains a pointer (often called "top") indicating the last inserted element. ',
                    ),
                  ],
                ),
              ),
              // ...
              SizedBox(height: dimension.val25),
              Text(
                'Operations performed on Stack',
                style: TextStyle(
                  fontSize: dimension.font20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Georgia',
                ),
              ),
              SizedBox(height: dimension.val10),
              Text(
                '~ Push: Adds an element to the top of the stack.\n'
                '~ Pop: Removes and returns the top element from the stack.\n'
                '~ Peek: Returns the top element without removing it.\n'
                '~ IsEmpty: Checks if the stack is empty.\n'
                '~ IsFull: Checks if the stack is full (in case of a fixed-size stack).',
                style: TextStyle(
                  fontSize: dimension.font18,
                  fontFamily: 'Georgia',
                ),
              ),
              // ...
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
              Container(
                margin: EdgeInsets.all(dimension.val20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(dimension.val10),
                  color: Colors.black38,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: dimension.val2,
                      blurRadius: dimension.val5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: HighlightView(
                  '''class Stack {
  List<dynamic> elements = [];
  void push(dynamic item) {
    elements.add(item);
  }

  dynamic pop() {
    if (isEmpty()) {
      throw Exception('Stack is empty');
    }
    return elements.removeLast();
  }

}

void main() {
  Stack stack = Stack();

  stack.push(10);
  stack.push(20);
  stack.push(30);

  print('Top element:');

  while (!stack.isEmpty()) {
    print('Popped element:}');
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
      ),
    );
  }

  Widget _buildStackType({
    required String title,
    required String definition,
  }) {
    final appState = Provider.of<AppState>(context);
    return Container(
      width: dimension.width311,
      decoration: BoxDecoration(
        color: appState.isDarkMode
            ? AppColors.primaryColor
            : AppColors.lightModePrimary,
        borderRadius: BorderRadius.circular(dimension.val15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      padding: EdgeInsets.all(dimension.val20),
      margin: EdgeInsets.all(dimension.val10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: dimension.font16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Georgia',
              color: appState.isDarkMode
                  ? AppColors.lightModePrimary
                  : AppColors.primaryColor,
            ),
          ),
          SizedBox(height: dimension.val10),
          Text(
            definition,
            style: TextStyle(
              fontSize: dimension.font16,
              fontFamily: 'Georgia',
              color: appState.isDarkMode
                  ? AppColors.lightModePrimary
                  : AppColors.primaryColor,
            ),
          ),
          SizedBox(height: dimension.val15),
        ],
      ),
    );
  }
}
