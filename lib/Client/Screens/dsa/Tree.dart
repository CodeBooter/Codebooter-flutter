import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/a11y-dark.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/AppState.dart';
import 'package:provider/provider.dart';
import '../../../utils/Colors.dart';
import '../../../widgets/BigText.dart';

class Tree extends StatefulWidget {
  const Tree({Key? key}) : super(key: key);

  @override
  _TreeState createState() => _TreeState();
}

class _TreeState extends State<Tree> {
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
          text: "Tree",
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
                'A tree is a hierarchical data structure consisting of nodes connected by edges. It is a widely used abstract data type that emulates a hierarchical tree structure with a set of linked nodes.',
                style: TextStyle(
                  fontSize: dimension.font18,
                  fontFamily: 'Georgia',
                ),
              ),
              SizedBox(height: dimension.val25),
              Center(
                child: Image(
                  image: NetworkImage('https://i.imgur.com/MhDHiyz.pngf'),

                  height: dimension.height250,
                ),
              ),
              SizedBox(height: dimension.val25),
              Text(
                'Types of Trees',
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
                    _buildTreeType(
                      title: 'Binary Tree',
                      definition:
                      'A binary tree is a tree in which each node has at most two children, referred to as the left child and the right child. The binary tree is a fundamental data structure that is widely used and serves as the basis for many other tree-based data structures.',

                    ),
                    SizedBox(width: dimension.val15),
                    _buildTreeType(
                      title: 'Binary Search Tree',
                      definition:
                      'A binary search tree (BST) is a binary tree in which the nodes are ordered or sorted. For any given node, all the values in its left subtree are less than its value, and all the values in its right subtree are greater than its value.',

                    ),
                    SizedBox(width: dimension.val15),
                    _buildTreeType(
                      title: 'AVL Tree',
                      definition:
                      ' An AVL (Adelson-Velskii and Landis) tree is a self-balancing binary search tree. It maintains an additional balance factor for each node, which ensures that the heights of the left and right subtrees differ by at most one.AVL trees provide log time complexity for operations. ',

                    ),
                  ],
                ),
              ),
              SizedBox(height: dimension.val25),
              Text(
                'Operations performed on Tree',
                style: TextStyle(
                  fontSize: dimension.font20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Georgia',
                ),
              ),
              SizedBox(height: dimension.val10),
              Text(
                '~ Insert: Adds a node to the tree.\n'
                    '~ Delete: Removes a node from the tree.\n'
                    '~ Search: Finds a node with a given value in the tree.\n'
                    '~ Traverse: Visits all the nodes in a specific order (e.g., in-order, pre-order, post-order).\n'
                    '~ Height: Returns the height of the tree.\n'
                    '~ Size: Returns the number of nodes in the tree.',
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
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: HighlightView(
                  '''class TreeNode {
  dynamic value;
  TreeNode? left;
  TreeNode? right;
  TreeNode(this.value);
}
class BinaryTree {
  TreeNode? root;
  void insert(dynamic value) {
    if (root == null) {
      root = TreeNode(value);
    } else {
      _insertNode(root, value);
    }
  }
  void _insertNode(TreeNode node, dynamic value) {
    if (value < node.value) {
      if (node.left == null) {
        node.left = TreeNode(value);
      } else {
        _insertNode(node.left!, value);
      }
    } else if (value > node.value) {
      if (node.right == null) {
        node.right = TreeNode(value);
      } else {
        _insertNode(node.right!, value);
      }
    }
  }
void main() {
  BinaryTree tree = BinaryTree();
  tree.insert(50);
  tree.insert(30);
  print(tree.search(40)); // true
  print(tree.search(90)); // false
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

  Widget _buildTreeType({
    required String title,
    required String definition,

  }) {
    final appState = Provider.of<AppState>(context);
    return Container(
      width: dimension.width311,
      decoration: BoxDecoration(
        color: appState.isDarkMode?AppColors.primaryColor:AppColors.lightModePrimary,
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
