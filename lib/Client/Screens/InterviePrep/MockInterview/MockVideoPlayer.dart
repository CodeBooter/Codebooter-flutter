import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
//y

class ClickableVideoContainer extends StatefulWidget {
  final String videoId;
  final double width;
  final double height;

  ClickableVideoContainer(
      {required this.videoId, this.width = 300, this.height = 150});

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
      flags: const YoutubePlayerFlags(
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
      child: Center(
        child: Stack(children: [
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
          const Center(
            child: Icon(
              Icons.play_circle_outline,
              size: 50,
              color: Color.fromARGB(255, 18, 18, 18),
            ),
          )
        ]),
      ),
    );
  }
}
