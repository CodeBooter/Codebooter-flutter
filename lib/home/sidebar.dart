import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';

class sideBar extends StatefulWidget {
  const sideBar({super.key});

  @override
  State<sideBar> createState() => _sideBarState();
}

class _sideBarState extends State<sideBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      child: Icon(
        Icons.menu,
        size: 39,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: appColors.iconBoxColor,
      ),
    );
  }
}
