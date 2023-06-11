import 'package:codebooter_study_app/home/features.dart';
import 'package:codebooter_study_app/home/blog.dart';
import 'package:codebooter_study_app/utils/dimensions.dart';
import 'package:codebooter_study_app/widgets/bigText.dart';
import 'package:codebooter_study_app/widgets/smallText.dart';
import 'package:codebooter_study_app/home/sideBar.dart';

import 'package:flutter/material.dart';
import '../utils/colors.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: dimension.topPadding,
          ),
          Container(
            child: Container(
              // margin: EdgeInsets.only(top: dimension.topPadding, bottom: 20),
              padding: EdgeInsets.only(
                  left: dimension.val20, right: dimension.val20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  sideBar(), // Sidebar imported from sidebar.dart
                  bigText(
                    text: 'Home',
                    size: dimension.font24,
                  ),
                  Container(
                    width: dimension.val45,
                    height: dimension.val45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: appColors.iconBoxColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: dimension.val20),
          Column(
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
              features(),
              SizedBox(height: dimension.val20),
              blog(),
              SizedBox(height: dimension.val20),
            ],
          ),
        ],
      ),
    );
  }
}
