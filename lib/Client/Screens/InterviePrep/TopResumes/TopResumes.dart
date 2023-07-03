import 'dart:convert';
import 'package:codebooter_study_app/AppState.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class TopResumes extends StatefulWidget {
  const TopResumes();

  @override
  _TopResumesState createState() => _TopResumesState();
}

class _TopResumesState extends State<TopResumes> {
  List<Map<String, String>> resume = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchResume();
  }

  Future<void> fetchResume() async {
    try {
      final response = await http.get(Uri.parse(
          'https://script.google.com/macros/s/AKfycbyiee_Ar4oKxBKlTfnO8ma3xcaBzgv2x_BH9rEEmIZj6NRYdS2TKtjfZ_JL0ENR55Z9/exec'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body)['data'] as List<dynamic>;
        setState(() {
          resume = data
              .map((item) => {
                    'resume': item['resume'] as String,
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
          'Referenced Resumes',
          style: TextStyle(
              color: appState.isDarkMode ? Colors.white : Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: resume.length,
              itemBuilder: (BuildContext context, int index) {
                final resumeLink = resume[index]['resume'];
                return Container(
                  margin: EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Scaffold(
                            appBar: AppBar(
                              title: Text('Resume'),
                            ),
                            body: SfPdfViewer.network(resumeLink!),
                          ),
                        ),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        children: [
                          // Icon(Icons.picture_as_pdf),
                          Expanded(
                            child: SfPdfViewer.network(resumeLink!),
                          ),
                          SizedBox(width: 16.0),
                          Text('Open Resume'),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
