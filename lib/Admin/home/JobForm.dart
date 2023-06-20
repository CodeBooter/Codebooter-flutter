import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class JobForm extends StatefulWidget {
  @override
  _JobFormState createState() => _JobFormState();
}

class _JobFormState extends State<JobForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController salaryController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController companyController = TextEditingController();
  TextEditingController applyLinkController = TextEditingController();
  TextEditingController skillsController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  TextEditingController deadlineController = TextEditingController();

  void submitForm() {
    if (_formKey.currentState!.validate()) {
      // Create a new job object
      Map<String, dynamic> job = {
        'title': titleController.text,
        'description': descriptionController.text,
        'salary': double.parse(salaryController.text),
        'location': locationController.text,
        'company': companyController.text,
        'applylink': applyLinkController.text,
        'skills': skillsController.text
            .split(',')
            .map((skill) => skill.trim())
            .toList(),
        'type': typeController.text,
        'image': imageController.text,
        'deadline': deadlineController.text,
      };

      // Send a POST request to your server to save the job
      saveJob(job);
    }
  }

  Future<void> saveJob(Map<String, dynamic> job) async {
    try {
      // Replace 'your-server-url' with your actual server URL
      Uri url = Uri.parse('http://localhost:4001/api/v1/jobs/newjob');
      final response = await http.post(
        url,
        body: jsonEncode(job),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        // Job saved successfully
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Success'),
              content: Text('Job saved successfully!'),
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
      } else {
        throw Exception('Failed to save job');
      }
    } catch (error) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('An error occurred while saving the job.'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Job Form'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: titleController,
                decoration: InputDecoration(labelText: 'Title'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the job title';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: descriptionController,
                decoration: InputDecoration(labelText: 'Description'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the job description';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: salaryController,
                decoration: InputDecoration(labelText: 'Salary'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the salary';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: locationController,
                decoration: InputDecoration(labelText: 'Location'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the job location';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: companyController,
                decoration: InputDecoration(labelText: 'Company'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the company name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: applyLinkController,
                decoration: InputDecoration(labelText: 'Apply Link'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the apply link';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: skillsController,
                decoration:
                    InputDecoration(labelText: 'Skills (comma-separated)'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the skills';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: typeController,
                decoration: InputDecoration(labelText: 'Type'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the job type';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: imageController,
                decoration: InputDecoration(labelText: 'Image URL'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the image URL';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: deadlineController,
                decoration: InputDecoration(labelText: 'Deadline (YYYY-MM-DD)'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the deadline';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                child: Text('Post'),
                onPressed: submitForm,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
