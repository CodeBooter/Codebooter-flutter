import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/a11y-dark.dart';


class Arrays extends StatefulWidget {
  const Arrays({super.key});

  @override
  State<Arrays> createState() => _Arrays();
}

class _Arrays extends State<Arrays> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arrays'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            // defination of array
           Container(
             padding:  EdgeInsets.only(top: dimension.val10,left: dimension.val15),
             child:  Text('Definition',style: TextStyle(fontSize: dimension.font18,fontWeight: FontWeight.bold,fontFamily: 'Georgia'),)
           ),
            Container(
              padding: EdgeInsets.all(dimension.val15),
              child:  SingleChildScrollView(
                child: Text(
                  'An array is a fixed-size, contiguous block of memory that stores a collection of elements of the same data type.',
                  style: TextStyle(fontSize: dimension.font16,fontFamily:'Noto'),
                ),
              ),
            ),



            //images
            Container(
            height: dimension.height115,
            decoration: BoxDecoration(
              color: Colors.cyan,
             image: const DecorationImage(
                 image: NetworkImage('https://media.geeksforgeeks.org/wp-content/uploads/20220721080308/array.png'),
             fit: BoxFit.fill),
              // border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(dimension.val20)
            ),
          ),


            // types of array
            Container(
                padding:  EdgeInsets.only(top: dimension.val15,left: dimension.val15,bottom: dimension.val15),
                child:  Text('Types of Array',style: TextStyle(fontSize: dimension.font18,fontWeight: FontWeight.bold,fontFamily: 'Georgia'),)
            ),

            Container(
              padding:  EdgeInsets.all(dimension.val5),
              child:  SingleChildScrollView(
                child: Text(
                  'There are two types of arrays:\n - One-Dimensional Arrays\n - Two-Dimensional Array\n - Multi-Dimensional Arrays',
                  style: TextStyle(fontSize: dimension.font16,fontFamily: 'Noto'),
                ),
              ),
            ),

            Container(
              padding:  EdgeInsets.only(top: dimension.val10,),
              height: dimension.height200,
              decoration:  BoxDecoration(
                image: DecorationImage(
                    image:NetworkImage('https://www.tutorialspoint.com/data_structures_algorithms/images/array_representation.jpg'),
                    fit: BoxFit.fill,
                invertColors: true
                ),
                // border: Border.all(color: Colors.red),


              ),
            ),

            // 1- d array
            Container(
                padding:  EdgeInsets.only(top: dimension.val15,left: dimension.val15,bottom: dimension.val15),
                child:  Text('1-D Array',style: TextStyle(fontSize: dimension.font18,fontWeight: FontWeight.bold,fontFamily: 'Georgia'),)
            ),
            Container(
              height: dimension.height115,
              decoration: const BoxDecoration(
                  color: Colors.cyan,
                  image: DecorationImage(
                      image: NetworkImage('https://media.geeksforgeeks.org/wp-content/cdn-uploads/Blank-Diagram-Page-1-10.jpeg'),
                      fit: BoxFit.fill,invertColors: false),
                  // border: Border.all(color: Colors.red),

              ),
            ),
            Container(
              padding:  EdgeInsets.only(top: dimension.val15,left: dimension.val15,right: dimension.val10,bottom: dimension.val15),
              child: RichText(
                text:  TextSpan(
                  children: [
                    TextSpan(
                      text: 'A one-dimensional array, also known as a flat array, is the simplest form of an array. It consists of a linear collection of elements stored in a single row.\n',
                      style: TextStyle(
                        fontSize: dimension.font16,
                        color: Colors.black,
                        fontFamily: 'Noto',
                      ),
                    ),
                    TextSpan(
                      text: 'It stores elements in a linear sequence, where each element is accessed using its index.'
                    'It is often used to represent lists, sequences, or vectors of values. \n',
                      style: TextStyle(
                        fontSize: dimension.font16,
                        color: Colors.black,
                        fontFamily: 'Noto'
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Container(
              margin:  EdgeInsets.all(dimension.val20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(dimension.val10),
                  color: Colors.black38,
                  boxShadow:  [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: dimension.val2,
                      blurRadius: dimension.val5,
                      offset: Offset(0, dimension.val5), // changes position of shadow
                    ),
                  ]),
              child: HighlightView(
                '''void main() {
  // Creating a 1D array
  List<int> numbers = [1, 2, 3, 4, 5];
  
  // Accessing elements in the 1D array
  print(numbers[0]);  // Output: 1
  print(numbers[2]);  // Output: 3
  
  // Modifying elements in the 1D array
  numbers[1] = 10;
  print(numbers);     // Output: [1, 10, 3, 4, 5]
}

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


            // 2-D array
            Container(
                padding:  EdgeInsets.only(top: dimension.val15,left: dimension.val15,bottom: dimension.val15),
                child:  Text('2-D Array',style: TextStyle(fontSize: dimension.font18,fontWeight: FontWeight.bold,fontFamily: 'Georgia'),)
            ),
            Container(
              height: dimension.height115,
              decoration: const BoxDecoration(

                  image: DecorationImage(
                      image: NetworkImage('https://i.stack.imgur.com/Jx5kE.png'),
                      fit: BoxFit.fill),
                  // border: Border.all(color: Colors.red),

              ),
            ),
            Container(
              padding:  EdgeInsets.only(top: dimension.val15,left: dimension.val15,right: dimension.val15),
              child: RichText(
                text:  TextSpan(
                  children: [
                    TextSpan(
                      text: 'A two-dimensional (2D) array is a data structure that represents a grid-like arrangement of elements, organized into rows and columns. Array, each element is identified by its row and column indices.\n',
                      style: TextStyle(
                        fontSize: dimension.font16,
                        color: Colors.black,
                        fontFamily: 'Noto'
                      ),
                    ),

                    TextSpan(
                      text: '2D arrays are useful for representing tabular data, matrices, grids, and other two-dimensional structures.\n',
                      style: TextStyle(
                        fontSize: dimension.font16,
                        color: Colors.black,
                        fontFamily: 'Noto'
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin:  EdgeInsets.all(dimension.val20),

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black38,
                  boxShadow:  [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: dimension.val2,
                      blurRadius: dimension.val5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              child: HighlightView(
                '''void main() {
  // Creating a 2D array
  List<List<int>> grid = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];
  
  // Accessing elements in the 2D array
  print(grid[0][0]);  // Output: 1
  print(grid[1][2]);  // Output: 6
  
  // Modifying elements in the 2D array
  grid[2][1] = 10;
  print(grid);        // Output: [[1, 2, 3], [4, 5, 6], [7, 10, 9]]
}
''',
                language: 'cpp',
                theme: a11yDarkTheme,

                // theme: themeMap[ThemeColor.lightTheme],
                padding:  EdgeInsets.all(12),
                textStyle:  TextStyle(
                  fontFamily: 'Courier New',
                  fontSize: dimension.font14,
                ),
              ),
            ),



            // Multi dimensional array
            Container(
                padding:  EdgeInsets.only(top: 12,left: 15,bottom: 15),
                child:  Text('Multi-Dimensional Array',style: TextStyle(fontSize: dimension.font18,fontWeight: FontWeight.bold,fontFamily: 'Georgia'),)
            ),
            Container(
              height: dimension.height132,
              decoration:  BoxDecoration(
                  color: Colors.cyan,
                  image: DecorationImage(

                      image: NetworkImage('https://media.geeksforgeeks.org/wp-content/cdn-uploads/Blank-Diagram-Page-1-13.jpeg'),
                      fit: BoxFit.fill),
                  // border: Border.all(color: Colors.red),
              
              ),
            ),
            Container(
              padding:  EdgeInsets.only(top: dimension.val15,left: dimension.val15,right: dimension.val15,bottom: dimension.val15),
              child: RichText(
                text:  TextSpan(
                  children: [
                    TextSpan(
                      text: 'A multi-dimensional array is an array with more than two dimensions. Each element in a multi-dimensional array is identified by multiple indices, corresponding to its position in each dimension.\n',
                      style: TextStyle(
                        fontSize: dimension.font16,
                        color: Colors.black,
                        fontFamily: 'Noto'
                      ),
                    ),

                    TextSpan(
                      text: 'One-dimensional arrays are commonly used to represent lists, sequences, or vectors of values.',
                      style: TextStyle(
                        fontSize: dimension.font16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin:  EdgeInsets.all(dimension.val20),

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(dimension.val10),
                  color: Colors.black38,
                  boxShadow:  [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              child: HighlightView(
                '''public class Main {
  public static void main(String[] args) {
    int[][] myNumbers = { {1, 2, 3, 4}, {5, 6, 7} };
    for (int i = 0; i < myNumbers.length; ++i) {
      for(int j = 0; j < myNumbers[i].length; ++j) {
        System.out.println(myNumbers[i][j]);
      }
    }
  }
}''',
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



            // types of arrays end

            Container(
                padding:  EdgeInsets.only(top: dimension.val15,left: dimension.val15),
                child:  Text('Basic Operations on Array',style: TextStyle(fontSize: dimension.font18,fontWeight: FontWeight.bold,fontFamily: 'Georgia'),)
            ),
            Container(
              padding:  EdgeInsets.all(dimension.val15),
              child:  SingleChildScrollView(
                child: Text(
                  'The basic operations in the Arrays are insertion, deletion, searching, display, traverse, and update. \n Following are the basic operations supported by an array.\n- Traverse − print all the array elements one by one.\n- Insertion − Adds an element at the given index.\n- Deletion − Deletes an element at the given index.\n- Search − Searches an element using the given index or by the value.\n- Update − Updates an element at the given index.\n- Display − Displays the contents of the array.',
                  style: TextStyle(fontSize: dimension.font16,fontFamily: 'Noto'),
                ),
              ),
            ),




        ]
        ),
      )
    );
  }
}
