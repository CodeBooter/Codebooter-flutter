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
          padding:  EdgeInsets.all(dimension.val20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Definition',
                style: TextStyle(
                  fontSize: dimension.font20,
                  fontWeight: FontWeight.bold,fontFamily: 'Georgia',
                ),
              ),
              SizedBox(height: dimension.val10),
              Text(
                'An array is a data structure that stores a fixed-size sequence of elements of the same type in contiguous memory locations.',
                style: TextStyle(
                  fontSize: dimension.font18,fontFamily: 'Georgia',
                ),
              ),
              SizedBox(height: dimension.val25),
              Center(child: Image(image: NetworkImage('https://i.imgur.com/4Y9S29P.png'),height: dimension.height85,)),
              SizedBox(height: dimension.val25),
              Text(
                'Types of Arrays',
                style: TextStyle(
                  fontSize: dimension.font20,
                  fontWeight: FontWeight.bold,fontFamily: 'Georgia',
                ),
              ),
              SizedBox(height: dimension.val25),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildLinkedListType(
                      title: 'One-Dimensional Array',
                      definition:
                      'A one-dimensional array is the most basic type of array. It stores elements in a linear sequence, where each element is accessed using a single index.',
                    //  Blue color
                    ),
                    SizedBox(width: dimension.val15),
                    _buildLinkedListType(
                      title: 'Two-Dimensional Array',
                      definition:
                      'A two-dimensional array is an array of arrays. It represents a table-like structure with rows and columns. It is often used to represent matrices and grids.',
                     // Blue color


                    ),
                    SizedBox(width: dimension.val15),
                    _buildLinkedListType(
                      title: 'Dynamic Array',
                      definition:
                      'A dynamic array is an array that can dynamically resize itself during runtime. It allows for adding or removing elements without a fixed size constraint.',

                    ),

                    SizedBox(width: dimension.val15),
                    _buildLinkedListType(
                      title: 'Jagged Array',
                      definition:
                      'A jagged array, also known as an array of arrays, is an array where each element can be an array of different lengths. It allows for creating ragged structures',

                    ),

                    SizedBox(width: dimension.val15),
                    _buildLinkedListType(
                      title: 'Sparse Array',
                      definition:
                      'A sparse array is an array where most of the elements have a default or null value, and only a small portion of the elements contain actual data.',

                    ),

                    SizedBox(width: dimension.val15),
                    _buildLinkedListType(
                      title: 'Multi-Dimensional Array',
                      definition:
                      'A multidimensional array is an array with more than two dimensions. It extends the concept of a two-dimensional array to higher dimensions. ',
                    ),
                  ],
                ),
              ),
              SizedBox(height: dimension.val25),
              Text(
                'Operations performed on Linked List',
                style: TextStyle(
                  fontSize: dimension.font20,
                  fontWeight: FontWeight.bold,fontFamily: 'Georgia',
                ),
              ),
              SizedBox(height: dimension.val10),
              Text(
                '~  Searching for an element in a Array.\n'
                    '~  Reversing a Array.\n'
                    '~  Merging two Array.\n'
                    '~  Detecting cycles in Array.\n'
                    '~  Splitting a Array into two halves.',
                style: TextStyle(
                  fontSize: dimension.font18,fontFamily: 'Georgia',
                ),
              ),
              SizedBox(height: dimension.val25),
              Text(
                'Example',
                style: TextStyle(
                  fontSize: dimension.font20,
                  fontWeight: FontWeight.bold,fontFamily: 'Georgia',
                ),
              ),
              SizedBox(height: dimension.val10),
              Container(
                margin:  EdgeInsets.all(dimension.val20),

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(dimension.val10),
                    color: appState.isDarkMode
                        ? AppColors.shadowColor : AppColors.primaryColor,
                    boxShadow:  [
                      BoxShadow(

                        color: appState.isDarkMode
                ? AppColors.shadowColor
                    : AppColors.primaryColor,
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
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
                  padding:  EdgeInsets.all(dimension.val15),
                  textStyle:  TextStyle(
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


  Widget _buildLinkedListType({
    required String title,
    required String definition,

  }) {
    final appState = Provider.of<AppState>(context);
    return Container(

      width: dimension.width311,
      height: dimension.height180,
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
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      padding: EdgeInsets.all(dimension.val20),
      margin: EdgeInsets.all(dimension.val10),
      // Add margin to increase spacing
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
