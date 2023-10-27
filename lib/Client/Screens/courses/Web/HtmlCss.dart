import 'package:codebooter_study_app/AppState.dart';
import 'package:codebooter_study_app/Client/Screens/courses/VideoPlayer.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../YoutubeFunction.dart';

class HtmlCss extends StatelessWidget {
  final BuildContext context;
  const HtmlCss({Key? key, required this.context}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    const String playlistId = 'PL4cUxeGkcC9ivBf_eKCPIAYXWzLlPAm6G';
    YoutubeFunction youtubeFunction = YoutubeFunction();
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: appState.isDarkMode
              ? AppColors.mainTextColor
              : const Color.fromARGB(255, 0, 0, 0),
        ),
        centerTitle: true,
        backgroundColor: appState.isDarkMode
            ? AppColors.primaryColor
            : AppColors.lightModePrimary,
        title: Text(
          'HTML CSS',
          style: TextStyle(
            color: appState.isDarkMode
                ? AppColors.mainTextColor
                : const Color.fromARGB(255, 0, 0, 0),
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
                        context: context,
                        thumbnailUrl: thumbnailUrl,
                        title: title,
                        subtitle: Text(
                          'Loading...',
                          style: TextStyle(
                            color: appState.isDarkMode
                                ? AppColors.mainTextColor
                                : const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return buildListTile(
                        context: context,
                        thumbnailUrl: thumbnailUrl,
                        title: title,
                        subtitle: const Text('Failed to fetch channel details'),
                      );
                    } else if (snapshot.hasData) {
                      final channelSnippet = snapshot.data!;
                      final channelName = channelSnippet['title'];

                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  VideoScreen(videoId: videoId),
                            ),
                          );
                        },
                        child: buildListTile(
                          context: context,
                          thumbnailUrl: thumbnailUrl,
                          title: title,
                          subtitle: FutureBuilder<Map<String, dynamic>>(
                            future: youtubeFunction.fetchVideoStatistics(
                                videoId, youtubeFunction.apiKey),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return Text('Loading...',
                                    style: TextStyle(
                                      color: appState.isDarkMode
                                          ? AppColors.mainTextColor
                                          : const Color.fromARGB(255, 0, 0, 0),
                                    ));
                              } else if (snapshot.hasError) {
                                return Text('Failed to fetch video statistics',
                                    style: TextStyle(
                                      color: appState.isDarkMode
                                          ? AppColors.mainTextColor
                                          : const Color.fromARGB(255, 0, 0, 0),
                                    ));
                              } else if (snapshot.hasData) {
                                final videoStats = snapshot.data!;
                                final likeCount = youtubeFunction
                                    .formatNumber(videoStats['likeCount']);
                                final viewCount = youtubeFunction
                                    .formatNumber(videoStats['viewCount']);

                                return Row(
                                  children: [
                                    Text(' $channelName',
                                        style: TextStyle(
                                          color: appState.isDarkMode
                                              ? AppColors.mainTextColor
                                              : const Color.fromARGB(
                                                  255, 0, 0, 0),
                                        )),
                                    SizedBox(width: Dimension.font12),
                                    Icon(
                                      Icons.thumb_up_alt_outlined,
                                      size: Dimension.font14,
                                    ),
                                    Text(
                                      '$likeCount',
                                      style: TextStyle(
                                        fontSize: Dimension.font14,
                                        color: appState.isDarkMode
                                            ? AppColors.mainTextColor
                                            : const Color.fromARGB(
                                                255, 0, 0, 0),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Icon(
                                      Icons.remove_red_eye_outlined,
                                      color: appState.isDarkMode
                                          ? AppColors.mainTextColor
                                          : const Color.fromARGB(255, 0, 0, 0),
                                      size: Dimension.font14,
                                    ),
                                    Text(
                                      ' $viewCount',
                                      style: TextStyle(
                                        fontSize: Dimension.font14,
                                        color: appState.isDarkMode
                                            ? AppColors.mainTextColor
                                            : const Color.fromARGB(
                                                255, 0, 0, 0),
                                      ),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  VideoScreen(videoId: videoId),
                            ),
                          );
                        },
                        child: buildListTile(
                          context: context,
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

Widget buildListTile({
  required BuildContext context,
  required String thumbnailUrl,
  required String title,
  Widget? subtitle,
  int? likeCount,
}) {
  final appState = Provider.of<AppState>(context);
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(Dimension.val5),
    ),
    child: Container(
      decoration: BoxDecoration(
          color: appState.isDarkMode
              ? AppColors.primaryColor
              : AppColors.lightModePrimary,
          borderRadius: BorderRadius.circular(Dimension.val5),
          border: Border.all(color: AppColors.shadowColor)),
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
