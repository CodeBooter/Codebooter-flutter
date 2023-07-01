import 'package:codebooter_study_app/AppState.dart';
import 'package:codebooter_study_app/Client/Screens/InterviePrep/MockInterview/MockVideoPlayer.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:provider/provider.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
//p

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MockInterview extends StatefulWidget {
  const MockInterview();

  @override
  _MockInterviewState createState() => _MockInterviewState();
}

class _MockInterviewState extends State<MockInterview> {
  List<String> videoIds = []; // List to store video IDs

  @override
  void initState() {
    super.initState();
    fetchVideoIds(); // Call the function to fetch video IDs on widget initialization
  }

  Future<void> fetchVideoIds() async {
    final apiUrl = Uri.parse(
        'https://script.google.com/macros/s/AKfycbyH5eEXmH04wxr5CV0dG-a692733dgUWrwf07iAZx159nm2d_aSiTx1KhzLRkhQ7pJi/exec'); // Replace with your API endpoint
    final response = await http.get(apiUrl);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final data = jsonData['data'];
      List<String> fetchedVideoIds = [];
      for (var item in data) {
        final videoId = item['question'];
        fetchedVideoIds.add(videoId);
      }
      setState(() {
        videoIds = fetchedVideoIds; // Update the video IDs in the state
      });
    } else {
      // Handle API error
      print('API request failed with status code ${response.statusCode}');
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
        backgroundColor: appState.isDarkMode
            ? AppColors.primaryColor
            : AppColors.lightModePrimary,
        title: Text(
          'MockInterview Preparation',
          style: TextStyle(
            color: appState.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: videoIds.length,
          itemBuilder: (context, index) {
            final videoId = videoIds[index];
            return Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 8.0, vertical: 8.0), // Add vertical padding
              child: Container(
                width: dimension.height80,
                height: dimension.height230,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.shadowColor),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ClickableVideoContainer(videoId: videoId),
              ),
            );
          },
        ),
      ),
    );
  }
}
