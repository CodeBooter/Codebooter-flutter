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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // defination of array
            Container(
                padding: const EdgeInsets.only(top: 12, left: 15),
                child: const Text(
                  'Definition',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
            Container(
              padding: const EdgeInsets.all(15),
              child: const SingleChildScrollView(
                child: Text(
                  'An array is a fixed-size, contiguous block of memory that stores a collection of elements of the same data type.',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),

            //images
            Container(
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.cyan,
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://media.geeksforgeeks.org/wp-content/uploads/20220721080308/array.png'),
                      fit: BoxFit.fill),
                  // border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(20)),
            ),

            // types of array
            Container(
                padding: const EdgeInsets.only(top: 12, left: 15, bottom: 14),
                child: const Text(
                  'Types of Array',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),

            Container(
              padding: const EdgeInsets.all(15),
              child: const SingleChildScrollView(
                child: Text(
                  'There are two types of arrays:\n - One-Dimensional Arrays\n - Two-Dimensional Array\n - Multi-Dimensional Arrays',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.only(
                top: 40,
              ),
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://www.tutorialspoint.com/data_structures_algorithms/images/array_representation.jpg'),
                    fit: BoxFit.cover),
                // border: Border.all(color: Colors.red),
              ),
            ),

            // 1- d array
            Container(
                padding: const EdgeInsets.only(top: 12, left: 15, bottom: 15),
                child: const Text(
                  '1-D Array',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            Container(
              height: 150,
              decoration: const BoxDecoration(
                color: Colors.cyan,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://media.geeksforgeeks.org/wp-content/cdn-uploads/Blank-Diagram-Page-1-10.jpeg'),
                    fit: BoxFit.fill),
                // border: Border.all(color: Colors.red),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 12, left: 15, right: 12, bottom: 15),
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'A one-dimensional array, also known as a flat array, is the simplest form of an array. It consists of a linear collection of elements stored in a single row.\n',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text:
                          'It stores elements in a linear sequence, where each element is accessed using its index.'
                          'It is often used to represent lists, sequences, or vectors of values. \n',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black38,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
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
                padding: const EdgeInsets.all(12),
                textStyle: const TextStyle(
                  fontFamily: 'Courier New',
                  fontSize: 14,
                ),
              ),
            ),

            // 2-D array
            Container(
                padding: const EdgeInsets.only(top: 12, left: 15, bottom: 15),
                child: const Text(
                  '2-D Array',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            Container(
              height: 130,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://i.stack.imgur.com/Jx5kE.png'),
                    fit: BoxFit.fill),
                // border: Border.all(color: Colors.red),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 12, left: 15, right: 12),
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'A two-dimensional (2D) array is a data structure that represents a grid-like arrangement of elements, organized into rows and columns. Array, each element is identified by its row and column indices.\n',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text:
                          '2D arrays are useful for representing tabular data, matrices, grids, and other two-dimensional structures.\n',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black38,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 1,
                      blurRadius: 5,
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
                padding: const EdgeInsets.all(12),
                textStyle: const TextStyle(
                  fontFamily: 'Courier New',
                  fontSize: 14,
                ),
              ),
            ),

            // Multi dimensional array
            Container(
                padding: const EdgeInsets.only(top: 12, left: 15, bottom: 15),
                child: const Text(
                  'Multi-Dimensional Array',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            Container(
              height: 150,
              decoration: const BoxDecoration(
                color: Colors.cyan,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://media.geeksforgeeks.org/wp-content/cdn-uploads/Blank-Diagram-Page-1-13.jpeg'),
                    fit: BoxFit.fill),
                // border: Border.all(color: Colors.red),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 12, left: 15, right: 12, bottom: 15),
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'A multi-dimensional array is an array with more than two dimensions. Each element in a multi-dimensional array is identified by multiple indices, corresponding to its position in each dimension.\n',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text:
                          'One-dimensional arrays are commonly used to represent lists, sequences, or vectors of values.',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black38,
                  boxShadow: const [
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
                padding: const EdgeInsets.all(12),
                textStyle: const TextStyle(
                  fontFamily: 'Courier New',
                  fontSize: 14,
                ),
              ),
            ),

            // types of arrays end

            Container(
                padding: const EdgeInsets.only(top: 12, left: 15),
                child: const Text(
                  'Basic Operations on Array',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
            Container(
              padding: const EdgeInsets.all(15),
              child: const SingleChildScrollView(
                child: Text(
                  'The basic operations in the Arrays are insertion, deletion, searching, display, traverse, and update. \n Following are the basic operations supported by an array.\n- Traverse − print all the array elements one by one.\n- Insertion − Adds an element at the given index.\n- Deletion − Deletes an element at the given index.\n- Search − Searches an element using the given index or by the value.\n- Update − Updates an element at the given index.\n- Display − Displays the contents of the array.',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black38,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              child: HighlightView(
                '''import java.util.Arrays;

public class ArrayOperations {

    private int[] array;
    private int size;

    public ArrayOperations() {
        array = new int[10];
        size = 0;
    }

    public void insert(int element) {
        if (size == array.length) {
            int[] newArray = new int[array.length * 2];
            System.arraycopy(array, 0, newArray, 0, array.length);
            array = newArray;
        }

        array[size++] = element;
    }

    public void delete(int index) {
        if (index < 0 || index >= size) {
            return;
        }

        for (int i = index; i < size - 1; i++) {
            array[i] = array[i + 1];
        }

        size--;
    }

    public int search(int element) {
        for (int i = 0; i < size; i++) {
            if (array[i] == element) {
                return i;
            }
        }

        return -1;
    }

    public void traverse() {
        for (int i = 0; i < size; i++) {
            System.out.println(array[i]);
        }
    }

    public void update(int index, int element) {
        if (index < 0 || index >= size) {
            return;
        }

        array[index] = element;
    }

    public void display() {
        System.out.println(Arrays.toString(array));
    }

    public static void main(String[] args) {
        ArrayOperations arrayOperations = new ArrayOperations();

        arrayOperations.insert(10);
        arrayOperations.insert(20);
        arrayOperations.insert(30);
        arrayOperations.insert(40);
        arrayOperations.insert(50);

        arrayOperations.traverse();

        System.out.println("The element at index 2 is " + arrayOperations.search(20));

        arrayOperations.update(2, 60);
        arrayOperations.traverse();

        arrayOperations.delete(3);
        arrayOperations.traverse();
    }
}
''',
                language: 'cpp',
                theme: a11yDarkTheme,

                // theme: themeMap[ThemeColor.lightTheme],
                padding: const EdgeInsets.all(12),
                textStyle: const TextStyle(
                  fontFamily: 'Courier New',
                  fontSize: 14,
                ),
              ),
            ),
          ]),
        ));
  }
}
