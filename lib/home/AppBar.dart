import 'package:flutter/material.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';

import 'SideBar.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _AppBarState();
}

class _AppBarState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        // margin: EdgeInsets.only(top: dimension.topPadding, bottom: 20),
        padding: EdgeInsets.only(left: dimension.val20, right: dimension.val20),
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
    );
  }
}
