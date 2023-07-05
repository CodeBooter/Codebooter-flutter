import 'package:codebooter_study_app/AppState.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AptitudeMain extends StatelessWidget {
  const AptitudeMain({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    return Scaffold(
        backgroundColor: appState.isDarkMode
            ? AppColors.primaryColor
            : AppColors.lightModePrimary,
        appBar: AppBar(
          elevation: 2,
          backgroundColor: appState.isDarkMode
              ? AppColors.primaryColor
              : AppColors.lightModePrimary,
          iconTheme: IconThemeData(
            color: appState.isDarkMode ? Colors.white : Colors.black,
          ),
          centerTitle: true,
          title: Text("Apptitude and Reasoning",
              style: TextStyle(
                  color: appState.isDarkMode ? Colors.white : Colors.black)),
        ),
        body: Column(
          children: [
            ListTile(
              title: Text("Aptitude and Reasoning"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, '/aptitude');
              },
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Aptitude and Reasoning"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, '/aptitude');
              },
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Aptitude and Reasoning"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, '/aptitude');
              },
            ),
            Divider(
              color: Colors.black,
            ),
          ],
        ));
  }
}
