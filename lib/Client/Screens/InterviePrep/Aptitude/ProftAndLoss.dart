import 'dart:convert';
import 'package:codebooter_study_app/AppState.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
// import 'package:expansion_tile/expansion_tile.dart';

class ProfitAndLoss extends StatefulWidget {
  const ProfitAndLoss();

  @override
  _ProfitAndLossState createState() => _ProfitAndLossState();
}

class _ProfitAndLossState extends State<ProfitAndLoss> {
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
          'https://script.google.com/macros/s/AKfycbyY88RIWveIPTyGSEwVoZu26izRfYIEmI9hfZh-UbV-O1r1zPOPI6MJDgWlh-84ZSw/exec'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body)['data'] as List<dynamic>;
        setState(() {
          questionsAndAnswers = data
              .map((item) => {
                    'question': item['question'].toString(),
                    'answer': item['answer'].toString(),
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
          color: appState.isDarkMode ? Colors.white : Colors.black,
        ),
        centerTitle: true,
        backgroundColor:
            appState.isDarkMode ? AppColors.primaryColor : Colors.white,
        title: Text(
          'ProfitAndLoss',
          style: TextStyle(
            color: appState.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
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

  const QuestionAnswerTile({
    Key? key,
    required this.question,
    required this.answer,
  }) : super(key: key);

  @override
  _QuestionAnswerTileState createState() => _QuestionAnswerTileState();
}

class _QuestionAnswerTileState extends State<QuestionAnswerTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        widget.question,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      children: [
        ListTile(
          title: Text(widget.answer),
        ),
      ],
      initiallyExpanded: isExpanded,
      onExpansionChanged: (value) {
        setState(() {
          isExpanded = value;
        });
      },
    );
  }
}
