import 'package:codebooter_study_app/Screens/LoginScreen.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:flutter/material.dart';
import 'package:codebooter_study_app/authentication/authentiction.dart';
import 'package:go_router/go_router.dart';

class sideBar extends StatelessWidget {
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: dimension.screenWidth * 0.6,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Center(
            child: UserAccountsDrawerHeader(
              // Header content

              accountName: Text(
                'Manav',
                style: TextStyle(
                  fontSize: dimension.val20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: const Text(
                'manvkhafka@gmailcom',
              ),
            ),
          ),
          ListTile(
            title: const Text('Logout'),
            leading: const Icon(Icons.exit_to_app),
            onTap: () {
              _authService.signOut(context);
              context.go('/');
            },
          ),
        ],
      ),
    );
  }
}
