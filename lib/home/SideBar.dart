import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:flutter/material.dart';
import 'package:codebooter_study_app/authentication/authentiction.dart';
import 'package:go_router/go_router.dart';

class sideBar extends StatelessWidget {
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
        ),
        width: dimension.screenWidth * 0.6,
        child: Column(
          children: [
            Container(
              height: dimension.screenHeight * 0.3,
              child: Column(
                children: [
                  SizedBox(
                    height: dimension.screenHeight * 0.09,
                  ),
                  ClipOval(
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: dimension.val20,
                  ),
                  Text(
                    _authService.getUserName() ?? "User",
                    style: TextStyle(
                        fontSize: dimension.font20,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: dimension.val5,
                  ),
                  Text(
                    _authService.getUserEmail() ?? "User",
                    style: TextStyle(
                        fontSize: dimension.font16,
                        fontWeight: FontWeight.w400),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: dimension.val20,
            ),
            ListTile(
              leading: Icon(Icons.home),
              horizontalTitleGap: dimension.val2,
              title: Text('Home'),
              onTap: () {
                context.go('/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              horizontalTitleGap: dimension.val2,
              title: Text('Home'),
              onTap: () {
                context.go('/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              horizontalTitleGap: dimension.val2,
              title: Text('Home'),
              onTap: () {
                context.go('/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              horizontalTitleGap: dimension.val2,
              title: Text('Home'),
              onTap: () {
                context.go('/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              horizontalTitleGap: dimension.val2,
              title: Text('Home'),
              onTap: () {
                context.go('/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              horizontalTitleGap: dimension.val2,
              title: Text('Home'),
              onTap: () {
                context.go('/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              horizontalTitleGap: dimension.val2,
              title: Text('Home'),
              onTap: () {
                context.go('/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              horizontalTitleGap: dimension.val2,
              title: Text('Home'),
              onTap: () {
                context.go('/home');
              },
            ),
            SizedBox(
              height: dimension.val40,
            ),
            ElevatedButton(
              onPressed: () {
                _authService.signOut(context);
                context.go('/');
              },
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 250, 250, 250),
                onPrimary: Colors.white,
                elevation: 6,
                //3d

                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: const Color.fromARGB(255, 19, 16, 16),
                      width: 1,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
              child: Text('Sign Out',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: dimension.font16,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center),
            )
          ],
        ));
  }
}
