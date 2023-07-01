import 'dart:convert';
import 'package:codebooter_study_app/AppState.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class CProgramming extends StatefulWidget {
  const CProgramming();

  @override
  _CProgrammingState createState() => _CProgrammingState();
}

class _CProgrammingState extends State<CProgramming> {
  List<Map<String, String>> questionsAndAnswers = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchQuestionsAndAnswers();
  }

  Future<void> fetchQuestionsAndAnswers() async {
    try {
      final response = await http.get(Uri.parse(
          'https://script.googleusercontent.com/macros/echo?user_content_key=nji5pxrFU2KslXDgQ2YJRFz3c7QTcpyK1f3g53BWS1l5jNEmdt-2low5-Y7gDswc3ozDH-wmlnh5e-yzlwlmPoQcgXZL71mdm5_BxDlH2jW0nuo2oDemN9CCS2h10ox_1xSncGQajx_ryfhECjZEnJ2_Ssg_1rsX9xGuYSxwWXrhBG54mJO0EibXLtbW8cxTW4zbX28j5LJdN8QUyQdajewY__gpreOffs_DlC-sAbdP3qHr7Wh2ANz9Jw9Md8uu&lib=M2e5v3NanSAnxvPrNJoI-h-lBzDsh0VAx'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body)['data'] as List<dynamic>;
        setState(() {
          questionsAndAnswers = data
              .map((item) => {
                    'question': item['question'] as String,
                    'answer': item['answer'] as String,
                  })
              .toList();
          isLoading = false; // Set loading state to false when data is fetched
        });
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (error) {
      print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: appState.isDarkMode ? Colors.white : Colors.black),
        centerTitle: true,
        backgroundColor:
            appState.isDarkMode ? AppColors.primaryColor : Colors.white,
        title: Text(
          'C Programming',
          style: TextStyle(
            color: appState.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
      ),
      body: isLoading // Check if data is still loading
          ? Center(child: CircularProgressIndicator()) // Show loading indicator
          : ListView.builder(
              itemCount: questionsAndAnswers.length,
              itemBuilder: (context, index) {
                return QuestionAnswerTile(
                  question: questionsAndAnswers[index]['question']!,
                  answer: questionsAndAnswers[index]['answer']!,
                );
              },
            ),
    );
  }
}

class QuestionAnswerTile extends StatefulWidget {
  final String question;
  final String answer;

  const QuestionAnswerTile(
      {Key? key, required this.question, required this.answer})
      : super(key: key);

  @override
  _QuestionAnswerTileState createState() => _QuestionAnswerTileState();
}

class _QuestionAnswerTileState extends State<QuestionAnswerTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      elevation: 1,
      expandedHeaderPadding: EdgeInsets.zero,
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          this.isExpanded = !isExpanded;
        });
      },
      children: [
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(
                widget.question,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
          body: ListTile(
            title: Text(widget.answer),
          ),
          isExpanded: isExpanded,
        ),
      ],
    );
  }
}
