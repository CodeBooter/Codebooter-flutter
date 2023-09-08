import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import SystemChrome
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../courses/YoutubeFunction.dart';


class ClickableVideoContainer extends StatefulWidget {
  final String videoId;
  final double width;
  final double height;

  ClickableVideoContainer({
    required this.videoId,
    this.width = 300,
    this.height = 150,
  });

  @override
  _ClickableVideoContainerState createState() =>
      _ClickableVideoContainerState();
}

class _ClickableVideoContainerState extends State<ClickableVideoContainer> {
  late YoutubePlayerController _controller;
  String _videoTitle = '';
  bool isFullScreen = false;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
  }

  Future<void> fetchVideoTitle() async {
    YoutubeFunction youtubeFunction = YoutubeFunction();
    try {
      String videoTitle = await youtubeFunction.fetchVideoTitle(widget.videoId);
      setState(() {
        _videoTitle = videoTitle;
      });
    } catch (e) {
      print('Failed to fetch video title: $e');
    }
  }

  void _enterFullScreen() {
    setState(() {
      isFullScreen = true;
    });
  }

  void _exitFullScreen() {
    setState(() {
      isFullScreen = false;
    });
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
        if (isFullScreen) {
          _exitFullScreen();
          Navigator.pop(context);
        } else {
          _enterFullScreen();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => FullScreenVideoView(
                controller: _controller,
                videoTitle: _videoTitle,
                exitFullScreen: _exitFullScreen,
              ),
            ),
          );
        }
      },
      child: Center(
        child: Stack(
          children: [
            Center(
              child: Container(
                width: dimension.screenWidth * 0.9,
                height: dimension.height200,
                child: Image.network(
                  'https://img.youtube.com/vi/${widget.videoId}/0.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            isFullScreen
                ? Container() // Empty container to hide play icon in full-screen mode
                : const Center(
              child: Icon(
                Icons.play_circle_outline,
                size: 50,
                color: Color.fromARGB(255, 18, 18, 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FullScreenVideoView extends StatelessWidget {
  final YoutubePlayerController controller;
  final String videoTitle;
  final VoidCallback exitFullScreen;

  FullScreenVideoView({
    required this.controller,
    required this.videoTitle,
    required this.exitFullScreen,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Before popping, set the preferred orientation to portrait
        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

        // Exit full-screen mode and pop the route
        exitFullScreen();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(videoTitle),
          actions: [
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: exitFullScreen,
            ),
          ],
        ),
        body: Center(
          child: YoutubePlayer(
            controller: controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}
