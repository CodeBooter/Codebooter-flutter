import 'package:codebooter_study_app/home/AppBar.dart';
import 'package:codebooter_study_app/home/Features.dart';
import 'package:codebooter_study_app/home/NavBar.dart';
import 'package:codebooter_study_app/home/blog.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:codebooter_study_app/widgets/SmallText.dart';

import 'package:flutter/material.dart';
import '../utils/Colors.dart';

class homeScreen extends StatefulWidget {
  homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 250, 228),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: dimension.topPadding,
          ),

          SizedBox(height: dimension.val20),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Column(children: [
                      bigText(
                        text: "Welcome to CodeBooter👋",
                        size: dimension.font20,
                        fontWeight: FontWeight.w400,
                      ),
                      smallText(
                        text: "Boot your life to code🚀",
                        size: dimension.font16,
                      ),
                    ]),
                  ),
                  SizedBox(height: dimension.val20),

                  features(), // Features imported from features.dart
                  SizedBox(height: dimension.val20),
                  blog(), // Blog imported from blog.dart
                ],
              ),
            ),
            //navigation bar
          ),
        ],
      ),
    );
  }
}
