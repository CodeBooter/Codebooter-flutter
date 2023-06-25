import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<dynamic>> fetchYouTubePlaylist(
    String playlistId, String apiKey) async {
  final url =
      'https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&maxResults=50&playlistId=$playlistId&key=$apiKey';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final Map<String, dynamic> data = json.decode(response.body);
    final List<dynamic> playlistItems = data['items'];
    return playlistItems;
  } else {
    throw Exception('Failed to fetch playlist');
  }
}

Future<Map<String, dynamic>> fetchChannelDetails(
    String channelId, String apiKey) async {
  final url =
      'https://www.googleapis.com/youtube/v3/channels?part=snippet&id=$channelId&key=$apiKey';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final Map<String, dynamic> data = json.decode(response.body);
    final List<dynamic> channelItems = data['items'];
    final channelSnippet = channelItems.first['snippet'];
    return channelSnippet;
  } else {
    throw Exception('Failed to fetch channel details');
  }
}

class PlaylistScreen extends StatelessWidget {
  final String playlistId = 'PL_z_8CaSLPWeT1ffjiImo0sYTcnLzo-wY';
  final String channelId = 'TheAdityaVerma';
  final String apiKey = 'AIzaSyDAxVDNTBVlta-o1z8uLcq95Bdf79BfgTo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('YouTube Playlist'),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: fetchYouTubePlaylist(playlistId, apiKey),
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
                final videoId = item['snippet']['resourceId']['videoId'];
                final channelId = item['snippet']['channelId'];

                return FutureBuilder<Map<String, dynamic>>(
                  future: fetchChannelDetails(channelId, apiKey),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return ListTile(
                        leading: Image.network(thumbnailUrl),
                        title: Text(title),
                        subtitle: CircularProgressIndicator(),
                      );
                    } else if (snapshot.hasError) {
                      return ListTile(
                        leading: Image.network(thumbnailUrl),
                        title: Text(title),
                        subtitle: Text('Failed to fetch channel details'),
                      );
                    } else if (snapshot.hasData) {
                      final channelSnippet = snapshot.data!;
                      final channelName = channelSnippet['title'];

                      return ListTile(
                        leading: Image.network(thumbnailUrl),
                        title: Text(title),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Channel: $channelName'),
                          ],
                        ),
                      );
                    } else {
                      return ListTile(
                        leading: Image.network(thumbnailUrl),
                        title: Text(title),
                      );
                    }
                  },
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Failed to fetch playlist'));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
