import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:codebooter_study_app/utils/dimensions.dart';
import '../utils/colors.dart';

class sideBar extends StatefulWidget {
  const sideBar({super.key});

  @override
  State<sideBar> createState() => _sideBarState();
}

class _sideBarState extends State<sideBar> {
  bool isSidebarOpen = false; // Flag to track sidebar state

  void toggleSidebar() {
    setState(() {
      isSidebarOpen = !isSidebarOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // sidebar open
        toggleSidebar();
        // sidebar clo
      },
      child: Container(
        width: dimension.val45,
        height: dimension.val45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: appColors.iconBoxColor,
        ),
        child: Icon(
          isSidebarOpen
              ? Icons.close
              : Icons.menu, // Change icon based on sidebar state
          color: Colors.white,
        ),
      ),
    );
  }
}
