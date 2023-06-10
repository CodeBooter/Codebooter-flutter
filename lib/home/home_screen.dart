import 'package:codebooter_study_app/home/features.dart';
import 'package:codebooter_study_app/widgets/bigText.dart';
import 'package:codebooter_study_app/widgets/smallText.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';
import 'sidebar.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  List<bool> isTappedList = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 70, bottom: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  sideBar(), // Sidebar imported from sidebar.dart
                  bigText(
                    text: 'Home',
                    size: 24,
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: appColors.iconBoxColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 85, right: 45),
            child: Column(children: [
              bigText(
                text: "Welcome to CodeBooter👋",
                fontWeight: FontWeight.w400,
              ),
              smallText(
                text: "Boot your life to code🚀",
                size: 16,
              ),
            ]),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 20, // Increase the padding from the left
              top: 20,
              bottom: 20,
            ),
            child: bigText(
              text: "Features",
              size: 24,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            //for tommorow
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isTappedList[0] = !isTappedList[0];
                    });
                  },
                  child: Container(
                    width: 180,
                    height: 132,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: isTappedList[0]
                          ? Colors.blue
                          : appColors.iconBoxColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isTappedList[1] = !isTappedList[1];
                    });
                  },
                  child: Container(
                    width: 180,
                    height: 132,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: isTappedList[1]
                          ? Colors.blue
                          : appColors.iconBoxColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isTappedList[2] = !isTappedList[2];
                    });
                  },
                  child: Container(
                    width: 180,
                    height: 132,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: isTappedList[2]
                          ? Colors.blue
                          : appColors.iconBoxColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isTappedList[3] = !isTappedList[3];
                    });
                  },
                  child: Container(
                    width: 180,
                    height: 132,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: isTappedList[3]
                          ? Colors.blue
                          : appColors.iconBoxColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
