import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/a11y-dark.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/AppState.dart';
import 'package:provider/provider.dart';
import '../../../utils/Colors.dart';
import '../../../widgets/BigText.dart';

class LinkedList extends StatefulWidget {
  const LinkedList({super.key});
  @override
  _LinkedListState createState() => _LinkedListState();
}

class _LinkedListState extends State<LinkedList> {
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
          text: "Linked List",
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
                'A linked list is a linear data structure where each element (node) contains a reference to the next node.',
                style: TextStyle(
                  fontSize: dimension.font18,
                  fontFamily: 'Georgia',
                ),
              ),
              //SizedBox(height: dimension.val2),
              Center(
                  child: Image(
                image: const NetworkImage('https://i.imgur.com/hhjRvJV.png'),
                height: dimension.height200,
              )),
              //SizedBox(height: dimension.val2),
              Text(
                'Types of Linked Lists',
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
                    _buildLinkedListType(
                      title: 'Singly Linked List',
                      definition:
                          'A singly linked list is a type of linked list where each node contains a data element and a reference (link) to the next node in the list. The last node in the list points to null, indicating the end of the list.',
                    ),
                    SizedBox(width: dimension.val15),
                    _buildLinkedListType(
                      title: 'Doubly Linked List',
                      definition:
                          'A doubly linked list is a type of linked list where each node contains a data element and two references (links): one to the previous node and one to the next node in the list. This allows for traversal in both directions.',
                    ),
                    SizedBox(width: dimension.val15),
                    _buildLinkedListType(
                      title: 'Circular Linked List',
                      definition:
                          'A circular linked list is a type of linked list where the last nodes reference points back to the first node, creating a circular structure. This means that the next reference of the last node points to the first node.',
                    ),
                  ],
                ),
              ),
              SizedBox(height: dimension.val25),
              Text(
                'Operations performed on Linked List',
                style: TextStyle(
                  fontSize: dimension.font20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Georgia',
                ),
              ),
              SizedBox(height: dimension.val10),
              Text(
                '~  Searching for an element in a linked list.\n'
                '~  Reversing a linked list.\n'
                '~  Merging two linked lists.\n'
                '~  Detecting cycles in linked lists.\n'
                '~  Splitting a linked list into two halves.',
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
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: HighlightView(
                  '''Data(NextFree) = new Item
 
IF NextFree = 1 THEN
        NextFree = NextFree + 1
        EXIT PROCEDURE
END IF
 
ptr=Start
WHILE ptr <> 0
        IF NewItem < Data(ptr) THEN
                Next(NextFree) = ptr
                IF ptr = Start THEN
                       Start = NextFree
                ELSE
                       Next(prevPtr) = NextFree
                END IF
                EXIT WHILE
        ELSE
                prevPtr = ptr
                ptr = Next(ptr)
        END IF
END WHILE
 
IF ptr = 0 THEN
       Next(prevPtr) = NextFree
END IF
NextFree = NextFree + 1




**It is a Pseudocode for creating a linked List.
''',
                  language: 'cpp',
                  theme: a11yDarkTheme,
                  // theme: themeMap[ThemeColor.lightTheme],
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

  Widget _buildLinkedListType({
    required String title,
    required String definition,
  }) {
    final appState = Provider.of<AppState>(context);
    return Container(
      width: dimension.width311,
      decoration: BoxDecoration(
        color: appState.isDarkMode
            ? AppColors.primaryColor
            : AppColors.mainTextColor,
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
                  ? AppColors.mainTextColor
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
                  ? AppColors.mainTextColor
                  : AppColors.primaryColor,
            ),
          ),
          SizedBox(height: dimension.val15),
        ],
      ),
    );
  }
}
