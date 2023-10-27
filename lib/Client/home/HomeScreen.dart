import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:codebooter_study_app/AppState.dart';
import 'package:codebooter_study_app/Client/home/Features.dart';
import 'package:codebooter_study_app/Client/home/animatedScreen.dart';
import 'package:codebooter_study_app/Client/Screens/jobs/JobInternship.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isRefreshing = false;

  Future<void> _refreshData(BuildContext context) async {
    // Perform your refresh logic here
    // For example, you can fetch new data from an API

    // Simulating a delay of 2 seconds
    await Future.delayed(const Duration(seconds: 2));

    // Set isRefreshing to false to stop the refresh indicator
    setState(() {
      isRefreshing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    return SafeArea(
      child: Scaffold(
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
        body: RefreshIndicator(
          onRefresh: () => _refreshData(context),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: Dimension.val20,
                ),
                const Features(),
                Padding(
                  padding: EdgeInsets.only(
                    left: Dimension.val20,
                    right: Dimension.val20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Job & Internships",
                        style: TextStyle(
                          color: appState.isDarkMode
                              ? AppColors.mainTextColor
                              : Colors.black,
                          fontFamily: 'poppins',
                          fontSize: Dimension.font20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextButton(
                        onPressed: () => context.go('/jobinternship'),
                        child: Text(
                          "View All",
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: Dimension.font16,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const JobInternships(value: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () => context.go('/jobinternship'),
                      child: Text(
                        "Show More",
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: dimension.font16,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.blue,size: dimension.font16,)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
