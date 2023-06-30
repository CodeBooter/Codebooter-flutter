import 'package:codebooter_study_app/Client/Screens/jobs/JobInternship.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:flutter/material.dart';

class JobInternshipScreen extends StatefulWidget {
  const JobInternshipScreen({super.key});

  @override
  State<JobInternshipScreen> createState() => _DsaScreenState();
}

class _DsaScreenState extends State<JobInternshipScreen> {
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
          text: "Jobs & Internships",
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(dimension.font12), child: JobInternships()),
    );
  }
}
