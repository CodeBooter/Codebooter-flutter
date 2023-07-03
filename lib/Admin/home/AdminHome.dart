import 'package:codebooter_study_app/Admin/home/DashBoard.dart';
import 'package:codebooter_study_app/Client/authentication/auth_service.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:codebooter_study_app/widgets/SmallText.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  final AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(
                left: dimension.val20, right: dimension.val20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.home),
                bigText(
                  text: 'CodeBooter',
                  color: Colors.black,
                ),
                IconButton(
                    onPressed: () {
                      _authService.signOut(context);
                      context.go('/');
                    },
                    icon: const Icon(Icons.logout))
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Column(children: [
                      SizedBox(height: dimension.val30),
                      bigText(text: "Welcome to CodeBooter 👋 🚀"),
                      SizedBox(height: dimension.val10),
                      smallText(text: "Thanks for being a part of us"),
                      SizedBox(height: dimension.val20),
                      const DashBoard(),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
