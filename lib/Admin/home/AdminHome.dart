import 'package:codebooter_study_app/Admin/home/DashBoard.dart';
import 'package:codebooter_study_app/AppState.dart';
import 'package:codebooter_study_app/Client/authentication/auth_service.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:codebooter_study_app/widgets/SmallText.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  final AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(
                left: Dimension.val20,
                right: Dimension.val20,
                top: Dimension.val10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.home),
                bigText(
                  text: 'CodeBooter',
                  color: appState.isDarkMode ? Colors.white : Colors.black,
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
                      SizedBox(height: Dimension.val30),
                      bigText(
                        text: "Welcome to CodeBooter 👋 🚀",
                        color:
                            appState.isDarkMode ? Colors.white : Colors.black,
                      ),
                      SizedBox(height: Dimension.val10),
                      smallText(
                        text: "Thanks for being a part of us",
                        color:
                            appState.isDarkMode ? Colors.white : Colors.black,
                      ),
                      SizedBox(height: Dimension.val20),
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
