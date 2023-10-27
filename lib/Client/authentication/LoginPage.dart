import 'package:flutter/material.dart';
import 'package:codebooter_study_app/Client/authentication/auth_service.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/widgets/SmallText.dart';
import 'package:go_router/go_router.dart';
import 'package:codebooter_study_app/AppState.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  final AuthService _authService = AuthService();

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: Dimension.val50,
              horizontal: Dimension.val50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: Dimension.val70),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      width: Dimension.val60,
                      height: Dimension.val60,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        image: DecorationImage(
                          image: AssetImage('assets/images/logo4.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(height: Dimension.val25),
                    Text(
                      'Welcome to CodeBooter 👋 🚀',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'Poppins',
                        fontSize: Dimension.val30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: Dimension.val15),
                    RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontFamily: 'Poppins',
                          fontSize: Dimension.font16,
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
                    SizedBox(height: Dimension.val40),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isLoading = true;
                        });

                        Future.delayed(const Duration(milliseconds: 2000), () {
                          widget._authService.signInWithGoogle(context);
                        });
                      },
                      child: Container(
                        width: Dimension.width311,
                        height: Dimension.val40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 62, 62, 62),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: Dimension.val10),
                            Image.asset(
                              'assets/images/google.png',
                              width: Dimension.val20,
                              height: Dimension.val20,
                            ),
                            SizedBox(width: Dimension.val10),
                            Text(
                              'Continue with Google',
                              style: TextStyle(
                                color: const Color.fromARGB(219, 0, 0, 0),
                                fontFamily: 'Poppins',
                                fontSize: Dimension.font14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: Dimension.val15),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isLoading = true;
                        });

                        Future.delayed(const Duration(milliseconds: 2000), () {
                          widget._authService.signInWithGitHub(context);
                        });
                      },
                      child: Container(
                        width: Dimension.width311,
                        height: Dimension.val40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 48, 48, 48),
                            // width: Dimension.val2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: Dimension.val10),
                            Image.asset(
                              'assets/images/github.png',
                              width: Dimension.val20,
                              height: Dimension.val20,
                            ),
                            SizedBox(width: Dimension.val10),
                            Text(
                              'Continue with GitHub',
                              style: TextStyle(
                                color: const Color.fromARGB(219, 0, 0, 0),
                                fontFamily: 'Poppins',
                                fontSize: Dimension.font14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: Dimension.val15),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isLoading = true;
                        });

                        Future.delayed(const Duration(milliseconds: 2000), () {
                          context.go('/admin');
                        });
                      },
                      child: Text(
                        "Are you an admin? Login here",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 32, 32, 32),
                          fontFamily: 'Poppins',
                          fontSize: Dimension.font12,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          decorationColor: const Color.fromARGB(255, 3, 3, 3),
                          decorationStyle: TextDecorationStyle.solid,
                        ),
                      ),
                    ),
                    SizedBox(height: Dimension.height85),
                    Text(
                      'By clicking continue with Google, Apple, Facebook above, you acknowledge that you have read and agree to the CodeBooter\'s Terms of Service and Privacy Policy.',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 107, 106, 106),
                        fontFamily: 'calibri',
                        fontSize: Dimension.val10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: Dimension.val70),
                    smallText(
                      text: '© 2023 CodeBooter. All rights reserved.',
                      size: Dimension.font12,
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (_isLoading)
            Container(
              color: Colors.black.withOpacity(0.5),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }
}
