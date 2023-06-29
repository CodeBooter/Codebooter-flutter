import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:codebooter_study_app/Client/authentication/auth_service.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/widgets/SmallText.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  final AuthService _authService = AuthService();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final dimension = Dimensions();

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: dimension.val50,
          horizontal: dimension.val50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: dimension.val70),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  width: dimension.val60,
                  height: dimension.val60,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo4.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: dimension.val25),
                const Text(
                  'Welcome to CodeBooter 👋 🚀',
                  style: TextStyle(
                    color: appColors.greycolor,
                    fontFamily: 'Poppins',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: dimension.val15),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: TextStyle(
                      color: appColors.maincolor,
                      fontFamily: 'Poppins',
                      fontSize: dimension.font16,
                      fontWeight: FontWeight.w400,
                    ),
                    children: const [
                      TextSpan(text: 'Help you to '),
                      TextSpan(
                        text: 'Learn, Prepare',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' and '),
                      TextSpan(
                        text: 'Ace',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' your interviews. 🎯 💯'),
                    ],
                  ),
                ),
                SizedBox(height: dimension.val40),
                GestureDetector(
                  onTap: () {
                    Future.delayed(const Duration(milliseconds: 2000), () {
                      _authService.signInWithGoogle(context);
                    });
                  },
                  child: Container(
                    width: dimension.width311,
                    height: dimension.val40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: appColors.maincolor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: dimension.val10),
                        Image.asset(
                          'assets/images/google.png',
                          width: dimension.val20,
                          height: dimension.val20,
                        ),
                        SizedBox(width: dimension.val10),
                        Text(
                          'Continue with Google',
                          style: TextStyle(
                            color: appColors.strokeColor,
                            fontFamily: 'Poppins',
                            fontSize: dimension.font14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: dimension.val15),
                GestureDetector(
                  onTap: () {
                    Future.delayed(const Duration(milliseconds: 2000), () {
                      _authService.signInWithGitHub(context);
                    });
                  },
                  child: Container(
                    width: dimension.width311,
                    height: dimension.val40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: appColors.maincolor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: dimension.val10),
                        Image.asset(
                          'assets/images/github.png',
                          width: dimension.val20,
                          height: dimension.val20,
                        ),
                        SizedBox(width: dimension.val10),
                        Text(
                          'Continue with GitHub',
                          style: TextStyle(
                            color: appColors.strokeColor,
                            fontFamily: 'Poppins',
                            fontSize: dimension.font14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: dimension.val15),
                GestureDetector(
                  onTap: () {
                    Future.delayed(const Duration(milliseconds: 2000), () {
                      context.go('/admin');
                    });
                  },
                  child: Text(
                    "Are you an admin? Login here",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 53, 53, 53),
                      fontFamily: 'Poppins',
                      fontSize: dimension.font12,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      decorationColor: const Color.fromARGB(255, 3, 3, 3),
                      decorationStyle: TextDecorationStyle.solid,
                    ),
                  ),
                ),
                SizedBox(height: dimension.height85),
                Text(
                  'By clicking continue with Google, Apple, Facebook above, you acknowledge that you have read and agree to the CodeBooter\'s Terms of Service and Privacy Policy.',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 107, 106, 106),
                    fontFamily: 'calibri',
                    fontSize: dimension.val10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: dimension.val70),
                smallText(
                  text: '© 2023 CodeBooter. All rights reserved.',
                  size: dimension.font12,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
