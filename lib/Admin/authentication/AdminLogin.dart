import 'package:codebooter_study_app/AppState.dart';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';


import 'package:provider/provider.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({Key? key}) : super(key: key);

  @override
  _AdminLoginState createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _email, _password;

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(
            vertical: dimension.val50,
            horizontal: dimension.val50,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               SizedBox(height: dimension.val70),

                  Container(
                    alignment: Alignment.centerLeft,

                    width: dimension.val60,
                    height: dimension.val60,
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(dimension.val5)),

                      image: DecorationImage(
                        image: AssetImage('assets/images/logo4.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  SizedBox(height: dimension.val25),
                  Text(
                    'Welcome to CodeBooter 👋 🚀',
                    style: TextStyle(
                      color: appState.isDarkMode ? Colors.white : Colors.black,
                      fontFamily: 'Poppins',
                      fontSize: dimension.font24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: dimension.val25),
                  Text.rich(
                    TextSpan(
                      style: TextStyle(
                        color:
                            appState.isDarkMode ? Colors.white : Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: dimension.font16,

                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(
                          text: 'Help you to ',
                          style: TextStyle(
                              fontSize: dimension.font14,
                              color: appState.isDarkMode
                                  ? Colors.white
                                  : Colors.black),
                        ),
                        TextSpan(
                          text: 'Learn, Prepare',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: dimension.font14,
                            color: appState.isDarkMode
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: ' and ',
                          style: TextStyle(
                              fontSize: dimension.font14,
                              color: appState.isDarkMode
                                  ? Colors.white
                                  : Colors.black),
                        ),
                        TextSpan(
                          text: 'Ace',
                          style: TextStyle(
                              color: appState.isDarkMode
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: dimension.font14),
                        ),
                        TextSpan(
                          text: ' your interviews. 🎯 💯',
                          style: TextStyle(
                              fontSize: dimension.font14,
                              color: appState.isDarkMode
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: dimension.val25),
                  Text(
                    "Admin Login",
                    style: TextStyle(
                      fontSize: dimension.font20,

                      fontWeight: FontWeight.bold,
                      color: appState.isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),

                   SizedBox(height: dimension.val20),

                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          style: TextStyle(
                            fontSize: dimension.font18,
                            color: Colors.black, // Set the text color to black
                          ),
                          validator: (input) {
                            if (input!.isEmpty) {
                              String msg = 'Please type an email';
                              return msg;
                            }
                            return null;
                          },
                          onSaved: (input) => _email = input!,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                            ),
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              fontSize: dimension.font16,
                              color: appState.isDarkMode
                                  ? Colors.white
                                  : Colors.black, // Set the text color to black
                            ),
                          ),
                        ),

                         SizedBox(height: dimension.val20),

                        TextFormField(
                          validator: (input) {
                            if (input!.length < 6) {
                              return 'Your password must be at least 6 characters';
                            }
                            return null;
                          },
                          onSaved: (input) => _password = input!,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              fontSize: dimension.font16,
                              color: appState.isDarkMode
                                  ? Colors.white
                                  : Colors.black, // Set the text color to black
                            ),
                          ),
                          obscureText: true,
                        ),

                         SizedBox(height: dimension.val20),

                        ElevatedButton(
                          onPressed: signIn,
                          child: const Text('Sign In'),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: dimension.val40),
                  const Text(

                    'By clicking continue with Google, Apple, Facebook above, you acknowledge that you have read and agree to the CodeBooter\'s Terms of Service and Privacy Policy.',
                    style: TextStyle(
                      color: appState.isDarkMode
                          ? AppColors.lightModePrimary
                          : AppColors.primaryColor,
                      fontFamily: 'calibri',
                      fontSize: dimension.val15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                   SizedBox(height: dimension.val70),
                   Text(
                    '© 2023 CodeBooter. All rights reserved.',
                    style: TextStyle(fontSize: dimension.val15),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void signIn() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      try {
        UserCredential user = await _auth.signInWithEmailAndPassword(
          email: _email,
          password: _password,
        );

        context.go('/admin/home');
        print('Signed in: ${user.user!.email}');
      } catch (e) {
        print(e.toString());
      }
    }
  }
}
