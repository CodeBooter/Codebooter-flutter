import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/a11y-dark.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/AppState.dart';
import 'package:provider/provider.dart';

import '../../../utils/Colors.dart';
import '../../../widgets/BigText.dart';

class Trie extends StatefulWidget {
  const Trie({Key? key}) : super(key: key);

  @override
  _TrieState createState() => _TrieState();
}

class _TrieState extends State<Trie> {
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
          text: "Trie",
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
                'A trie is a tree-based data structure used to efficiently store and retrieve strings. It is also known as a prefix tree.',
                style: TextStyle(
                  fontSize: dimension.font18,
                  fontFamily: 'Georgia',
                ),
              ),
              SizedBox(height: dimension.val25),
              Center(
                child: Image(
                  image: const NetworkImage('https://i.imgur.com/6HkHFtc.png'),
                  height: dimension.height250,
                  width: dimension.width280,
                ),
              ),
              SizedBox(height: dimension.val25),
              Text(
                'Operations performed on Trie',
                style: TextStyle(
                  fontSize: dimension.font20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Georgia',
                ),
              ),
              SizedBox(height: dimension.val10),
              Text(
                '~ Insert: Adds a string to the trie.\n'
                '~ Search: Checks if a string is present in the trie.\n'
                '~ Delete: Removes a string from the trie.\n'
                '~ StartsWith: Checks if any string in the trie starts with a given prefix.',
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
                  boxShadow: const [
                    BoxShadow(
                      color: AppColors.shadowColor,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: HighlightView(
                  '''function insert(word)
  current_node = root_node
  for char in word:
    if char not in current_node.children:
      current_node.children[char] = TrieNode()
    current_node = current_node.children[char]
  current_node.is_word = True
end function

function search(word)
  current_node = root_node
  for char in word:
    if char not in current_node.children:
      return False
    current_node = current_node.children[char]
  return current_node.is_word
end function
''',
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
}
