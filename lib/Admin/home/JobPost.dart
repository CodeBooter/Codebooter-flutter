import 'package:codebooter_study_app/Admin/home/JobForm.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class JobPost extends StatefulWidget {
  const JobPost({super.key});

  @override
  State<JobPost> createState() => _DsaScreenState();
}

class _DsaScreenState extends State<JobPost> {
  postRequest() async {
    var response = await http.post(
      Uri.parse('http://localhost:4001/api/v1/jobs/newjob'),
      body: {
        "title": "test from flutter",
        "description":
            "We are looking for a skilled software developer to join our team.",
        "salary": 5000.toString(),
        "location": "New York",
        "company": "ABC Inc.",
        "applylink": "https://example.com/apply",
        "skills": ["JavaScript", "Node.js", "MongoDB"],
        "type": "Full-time",
        "image": "https://example.com/image.jpg",
        "deadline": "2023-07-01"
      },
    );

    print('Response status: ${response.statusCode}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          toolbarHeight: dimension.val70,
          centerTitle: true,
          title: bigText(
            text: "Post Job internship",
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  postRequest();
                },
                child: const Text('Post Job'),
              ),
            ],
          ),
        ));
  }
}
