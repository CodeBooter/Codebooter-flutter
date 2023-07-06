import 'package:codebooter_study_app/Client/Screens/courses/VideoPlayer.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../utils/Colors.dart';
import '../YoutubeFunction.dart';
import 'package:codebooter_study_app/AppState.dart';
class DataScience extends StatelessWidget {
  const DataScience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    const String playlistId = 'PLeo1K3hjS3us_ELKYSj_Fth2tIEkdKXvV';
    YoutubeFunction youtubeFunction = YoutubeFunction();
    return Scaffold(
      appBar: AppBar(
        iconTheme:  IconThemeData(color: appState.isDarkMode
        ? AppColors.lightModePrimary
            : AppColors.primaryColor,),
        centerTitle: true,
        backgroundColor: appState.isDarkMode
            ? AppColors.primaryColor
            : AppColors.lightModePrimary,
        title:  Text(
          'Data Science',
          style: TextStyle(color: appState.isDarkMode
          ? AppColors.lightModePrimary
              : AppColors.primaryColor,),
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
                                     SizedBox(width: dimension.val10),
                                    Icon(
                                      Icons.thumb_up_alt_outlined,
                                      size: dimension.font14,
                                    ),
                                    Text(
                                      likeCount,
                                      style:
                                          TextStyle(fontSize: dimension.font14),
                                    ),
                                     SizedBox(width: dimension.val10),
                                    Icon(
                                      Icons.remove_red_eye_outlined,
                                      size: dimension.font14,
                                    ),
                                    Text(
                                      ' $viewCount',
                                      style:
                                          TextStyle(fontSize: dimension.font14),
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
  required String thumbnailUrl,
  required String title,
  Widget? subtitle,
  int? likeCount,
}) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(dimension.val5),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(dimension.val5),
        border: Border.all(color: AppColors.shadowColor)
      ),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(dimension.val5),
          child: Image.network(
            thumbnailUrl,
            fit: BoxFit.cover,
            width: dimension.width100,
            height: dimension.val60,
          ),
        ),
        title: Text(title),
        subtitle: subtitle,
      ),
    ),
  );
}
