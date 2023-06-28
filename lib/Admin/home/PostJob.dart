import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class PostJob extends StatefulWidget {
  @override
  _PostJobState createState() => _PostJobState();
}

class _PostJobState extends State<PostJob> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _titleController = TextEditingController();
  TextEditingController _imageAssetController = TextEditingController();
  TextEditingController _stipendController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  TextEditingController _companyController = TextEditingController();
  TextEditingController _applyLinkController = TextEditingController();
  TextEditingController _durationController = TextEditingController();
  TextEditingController _applyByController = TextEditingController();
  TextEditingController _deadlineController = TextEditingController();

  Future<void> createJob() async {
    var url =
        'https://jobinternshipapi-production.up.railway.app/api/v1/jobs/newjob'; // Replace with your API endpoint URL

    var jobData = {
      'title': _titleController.text,
      'imageAssest': _imageAssetController.text,
      'stipend': _stipendController.text,
      'location': _locationController.text,
      'company': _companyController.text,
      'applyLink': _applyLinkController.text,
      'duration': _durationController.text,
      'applyBy': _applyByController.text,
      'deadline': _deadlineController.text,
    };

    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode(jobData);

    try {
      var response = await http.post(
        Uri.parse(url),
        headers: headers,
        body: body,
      );

      if (response.statusCode == 201) {
        // Job created successfully
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Success'),
              content: Text('Job created successfully'),
              actions: [
                TextButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                    clearFields();
                  },
                ),
              ],
            );
          },
        );
      } else {
        // Handle error
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Error'),
              content: Text('Error creating job: ${response.statusCode}'),
              actions: [
                TextButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    } catch (e) {
      // Handle error
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Error creating job: $e'),
            actions: [
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  void clearFields() {
    _titleController.clear();
    _imageAssetController.clear();
    _stipendController.clear();
    _locationController.clear();
    _companyController.clear();
    _applyLinkController.clear();
    _durationController.clear();
    _applyByController.clear();
    _deadlineController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Job'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _titleController,
                  decoration: InputDecoration(labelText: 'Role'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter job title';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _imageAssetController,
                  decoration: InputDecoration(labelText: 'Image Link'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter image asset';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _stipendController,
                  decoration: InputDecoration(labelText: 'Stipend'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter stipend';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _locationController,
                  decoration: InputDecoration(labelText: 'Location'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter location';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _companyController,
                  decoration: InputDecoration(labelText: 'Company'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter company name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _applyLinkController,
                  decoration: InputDecoration(labelText: 'Apply Link'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter apply link';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _durationController,
                  decoration: InputDecoration(labelText: 'Duration'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter duration';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _applyByController,
                  decoration: InputDecoration(labelText: 'Apply By'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter apply by date';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _deadlineController,
                  decoration: InputDecoration(labelText: 'Deadline'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter deadline';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      createJob();
                    }
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
