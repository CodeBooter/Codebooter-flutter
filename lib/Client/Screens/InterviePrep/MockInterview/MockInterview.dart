import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'MockInterview Preparation',
          style: TextStyle(
            color: Colors.black,
          ),
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
        width: widget.width,
        height: widget.height,
        child: Image.network(
          'https://img.youtube.com/vi/${widget.videoId}/0.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
