import 'package:flutter/material.dart';

class ExamNoteScreen extends StatefulWidget {
  const ExamNoteScreen({super.key});

  @override
  State<ExamNoteScreen> createState() => _ExamNoteScreenState();
}

class _ExamNoteScreenState extends State<ExamNoteScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Text("ExamNoteScreen"),
    );
  }
}
