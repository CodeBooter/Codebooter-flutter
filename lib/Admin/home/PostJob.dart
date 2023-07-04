import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

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

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _imageAssetController = TextEditingController();
  final TextEditingController _stipendController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  // TextEditingController _companyController = TextEditingController();
  final TextEditingController _applyLinkController = TextEditingController();
  final TextEditingController _durationController = TextEditingController();
  final TextEditingController _applyByController = TextEditingController();
  final TextEditingController _deadlineController = TextEditingController();

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
              title: const Text('Success'),
              content: const Text('Job created successfully'),
              actions: [
                TextButton(
                  child: const Text('OK'),
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Job'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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

                  // controller: _companyController,
                  decoration: const InputDecoration(labelText: 'Company'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter company name';
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

                TextFormField(
                  controller: _durationController,
                  decoration: const InputDecoration(labelText: 'Duration'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter duration';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _applyByController,
                  decoration: const InputDecoration(labelText: 'Apply By'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter apply by date';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _deadlineController,
                  decoration: const InputDecoration(labelText: 'Deadline'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter deadline';
                    }
                    return null;
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
                  child: const Text('Submit'),
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
