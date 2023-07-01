import 'package:codebooter_study_app/AppState.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class HR extends StatelessWidget {
  const HR();

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: appState.isDarkMode ? Colors.white : Colors.black,
        ),
        centerTitle: true,
        backgroundColor:
            appState.isDarkMode ? AppColors.primaryColor : Colors.white,
        title: Text(
          'HR Preparation',
          style: TextStyle(
              color: appState.isDarkMode ? Colors.white : Colors.black),
        ),
      ),
      body: SfPdfViewer.network(
        'https://raw.githubusercontent.com/codebooter-projects/Pdfs/d4e276552489312799f33cf918baf33cf9158a8f/hr_compressed.pdf', // Replace with the path to your PDF file
      ),
    );
  }
}
