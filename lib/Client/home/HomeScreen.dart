import 'package:codebooter_study_app/AppState.dart';
import 'package:codebooter_study_app/Client/home/Features.dart';
import 'package:codebooter_study_app/Client/home/animatedScreen.dart';
import 'package:codebooter_study_app/Client/Screens/jobs/JobInternship.dart';
import 'package:codebooter_study_app/utils/Colors.dart';

import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    return Scaffold(
      backgroundColor: appState.isDarkMode
          ? AppColors.primaryColor
          : AppColors.lightModePrimary,
      drawer: AnimatedDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: appState.isDarkMode ? Colors.white : Colors.black),
        backgroundColor: appState.isDarkMode
            ? AppColors.primaryColor
            : AppColors.lightModePrimary,
        elevation: 4,
        centerTitle: true,
        title: bigText(
          text: "Home",
          color: appState.isDarkMode
              ? AppColors.mainTextColor
              : const Color.fromARGB(255, 0, 0, 0),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                appState.toggleDarkMode();
              });
            },
            icon: appState.isDarkMode
                ? const Icon(Icons.light_mode)
                : const Icon(Icons.dark_mode),
            color: appState.isDarkMode
                ? AppColors.mainTextColor
                : const Color.fromARGB(255, 0, 0, 0),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: dimension.val20,
                  ),
                  const Features(),
                  Padding(
                    padding: EdgeInsets.only(
                      left: dimension.val20,
                      right: dimension.val20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Job & Internships",
                          style: TextStyle(
                            color: appState.isDarkMode
                                ? AppColors.mainTextColor
                                : const Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'poppins',
                            fontSize: dimension.font20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextButton(
                          onPressed: () => context.go('/jobinternship'),
                          child: Text(
                            "View All",
                            style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: dimension.font16,
                              fontWeight: FontWeight.w400,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const JobInternships(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
