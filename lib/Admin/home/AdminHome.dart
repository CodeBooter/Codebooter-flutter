import 'package:codebooter_study_app/Admin/home/ToDo.dart';
import 'package:codebooter_study_app/Admin/mongoDB/MongoDbConnect.dart';
import 'package:codebooter_study_app/Client/home/Features.dart';

import 'package:codebooter_study_app/Client/home/animatedScreen.dart';
import 'package:codebooter_study_app/Client/home/blog.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:codebooter_study_app/widgets/SmallText.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({super.key});

  @override
  State<AdminHomePage> createState() => _Page1ScreenState();
}

class _Page1ScreenState extends State<AdminHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: const Color.fromARGB(255, 19, 16, 16)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: bigText(
            text: "Admin Home", color: const Color.fromARGB(255, 0, 0, 0)),
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
            onPressed: () => context.go('/saveditems'),
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
                const ToDo(),
                SizedBox(
                  height: dimension.val20,
                ),

                // logout
                ElevatedButton(
                    onPressed: () {
                      logout();
                      context.go('/admin');
                    },
                    child: const Text('Logout',
                        style: TextStyle(color: Colors.white)),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 0, 0, 0)))),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
