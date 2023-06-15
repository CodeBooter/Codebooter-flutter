import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/widgets/SmallText.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/BigText.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 255, 255, 255),

      body: Padding(
        padding: EdgeInsets.only(
            top: dimension.val50,
            left: dimension.val50,
            right: dimension.val50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: dimension.val70,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    width: dimension.val60,
                    height: dimension.val60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      image: DecorationImage(
                        image: AssetImage('assets/images/logo.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: dimension.val25),
                  const Text(
                    'Welcome to CodeBooter 👋 🚀',
                    style: TextStyle(
                      color: Color.fromARGB(255, 53, 53, 53),
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: dimension.val15,
                  ),
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      style: TextStyle(
                        color: const Color.fromARGB(255, 53, 53, 53),
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
                  SizedBox(
                    height: dimension.val40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Future.delayed(Duration(milliseconds: 2000), () {
                        context.go('/');
                      });
                    },
                    child: InkWell(
                      onTap: () {
                        Future.delayed(Duration(milliseconds: 200), () {
                          context.go('/');
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                          left: dimension.val50,
                          right: dimension.val10,
                          top: dimension.val10,
                          bottom: dimension.val10,
                        ),
                        width: dimension.width355,
                        height: dimension.val40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 212, 211, 211),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: dimension.val10,
                            ),
                            Image.asset(
                              'assets/images/google.png',
                              width: dimension.val20,
                              height: dimension.val20,
                            ),
                            SizedBox(
                              width: dimension.val10,
                            ),
                            const Text(
                              'Continue with Google',
                              style: TextStyle(
                                color: Color.fromARGB(255, 53, 53, 53),
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: dimension.val15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Future.delayed(Duration(milliseconds: 2000), () {
                        context.go('/');
                      });
                    },
                    child: InkWell(
                      onTap: () {
                        Future.delayed(Duration(milliseconds: 200), () {
                          context.go('/');
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                          left: dimension.val50,
                          right: dimension.val10,
                          top: dimension.val10,
                          bottom: dimension.val10,
                        ),
                        width: dimension.width355,
                        height: dimension.val40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 212, 211, 211),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: dimension.val10,
                            ),
                            Image.asset(
                              'assets/images/apple.png',
                              width: dimension.val20,
                              height: dimension.val20,
                            ),
                            SizedBox(
                              width: dimension.val10,
                            ),
                            const Text(
                              'Continue with Apple',
                              style: TextStyle(
                                color: Color.fromARGB(255, 53, 53, 53),
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: dimension.height85,
                  ),
                  Text(
                    'By clicking continue with Google, Apple, Facebook above, you acknowledge that you have read and agree to the CodeBooter\'s Terms of Service and Privacy Policy.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 107, 106, 106),
                      fontFamily: 'calibri',
                      fontSize: dimension.val10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: dimension.val70,
                  ),
                  Text(
                    '©  2023 CodeBooter. All rights reserved.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 107, 106, 106),
                      fontFamily: 'calibri',
                      fontSize: dimension.font12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
