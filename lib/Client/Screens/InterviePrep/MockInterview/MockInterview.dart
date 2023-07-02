import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:codebooter_study_app/AppState.dart';
import 'package:provider/provider.dart';
import '../../../../utils/Colors.dart';
import '../../../../widgets/BigText.dart';

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
            color: appState.isDarkMode ? Colors.white : Colors.black),
        backgroundColor: appState.isDarkMode
            ? AppColors.primaryColor
            : AppColors.lightModePrimary,
        elevation: 4,
        centerTitle: true,
        title: bigText(
          text: "MockInterview Preparation",
          color: appState.isDarkMode
              ? AppColors.mainTextColor
              : const Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: videoIds.length,
          itemBuilder: (context, index) {
            final videoId = videoIds[index];
            return ClickableVideoContainer(videoId: videoId);
          },
        ),
      ),
    );
  }
}

class ClickableVideoContainer extends StatefulWidget {
  final String videoId;
  final double width;
  final double height;

  ClickableVideoContainer(
      {required this.videoId, this.width = 200, this.height = 150});

  @override
  _ClickableVideoContainerState createState() =>
      _ClickableVideoContainerState();
}

class _ClickableVideoContainerState extends State<ClickableVideoContainer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => Scaffold(
              body: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.blueAccent,
              ),
            ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(16),
        width: dimension.width260,
        height: dimension.height300,
        decoration: BoxDecoration(
          color: appState.isDarkMode
              ? AppColors.primaryColor
              : AppColors.lightModePrimary,
        ),
        child: Image.network(
          'https://img.youtube.com/vi/${widget.videoId}/0.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
