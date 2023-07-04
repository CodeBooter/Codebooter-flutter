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
  TextEditingController _applyLinkController = TextEditingController();
  String _deadlineText = 'Select Deadline';

  DurationOption _selectedDurationOption = DurationOption.fullTime;

  Future<void> createJob() async {
    var url =
        'https://jobinternshipapi-production.up.railway.app/api/v1/jobs/newjob';

    var jobData = {
      'title': _titleController.text,
      'imageAssest': _imageAssetController.text,
      'stipend': _stipendController.text,
      'location': _locationController.text,
      'applyLink': _applyLinkController.text,
      'duration': _selectedDurationOption == DurationOption.fullTime
          ? 'Full Time'
          : 'Internship',
      'deadline': _deadlineText,
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

        // Clear the deadline field
        setState(() {
          _deadlineText = 'Select Deadline';
        });
      } else {
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
    _applyLinkController.clear();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );

    if (selectedDate != null) {
      setState(() {
        _deadlineText = selectedDate.toString().split(' ')[0];
      });
    }
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
                  controller: _applyLinkController,
                  decoration: InputDecoration(labelText: 'Apply Link'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter apply link';
                    }
                    return null;
                  },
                ),
                Row(
                  children: [
                    Text("Duration:   "),
                    Text('Full Time'),
                    Radio<DurationOption>(
                      value: DurationOption.fullTime,
                      groupValue: _selectedDurationOption,
                      onChanged: (DurationOption? value) {
                        setState(() {
                          _selectedDurationOption = value!;
                        });
                      },
                    ),
                    Text('Internship'),
                    Radio<DurationOption>(
                      value: DurationOption.internship,
                      groupValue: _selectedDurationOption,
                      onChanged: (DurationOption? value) {
                        setState(() {
                          _selectedDurationOption = value!;
                        });
                      },
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    _selectDate(context);
                  },
                  child: InputDecorator(
                    decoration: InputDecoration(
                      labelText: 'Deadline',
                      suffixIcon: Icon(Icons.calendar_today),
                    ),
                    child: Text(
                      _deadlineText,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
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

enum DurationOption { fullTime, internship }
