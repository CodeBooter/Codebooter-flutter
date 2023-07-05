import 'package:codebooter_study_app/AppState.dart';
import 'package:codebooter_study_app/Client/Screens/jobs/JobInternship.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../../utils/Colors.dart';
class JobInternshipScreen extends StatefulWidget {
  const JobInternshipScreen({super.key});

  @override
  State<JobInternshipScreen> createState() => _DsaScreenState();
}

class _DsaScreenState extends State<JobInternshipScreen> {
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    return Scaffold(
      backgroundColor: appState.isDarkMode
          ? AppColors.primaryColor
          : AppColors.lightModePrimary,
      appBar: AppBar(

        elevation: 0,
        backgroundColor: appState.isDarkMode
            ? AppColors.primaryColor
            : AppColors.lightModePrimary,
        iconTheme: IconThemeData(
          color: appState.isDarkMode ? Colors.white : Colors.black,
        ),
        toolbarHeight: dimension.val70,
        centerTitle: true,
        title: bigText(
          text: "Jobs & Internships",
          color: appState.isDarkMode ? Colors.white : Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding:
                EdgeInsets.only(left: dimension.val15, right: dimension.val15),
            child: JobInternships()),
      ),
    );
  }
}
