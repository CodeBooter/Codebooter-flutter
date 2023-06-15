import 'package:codebooter_study_app/home/Features.dart';
import 'package:codebooter_study_app/home/SideBar.dart';
import 'package:codebooter_study_app/home/blog.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../widgets/SmallText.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _Page1ScreenState();
}

class _Page1ScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: sideBar(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: const Color.fromARGB(255, 19, 16, 16)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: bigText(text: "Home", color: const Color.fromARGB(255, 0, 0, 0)),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.bookmark),
            tooltip: 'Go to the next page',
            onPressed: () => context.go('/fs'),
          ),
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Column(children: [
                    SizedBox(height: dimension.val20),
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
                SizedBox(
                  height: dimension.val20,
                ),
                blog(),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
