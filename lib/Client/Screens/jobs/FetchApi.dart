import 'package:codebooter_study_app/Client/Screens/jobs/JobModel.dart';
import 'package:http/http.dart';
import 'dart:convert';

class FetchJobApi {
  String endpoint =
      "https://jobinternshipapi-production.up.railway.app/api/v1/jobs";
  Future<List<JobModel>> getJobs() async {
    Response response = await get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['jobs'];
      return result.map(((e) => JobModel.fromJson(e))).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
