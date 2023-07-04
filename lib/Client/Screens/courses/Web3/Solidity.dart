import 'package:codebooter_study_app/Client/Screens/courses/VideoPlayer.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:flutter/material.dart';

import '../YoutubeFunction.dart';

class Solidity extends StatelessWidget {
  const Solidity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String playlistId = 'PLgPmWS2dQHW9u6IXZq5t5GMQTpW7JL33i';
    YoutubeFunction youtubeFunction = YoutubeFunction();
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Solidity',
          style: TextStyle(color: Colors.black),
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
                                    const SizedBox(width: 8),
                                    Icon(
                                      Icons.thumb_up_alt_outlined,
                                      size: dimension.font14,
                                    ),
                                    Text(
                                      '$likeCount',
                                      style:
                                          TextStyle(fontSize: dimension.font14),
                                    ),
                                    const SizedBox(width: 8),
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
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(dimension.val5),
          child: Image.network(
            thumbnailUrl,
            fit: BoxFit.cover,
            width: dimension.width100,
            height: 56,
          ),
        ),
        title: Text(title),
        subtitle: subtitle,
      ),
    ),
  );
}
