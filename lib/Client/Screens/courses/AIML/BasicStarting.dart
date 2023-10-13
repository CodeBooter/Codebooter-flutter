import 'package:codebooter_study_app/Client/Screens/courses/VideoPlayer.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import the SystemChrome class
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../../../utils/Colors.dart';
import '../YoutubeFunction.dart';
import 'package:provider/provider.dart';
import 'package:codebooter_study_app/AppState.dart';

class BasicStarting extends StatelessWidget {
  const BasicStarting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    const String playlistId = 'PLkAvdJp-JK5Pc5H23CzKNFZ2LPsJd12j6';
    YoutubeFunction youtubeFunction = YoutubeFunction();
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
          'Basics',
          style: TextStyle(
            color: appState.isDarkMode
                ? AppColors.lightModePrimary
                : AppColors.primaryColor,
          ),
        ),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: youtubeFunction.fetchYouTubePlaylist(
            playlistId, youtubeFunction.apiKey),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final playlistItems = snapshot.data!;
            return ListView.builder(
              itemCount: playlistItems.length,
              itemBuilder: (context, index) {
                final item = playlistItems[index];
                final title = item['snippet']['title'];
                final thumbnailUrl =
                    item['snippet']['thumbnails']['default']['url'];

                final channelId = item['snippet']['channelId'];
                final videoId = item['snippet']['resourceId']['videoId'];

                return FutureBuilder<Map<String, dynamic>>(
                  future: youtubeFunction.fetchChannelDetails(
                      channelId, youtubeFunction.apiKey),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return buildListTile(
                        thumbnailUrl: thumbnailUrl,
                        title: title,
                        subtitle: const Text('Loading...'),
                      );
                    } else if (snapshot.hasError) {
                      return buildListTile(
                        thumbnailUrl: thumbnailUrl,
                        title: title,
                        subtitle: const Text('Failed to fetch channel details'),
                      );
                    } else if (snapshot.hasData) {
                      final channelSnippet = snapshot.data!;
                      final channelName = channelSnippet['title'];

                      return InkWell(
                        onTap: () {
                          // Disable landscape mode when entering full-screen
                          SystemChrome.setPreferredOrientations([
                            DeviceOrientation.portraitUp,
                          ]);

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  VideoScreen(videoId: videoId),
                            ),
                          );
                        },
                        child: buildListTile(
                          thumbnailUrl: thumbnailUrl,
                          title: title,
                          subtitle: FutureBuilder<Map<String, dynamic>>(
                            future: youtubeFunction.fetchVideoStatistics(
                                videoId, youtubeFunction.apiKey),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Text('Loading...');
                              } else if (snapshot.hasError) {
                                return const Text(
                                    'Failed to fetch video statistics');
                              } else if (snapshot.hasData) {
                                final videoStats = snapshot.data!;
                                final likeCount = youtubeFunction
                                    .formatNumber(videoStats['likeCount']);
                                final viewCount = youtubeFunction
                                    .formatNumber(videoStats['viewCount']);

                                return Row(
                                  children: [
                                    Text(' $channelName'),
                                    SizedBox(width: Dimension.val10),
                                    Icon(
                                      Icons.thumb_up_alt_outlined,
                                      size: Dimension.font14,
                                    ),
                                    Text(
                                      '$likeCount',
                                      style:
                                          TextStyle(fontSize: Dimension.font14),
                                    ),
                                    SizedBox(width: Dimension.val10),
                                    Icon(
                                      Icons.remove_red_eye_outlined,
                                      size: Dimension.font14,
                                    ),
                                    Text(
                                      ' $viewCount',
                                      style:
                                          TextStyle(fontSize: Dimension.font14),
                                    ),
                                  ],
                                );
                              } else {
                                return const Text('');
                              }
                            },
                          ),
                        ),
                      );
                    } else {
                      return InkWell(
                        onTap: () {
                          // Disable landscape mode when entering full-screen
                          SystemChrome.setPreferredOrientations([
                            DeviceOrientation.portraitUp,
                          ]);

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  VideoScreen(videoId: videoId),
                            ),
                          );
                        },
                        child: buildListTile(
                          thumbnailUrl: thumbnailUrl,
                          title: title,
                        ),
                      );
                    }
                  },
                );
              },
            );
          } else if (snapshot.hasError) {
            return const Center(child: Text('Failed to fetch playlist'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

class VideoScreen extends StatefulWidget {
  final String videoId;

  VideoScreen({required this.videoId});

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        // Use this option to enable full-screen when the video starts
        isLive: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Customize the AppBar for full-screen video mode if needed
        title: Text('Video Player'),
        // Add a back button to return to portrait mode
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Re-enable landscape mode when returning to the list view
            SystemChrome.setPreferredOrientations([
              DeviceOrientation.portraitUp,
              DeviceOrientation.landscapeLeft,
              DeviceOrientation.landscapeRight,
            ]);

            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.blueAccent,
          onReady: () {
            // You can handle video ready event here
          },
          onEnded: (data) {
            // You can handle video ended event here
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

Widget buildListTile({
  required String thumbnailUrl,
  required String title,
  Widget? subtitle,
  int? likeCount,
}) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(Dimension.val5),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimension.val5),
        border: Border.all(color: AppColors.shadowColor),
      ),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(Dimension.val5),
          child: Image.network(
            thumbnailUrl,
            fit: BoxFit.cover,
            width: Dimension.width100,
            height: Dimension.val60,
          ),
        ),
        title: Text(title),
        subtitle: subtitle,
      ),
    ),
  );
}
