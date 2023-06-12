import 'package:codebooter_study_app/Screens/DsaScreen.dart';
import 'package:codebooter_study_app/Screens/ExamNoteScreen.dart';
import 'package:codebooter_study_app/Screens/InterviewPrepScreen.dart';
import 'package:codebooter_study_app/home/HomeScreen.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../Screens/BlogScreen.dart';
import '../Screens/CourseScreen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return Scaffold(
      body: PersistentTabView(
        context,
        navBarHeight: dimension.val60,
        screens: screens(),
        items: navBarItems(),
        navBarStyle: NavBarStyle.style9,
        backgroundColor: appColors.iconBoxColor,
        decoration: NavBarDecoration(
          // colorBehindNavBar: Colors.green,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(dimension.val20),
            topRight: Radius.circular(dimension.val20),
          ),
        ),
      ),
    );
  }
}

List<Widget> screens() {
  return [
    homeScreen(),
    BlogScreen(),
    ExamNoteScreen(),
    DsaScreen(),
    CourseScreen(),
    InterviewPrepScreen(),
  ];
}

List<PersistentBottomNavBarItem> navBarItems() {
  return [
    PersistentBottomNavBarItem(
      iconSize: dimension.val25,
      icon: const Icon(CupertinoIcons.home),
      title: ("Home"),

      activeColorPrimary: Color.fromARGB(199, 36, 36, 37),
      activeColorSecondary: Color.fromARGB(255, 8, 8, 8),
      // inactiveColorPrimary: appColors.iconColor,
    ),
    PersistentBottomNavBarItem(
      iconSize: dimension.val25,
      icon: const Icon(CupertinoIcons.pencil_ellipsis_rectangle),
      title: ("Blogs"),
      activeColorPrimary: Color.fromARGB(199, 36, 36, 37),
      activeColorSecondary: Color.fromARGB(255, 8, 8, 8),
    ),
    PersistentBottomNavBarItem(
      iconSize: dimension.val25,
      icon: const Icon(CupertinoIcons.book),
      title: ("Notes"),
      activeColorPrimary: Color.fromARGB(199, 36, 36, 37),
      activeColorSecondary: Color.fromARGB(255, 8, 8, 8),
    ),
    PersistentBottomNavBarItem(
      iconSize: dimension.val25,
      icon: const Icon(CupertinoIcons.chevron_left_slash_chevron_right),
      title: ("DSA"),
      activeColorPrimary: Color.fromARGB(199, 36, 36, 37),
      activeColorSecondary: Color.fromARGB(255, 8, 8, 8),
    ),
    PersistentBottomNavBarItem(
      iconSize: dimension.val25,
      icon: const Icon(CupertinoIcons.film),
      title: ("Courses"),
      activeColorPrimary: Color.fromARGB(199, 36, 36, 37),
      activeColorSecondary: Color.fromARGB(255, 8, 8, 8),
    ),
    PersistentBottomNavBarItem(
      iconSize: dimension.val25,
      icon: const Icon(CupertinoIcons.device_laptop), //icon for interview prep
      title: ("interviewPrep"),
      activeColorPrimary: Color.fromARGB(199, 36, 36, 37),
      activeColorSecondary: Color.fromARGB(255, 8, 8, 8),
    ),
  ];
}
