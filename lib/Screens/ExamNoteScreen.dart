import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:flutter/material.dart';

class ExamNoteScreen extends StatefulWidget {
  const ExamNoteScreen({super.key});

  @override
  State<ExamNoteScreen> createState() => _DsaScreenState();
}

class _DsaScreenState extends State<ExamNoteScreen> {
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
          text: "Full Stack Courses",
        ),
      ),
      body: const Center(
        child: Text('Manav'),
      ),
    );
  }
}
