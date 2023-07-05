import 'package:codebooter_study_app/AppState.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:codebooter_study_app/Client/Screens/courses/YoutubeFunction.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

class VideoScreen extends StatefulWidget {
  final String videoId;

  const VideoScreen({Key? key, required this.videoId}) : super(key: key);

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late YoutubePlayerController _controller;
  bool _isDescriptionExpanded = false;
  String _videoDescription = '';
  List<dynamic> _videoComments = [];
  bool _isCommentsExpanded = false;
  String _videoTitle = '';
  bool _isFullScreen = false;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: const YoutubePlayerFlags(
        // autoPlay: true,
        mute: false,
      ),
    );

    fetchVideoDescription();
    fetchVideoComments();
  }

  Future<void> fetchVideoDescription() async {
    YoutubeFunction youtubeFunction = YoutubeFunction();
    try {
      String description =
          await youtubeFunction.fetchVideoDescription(widget.videoId);
      String videoTitle = await youtubeFunction.fetchVideoTitle(widget.videoId);
      setState(() {
        _videoDescription = description;
        _videoTitle = videoTitle;
      });
    } catch (e) {
      print('Failed to fetch video description: $e');
    }
  }

  Future<void> fetchVideoComments() async {
    YoutubeFunction youtubeFunction = YoutubeFunction();
    try {
      List<dynamic> comments =
          await youtubeFunction.fetchVideoComments(widget.videoId);
      setState(() {
        _videoComments = comments;
      });
    } catch (e) {
      print('Failed to fetch video comments: $e');
    }
  }

  bool _isSkipping = false;
  double _skipDuration = 10.0; // Duration to skip in seconds

  void _skipForward() {
    _controller.seekTo(
      _controller.value.position + Duration(seconds: _skipDuration.toInt()),
    );
    _isSkipping = false;
  }

  void _skipBackward() {
    _controller.seekTo(
      _controller.value.position - Duration(seconds: _skipDuration.toInt()),
    );
    _isSkipping = false;
  }

  void _onDoubleTap(TapDownDetails details) {
    if (_isSkipping) {
      return;
    }
    _isSkipping = true;
    double screenWidth = MediaQuery.of(context).size.width;
    if (details.globalPosition.dx < screenWidth / 2) {
      // Double tap on the left side (backward)
      if (_controller.value.isPlaying) {
        _controller.pause();
        _skipBackward();
      }
    } else {
      // Double tap on the right side (forward)
      if (!_controller.value.isPlaying) {
        _controller.play();
      }
      _skipForward();
    }
  }

  // void _toggleFullScreen() {
  //   setState(() {
  //     _isFullScreen = !_isFullScreen;
  //   });
  //   if (_isFullScreen) {
  //     SystemChrome.setPreferredOrientations([
  //       DeviceOrientation.landscapeRight,
  //       DeviceOrientation.landscapeLeft,
  //     ]);
  //   } else {
  //     SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    return WillPopScope(
      onWillPop: () async {
        if (_isFullScreen) {
          // _toggleFullScreen();
          return false;
        }
        return true;
      },
      child: Scaffold(
        backgroundColor: appState.isDarkMode
            ? AppColors.primaryColor
            : AppColors.lightModePrimary,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: appState.isDarkMode
                ? AppColors.mainTextColor
                : AppColors.primaryColor,
          ),
          centerTitle: true,
          backgroundColor: appState.isDarkMode
              ? AppColors.primaryColor
              : AppColors.lightModePrimary,
          title: Text(
            _videoTitle,
            style: TextStyle(
              overflow: TextOverflow.clip,
              color: appState.isDarkMode
                  ? AppColors.mainTextColor
                  : AppColors.primaryColor,
              fontSize: dimension.font18,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
            softWrap: true,
          ),
        ),
        body: GestureDetector(
          // onTapDown: _isFullScreen ? _onDoubleTap : null,
          child: Column(
            children: [
              if (!_isFullScreen)
                YoutubePlayer(
                  bottomActions: [
                    CurrentPosition(),
                    ProgressBar(isExpanded: true),
                    RemainingDuration(),
                    const PlaybackSpeedButton(),
                    // IconButton(
                    //   onPressed: _toggleFullScreen,
                    //   icon: Icon(
                    //     _isFullScreen
                    //         ? Icons.fullscreen_exit
                    //         : Icons.fullscreen,
                    //   ),
                    // ),
                  ],
                  controller: _controller,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.red,
                  progressColors: const ProgressBarColors(
                    playedColor: Colors.red,
                    handleColor: Colors.redAccent,
                  ),
                  onReady: () {
                    // Add your custom logic when the player is ready.
                  },
                  onEnded: (data) {
                    // Add your custom logic when the video ends.
                  },
                )
              else
                Expanded(
                  child: YoutubePlayerBuilder(
                    player: YoutubePlayer(
                      controller: _controller,
                      showVideoProgressIndicator: true,
                      progressIndicatorColor: Colors.red,
                      progressColors: const ProgressBarColors(
                        playedColor: Colors.red,
                        handleColor: Colors.redAccent,
                      ),
                      onReady: () {
                        // Add your custom logic when the player is ready.
                      },
                      onEnded: (data) {
                        // Add your custom logic when the video ends.
                      },
                    ),
                    builder: (context, player) {
                      return Center(
                        child: player,
                      );
                    },
                  ),
                ),
              const SizedBox(height: 10.0),
              if (!_isFullScreen)
                Flexible(
                  child: ListView(
                    children: [
                      ExpansionPanelList(
                        elevation: 1,
                        expandedHeaderPadding: EdgeInsets.zero,
                        expansionCallback: (int index, bool isExpanded) {
                          setState(() {
                            _isDescriptionExpanded = !isExpanded;
                          });
                        },
                        children: [
                          ExpansionPanel(
                            headerBuilder:
                                (BuildContext context, bool isExpanded) {
                              return Padding(
                                padding: EdgeInsets.all(dimension.font18),
                                child: Text(
                                  'Description',
                                  style: TextStyle(
                                    fontSize: dimension.font20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              );
                            },
                            body: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _videoDescription,
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            isExpanded: _isDescriptionExpanded,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      ExpansionPanelList(
                        elevation: 1,
                        expandedHeaderPadding: EdgeInsets.zero,
                        expansionCallback: (int index, bool isExpanded) {
                          setState(() {
                            _isCommentsExpanded = !isExpanded;
                          });
                        },
                        children: [
                          ExpansionPanel(
                            headerBuilder:
                                (BuildContext context, bool isExpanded) {
                              return const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text(
                                  'Comments',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              );
                            },
                            body: Container(
                              padding: const EdgeInsets.all(16.0),
                              child: ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: _videoComments.length,
                                itemBuilder: (context, index) {
                                  final comment = _videoComments[index];
                                  final commentText = comment['snippet']
                                          ['topLevelComment']['snippet']
                                      ['textDisplay'];
                                  final authorName = comment['snippet']
                                          ['topLevelComment']['snippet']
                                      ['authorDisplayName'];
                                  final timestamp = comment['snippet']
                                          ['topLevelComment']['snippet']
                                      ['publishedAt'];
                                  final likeCount = comment['snippet']
                                          ['topLevelComment']['snippet']
                                      ['likeCount'];
                                  final formattedTimestamp =
                                      DateFormat('yyyy-MM-dd')
                                          .format(DateTime.parse(timestamp));

                                  return Column(
                                    children: [
                                      ListTile(
                                        leading: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              comment['snippet']
                                                          ['topLevelComment']
                                                      ['snippet']
                                                  ['authorProfileImageUrl']),
                                        ),
                                        title: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              authorName,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              commentText,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.thumb_up,
                                                      size: dimension.font14,
                                                      color: Colors.grey,
                                                    ),
                                                    const SizedBox(width: 5.0),
                                                    Text(
                                                      likeCount.toString(),
                                                      style: const TextStyle(
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  formattedTimestamp,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Divider(
                                        height: 1,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                            isExpanded: _isCommentsExpanded,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
