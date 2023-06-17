import 'package:flutter/material.dart';
import 'package:codebooter_study_app/authentication/auth_service.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:go_router/go_router.dart';

class AnimatedDrawer extends StatelessWidget {
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 1, end: 0),
      duration: Duration(milliseconds: 400),
      builder: (BuildContext context, double value, Widget? child) {
        return Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateX(value * 1 * 0.2),
          alignment: Alignment.centerRight,
          child: Drawer(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(dimension.val20),
                bottomRight: Radius.circular(dimension.val20),
              ),
            ),
            width: dimension.screenWidth * 0.6,
            child: Column(
              children: [
                Container(
                  height: dimension.height300,
                  child: Column(
                    children: [
                      SizedBox(height: dimension.val50),
                      SizedBox(
                        height: dimension.val60,
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
                  leading: Icon(
                    Icons.home,
                    size: dimension.val25,
                  ),
                  horizontalTitleGap: dimension.val2,
                  title: Text('Home',
                      style: TextStyle(
                          fontSize: dimension.font16,
                          fontWeight: FontWeight.w400)),
                  onTap: () {
                    context.go('/home');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.laptop,
                    size: dimension.val25,
                  ),
                  horizontalTitleGap: dimension.val2,
                  title: Text('Courses',
                      style: TextStyle(
                          fontSize: dimension.font16,
                          fontWeight: FontWeight.w400)),
                  onTap: () {
                    context.go('/home');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.work_outline_rounded,
                    size: dimension.val25,
                  ),
                  horizontalTitleGap: dimension.val2,
                  title: Text('Internship/Jobs',
                      style: TextStyle(
                          fontSize: dimension.font16,
                          fontWeight: FontWeight.w400)),
                  onTap: () {
                    context.go('/home');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.book_outlined,
                    size: dimension.val25,
                  ),
                  horizontalTitleGap: dimension.val2,
                  title: Text('Notes',
                      style: TextStyle(
                          fontSize: dimension.font16,
                          fontWeight: FontWeight.w400)),
                  onTap: () {
                    context.go('/home');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.laptop_mac_rounded,
                    size: dimension.val25,
                  ),
                  horizontalTitleGap: dimension.val2,
                  title: Text('Interview Gem',
                      style: TextStyle(
                          fontSize: dimension.font16,
                          fontWeight: FontWeight.w400)),
                  onTap: () {
                    context.go('/home');
                  },
                ),
                ListTile(
                  //icon for blog

                  leading: Icon(
                    Icons.article_outlined,
                    size: dimension.val25,
                  ),
                  horizontalTitleGap: dimension.val2,
                  title: Text('Blog',
                      style: TextStyle(
                          fontSize: dimension.font16,
                          fontWeight: FontWeight.w400)),
                  onTap: () {
                    context.go('/home');
                  },
                ),
                //divider
                Divider(
                  height: dimension.val20,
                  thickness: dimension.val2,
                  indent: dimension.val20,
                  endIndent: dimension.val20,
                ),

                ListTile(
                  leading: Icon(
                    Icons.help_outlined,
                    size: dimension.val25,
                  ),
                  horizontalTitleGap: dimension.val2,
                  title: Text('help',
                      style: TextStyle(
                          fontSize: dimension.font16,
                          fontWeight: FontWeight.w400)),
                  onTap: () {
                    context.go('/home');
                  },
                ),

                // Add your other list tiles here
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
                    elevation: dimension.val5,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Color.fromARGB(255, 19, 16, 16),
                          width: dimension.val2,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                  child: Text(
                    'Sign Out',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: dimension.font16,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
