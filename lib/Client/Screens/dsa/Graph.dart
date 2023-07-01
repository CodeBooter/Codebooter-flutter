import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/a11y-dark.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/AppState.dart';
import 'package:provider/provider.dart';

import '../../../utils/Colors.dart';
import '../../../widgets/BigText.dart';
class Graphs extends StatefulWidget {
  const Graphs({Key? key}) : super(key: key);

  @override
  _GraphsState createState() => _GraphsState();
}

class _GraphsState extends State<Graphs> {
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
          text: "Graph",
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
                'A graph is a non-linear data structure that consists of a set of vertices (also known as nodes) connected by edges.',
                style: TextStyle(
                  fontSize: dimension.font18,
                  fontFamily: 'Georgia',
                ),
              ),

              Center(
                child: Image(
                  image: NetworkImage('https://i.imgur.com/tE5mZ7g.png'),
                  height: dimension.height200,
                ),
              ),

              Text(
                'Types of Graphs',
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
                    _buildGraphType(
                      title: 'Undirected Graph',
                      definition:
                      'In an undirected graph, the edges do not have a direction. The connection between two vertices is symmetric, meaning if there is an edge from vertex A to vertex B, there is also an edge from vertex B to vertex A.',

                    ),
                    SizedBox(width: dimension.val15),
                    _buildGraphType(
                      title: 'Directed Graph',
                      definition:
                      'In a directed graph (also called a digraph), the edges have a direction. The connection between two vertices is asymmetric, meaning if there is an edge from vertex A to vertex B, there is not necessarily an edge from vertex B to vertex A.',

                    ),
                    SizedBox(width: dimension.val15),
                    _buildGraphType(
                      title: 'Weighted Graph',
                      definition:
                      'In a weighted graph, each edge is assigned a weight or cost. This weight represents some value associated with the connection between two vertices, such as distance, time, or cost.Weighted graph can be directional or non-directional.',

                    ),
                  ],
                ),
              ),
              SizedBox(height: dimension.val25),
              Text(
                'Operations performed on Graphs',
                style: TextStyle(
                  fontSize: dimension.font20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Georgia',
                ),
              ),
              SizedBox(height: dimension.val10),
              Text(
                'Graphs support various operations, including:\n'
                    '~ Adding a vertex or edge to the graph.\n'
                    '~ Removing a vertex or edge from the graph.\n'
                    '~ Checking if a vertex or edge exists in the graph.\n'
                    '~ Traversing the graph to visit all vertices or find a specific path.\n'
                    '~ Finding the shortest path between two vertices.\n'
                    '~ Determining the connectivity of the graph.',
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
                      color: AppColors.shadowColor,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: HighlightView(
                  '''class Graph {
  Map<String, List<String>> vertices = {};
  void addVertex(String vertex) {
    if (!vertices.containsKey(vertex)) {
      vertices[vertex] = [];
    }
  }
  void addEdge(String fromVertex, String toVertex) {
    if (!vertices.containsKey(fromVertex)) {
      addVertex(fromVertex);
    }
    if (!vertices.containsKey(toVertex)) {
      addVertex(toVertex);
    }
    vertices[fromVertex]!.add(toVertex);
    vertices[toVertex]!.add(fromVertex);
  }
}
void main() {
  Graph graph = Graph();
  graph.addVertex('A');
  graph.addVertex('B');
  graph.addEdge('A', 'B');
  graph.addEdge('B', 'C');
  print('Graph vertices: ');
  print('Graph edges: ');
  print('Vertex A exists: ');
  print('Edge from A to B exists: ');
  print('Edge from B to D exists:');
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

  Widget _buildGraphType({
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
