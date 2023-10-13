import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/a11y-dark.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/AppState.dart';
import 'package:provider/provider.dart';

import '../../../utils/Colors.dart';
import '../../../widgets/BigText.dart';

class Arrays extends StatefulWidget {
  const Arrays({super.key});
  @override
  _ArraysState createState() => _ArraysState();
}

class _ArraysState extends State<Arrays> {
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
          text: "Arrays",
          color: appState.isDarkMode
              ? AppColors.mainTextColor
              : const Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(Dimension.val20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Definition',
                style: TextStyle(
                  fontSize: Dimension.font20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Georgia',
                ),
              ),
              SizedBox(height: Dimension.val10),
              Text(
                'An array is a data structure that stores a fixed-size sequence of elements of the same type in contiguous memory locations.',
                style: TextStyle(
                  fontSize: Dimension.font18,
                  fontFamily: 'Georgia',
                ),
              ),
              SizedBox(height: Dimension.val25),
              Center(
                  child: Image(
                image: const NetworkImage('https://i.imgur.com/4Y9S29P.png'),
                height: Dimension.height85,
              )),
              SizedBox(height: Dimension.val25),
              Text(
                'Types of Arrays',
                style: TextStyle(
                  fontSize: Dimension.font20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Georgia',
                ),
              ),
              SizedBox(height: Dimension.val25),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildLinkedListType(
                      title: 'One-Dimensional Array',
                      definition:
                          'A one-Dimensional array is the most basic type of array. It stores elements in a linear sequence, where each element is accessed using a single index.',
                      //  Blue color
                    ),
                    SizedBox(width: Dimension.val15),
                    _buildLinkedListType(
                      title: 'Two-Dimensional Array',
                      definition:
                          'A two-Dimensional array is an array of arrays. It represents a table-like structure with rows and columns. It is often used to represent matrices and grids.',
                      // Blue color
                    ),
                    SizedBox(width: Dimension.val15),
                    _buildLinkedListType(
                      title: 'Dynamic Array',
                      definition:
                          'A dynamic array is an array that can dynamically resize itself during runtime. It allows for adding or removing elements without a fixed size constraint.',
                    ),
                    SizedBox(width: Dimension.val15),
                    _buildLinkedListType(
                      title: 'Jagged Array',
                      definition:
                          'A jagged array, also known as an array of arrays, is an array where each element can be an array of different lengths. It allows for creating ragged structures',
                    ),
                    SizedBox(width: Dimension.val15),
                    _buildLinkedListType(
                      title: 'Sparse Array',
                      definition:
                          'A sparse array is an array where most of the elements have a default or null value, and only a small portion of the elements contain actual data.',
                    ),
                    SizedBox(width: Dimension.val15),
                    _buildLinkedListType(
                      title: 'Multi-Dimensional Array',
                      definition:
                          'A multiDimensional array is an array with more than two Dimensions. It extends the concept of a two-Dimensional array to higher Dimensions. ',
                    ),
                  ],
                ),
              ),
              SizedBox(height: Dimension.val25),
              Text(
                'Operations performed on Linked List',
                style: TextStyle(
                  fontSize: Dimension.font20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Georgia',
                ),
              ),
              SizedBox(height: Dimension.val10),
              Text(
                '~  Searching for an element in a Array.\n'
                '~  Reversing a Array.\n'
                '~  Merging two Array.\n'
                '~  Detecting cycles in Array.\n'
                '~  Splitting a Array into two halves.',
                style: TextStyle(
                  fontSize: Dimension.font18,
                  fontFamily: 'Georgia',
                ),
              ),
              SizedBox(height: Dimension.val25),
              Text(
                'Example',
                style: TextStyle(
                  fontSize: Dimension.font20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Georgia',
                ),
              ),
              SizedBox(height: Dimension.val10),
              Container(
                margin: EdgeInsets.all(Dimension.val20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimension.val10),
                    color: appState.isDarkMode
                        ? AppColors.shadowColor
                        : AppColors.primaryColor,
                    boxShadow: [
                      BoxShadow(
                        color: appState.isDarkMode
                            ? AppColors.shadowColor
                            : AppColors.primaryColor,
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: HighlightView(
                  '''DECLARE arrayName : ARRAY[lower bound:upper bound] OF data_type

// Initialize the array
FOR index = lower bound TO upper bound
    arrayName[index] = initial_value
END FOR
DECLARE arrayOfIntegers : ARRAY[0:9] OF INTEGER

FOR index = 0 TO 9
    arrayOfIntegers[index] = 0
END FOR

''',
                  language: 'cpp',
                  theme: a11yDarkTheme,

                  // theme: themeMap[ThemeColor.lightTheme],
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
      ),
    );
  }

  Widget _buildLinkedListType({
    required String title,
    required String definition,
  }) {
    final appState = Provider.of<AppState>(context);
    return Container(
      width: Dimension.width311,
      height: Dimension.height180,
      decoration: BoxDecoration(
        color: appState.isDarkMode
            ? AppColors.primaryColor
            : AppColors.lightModePrimary,
        borderRadius: BorderRadius.circular(Dimension.val15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      padding: EdgeInsets.all(Dimension.val20),
      margin: EdgeInsets.all(Dimension.val10),
      // Add margin to increase spacing
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: Dimension.font16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Georgia',
              color: appState.isDarkMode
                  ? AppColors.lightModePrimary
                  : AppColors.primaryColor,
            ),
          ),
          SizedBox(height: Dimension.val10),
          Text(
            definition,
            style: TextStyle(
              fontSize: Dimension.font16,
              fontFamily: 'Georgia',
              color: appState.isDarkMode
                  ? AppColors.lightModePrimary
                  : AppColors.primaryColor,
            ),
          ),
          SizedBox(height: Dimension.val15),
        ],
      ),
    );
  }
}
