import 'dart:convert';
import 'package:http/http.dart' as http;

class YoutubeFunction {
  final String apiKey = 'AIzaSyDAxVDNTBVlta-o1z8uLcq95Bdf79BfgTo';
  Future<List<dynamic>> fetchYouTubePlaylist(
      String playlistId, String apiKey) async {
    final url =
        'https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&maxResults=50&playlistId=$playlistId&key=$apiKey';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      if (data.containsKey('items')) {
        final List<dynamic> playlistItems = data['items'];
        return playlistItems;
      } else {
        print('No "items" key found in the response data.');
      }
    } else {
      print('Request failed with status code: ${response.statusCode}');
    }

    throw Exception('Failed to fetch playlist');
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

  String formatNumber(String numberString) {
    if (numberString.endsWith('k')) {
      double? number =
          double.tryParse(numberString.substring(0, numberString.length - 1));
      if (number != null) {
        int expandedNumber = (number * 1000).toInt();
        return expandedNumber.toString();
      }
    } else if (numberString.endsWith('M')) {
      double? number =
          double.tryParse(numberString.substring(0, numberString.length - 1));
      if (number != null) {
        int expandedNumber = (number * 1000000).toInt();
        return expandedNumber.toString();
      }
    } else {
      int? number = int.tryParse(numberString);
      if (number != null) {
        if (number >= 1000 && number < 1000000) {
          return '${(number / 1000).toStringAsFixed(1)}k';
        } else if (number >= 1000000) {
          return '${(number / 1000000).toStringAsFixed(1)}M';
        }
      }
    }
    return numberString;
  }

  Future<String> fetchVideoDescription(String videoId) async {
    final url =
        'https://www.googleapis.com/youtube/v3/videos?part=snippet&id=$videoId&key=$apiKey';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> videoItems = data['items'];
      final videoSnippet = videoItems.first['snippet'];
      final String description = videoSnippet['description'];
      return description;
    } else {
      throw Exception('Failed to fetch video description');
    }
  }

  Future<String> fetchVideoTitle(String videoId) async {
    final url =
        'https://www.googleapis.com/youtube/v3/videos?part=snippet&id=$videoId&key=$apiKey';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> videoItems = data['items'];
      final videoSnippet = videoItems.first['snippet'];
      final String title = videoSnippet['title'];
      return title;
    } else {
      throw Exception('Failed to fetch video title');
    }
  }

  Future<List<dynamic>> fetchVideoComments(String videoId) async {
    final url =
        'https://www.googleapis.com/youtube/v3/commentThreads?part=snippet&videoId=$videoId&key=$apiKey';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      if (data.containsKey('items')) {
        final List<dynamic> comments = data['items'];
        return comments;
      } else {
        print('No "items" key found in the response data.');
      }
    } else {
      print('Request failed with status code: ${response.statusCode}');
    }

    throw Exception('Failed to fetch video comments');
  }

  Future<Map<String, dynamic>> fetchVideoStatistics(
      String videoId, String apiKey) async {
    final url =
        'https://www.googleapis.com/youtube/v3/videos?part=statistics&id=$videoId&key=$apiKey';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> videoItems = data['items'];
      final videoStatistics = videoItems.first['statistics'];
      return videoStatistics;
    } else {
      throw Exception('Failed to fetch video statistics');
    }
  }
}
