// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:codebooter_study_app/AppState.dart';

//TODO remove company
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
        'https://ptg00pthu8.execute-api.ap-south-1.amazonaws.com/dev/api/v1/jobs/newjob';

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
              title: const Text('Error'),
              content: Text('Error creating job: ${response.statusCode}'),
              actions: [
                TextButton(
                  child: const Text('OK'),
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
            title: const Text('Error'),
            content: Text('Error creating job: $e'),
            actions: [
              TextButton(
                child: const Text('OK'),
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
    final appState = Provider.of<AppState>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Job'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Dimension.val15),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _titleController,
                  decoration: const InputDecoration(labelText: 'Role'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter job title';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _imageAssetController,
                  decoration: const InputDecoration(labelText: 'Image Link'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter image asset';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _stipendController,
                  decoration: const InputDecoration(labelText: 'Stipend'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter stipend';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _locationController,
                  decoration: const InputDecoration(labelText: 'Location'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter location';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _applyLinkController,
                  decoration: const InputDecoration(labelText: 'Apply Link'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter apply link';
                    }
                    return null;
                  },
                ),
                Row(
                  children: [
                    const Text("Duration:   "),
                    const Text('Full Time'),
                    Radio<DurationOption>(
                      value: DurationOption.fullTime,
                      groupValue: _selectedDurationOption,
                      onChanged: (DurationOption? value) {
                        setState(() {
                          _selectedDurationOption = value!;
                        });
                      },
                    ),
                    const Text('Internship'),
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
                    decoration: const InputDecoration(
                      labelText: 'Deadline',
                      suffixIcon: Icon(Icons.calendar_today),
                    ),
                    child: Text(
                      _deadlineText,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(height: Dimension.val20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      createJob();
                    }
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    elevation: MaterialStateProperty.all(10),
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 107, 107, 107)),
                    overlayColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 130, 180, 255)),
                  ),
                  child: Text('Post'),
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
