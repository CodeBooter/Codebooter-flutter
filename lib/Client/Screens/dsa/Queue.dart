import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/a11y-dark.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/AppState.dart';
import 'package:provider/provider.dart';

import '../../../utils/Colors.dart';
import '../../../widgets/BigText.dart';

class Queues extends StatefulWidget {
  const Queues({Key? key}) : super(key: key);

  @override
  _QueuesState createState() => _QueuesState();
}

class _QueuesState extends State<Queues> {
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
                'A queue is a data structure that follows the First-In-First-Out (FIFO) principle.',
                style: TextStyle(
                  fontSize: Dimension.font18,
                  fontFamily: 'Georgia',
                ),
              ),
              SizedBox(height: Dimension.val25),
              Center(
                child: Image(
                  image: const NetworkImage('https://i.imgur.com/G96qGr3.png'),
                  height: Dimension.height185,
                ),
              ),
              SizedBox(height: Dimension.val25),
              Text(
                'Types of Queues',
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
                    _buildQueueType(
                      title: 'Simple Queue',
                      definition:
                          'In Simple Queue, elements are added to the rear and removed from the front.In this queue the Insertion and deletion takes place from specified ends.',
                    ),
                    SizedBox(width: Dimension.val15),
                    _buildQueueType(
                      title: 'Circular Queue',
                      definition:
                          'In a circular queue, the rear and front elements are connected in a circular manner, allowing efficient space utilization. Insertion and Deletioncan be done from any point',
                    ),
                    SizedBox(width: Dimension.val15),
                    _buildQueueType(
                      title: 'Priority Queue',
                      definition:
                          'It Assigns a priority value to each element, and dequeues the highest priority element first.This Queue works on the priority of the value of element',
                    ),
                  ],
                ),
              ),
              SizedBox(height: Dimension.val25),
              Text(
                'Operations performed on Queue',
                style: TextStyle(
                  fontSize: Dimension.font20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Georgia',
                ),
              ),
              SizedBox(height: Dimension.val10),
              Text(
                '~ Enqueue: Adds an element to the rear of the queue.\n'
                '~ Dequeue: Removes and returns the front element from the queue.\n'
                '~ Front: Returns the front element without removing it.\n'
                '~ Rear: Returns the rear element without removing it.\n'
                '~ IsEmpty: Checks if the queue is empty.\n'
                '~ IsFull: Checks if the queue is full (in case of a fixed-size queue).',
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
                  color: Colors.black38,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: Dimension.val2,
                      blurRadius: Dimension.val5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: HighlightView(
                  '''class Queue {
  List<dynamic> elements = [];
  dynamic front() {
    if (isEmpty()) {
      throw Exception('Queue is empty');
    }
    return elements[0];
  }
  dynamic rear() {
    if (isEmpty()) {
      throw Exception('Queue is empty');
    }
    return elements[elements.length - 1];
  }
}
void main() {
  Queue queue = Queue();
  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);
  print('Front element: );
  print('Rear element:');
  while (!queue.isEmpty()) {
    print('Dequeued element: ');
  }
}''',
                  language: 'dart',
                  theme: a11yDarkTheme,
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

  Widget _buildQueueType({
    required String title,
    required String definition,
  }) {
    final appState = Provider.of<AppState>(context);
    return Container(
      width: Dimension.width311,
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
