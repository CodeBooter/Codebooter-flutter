import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:codebooter_study_app/AppState.dart';
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                      color: appState.isDarkMode
                          ? AppColors.lightModePrimary
                          : AppColors.primaryColor,
                      fontFamily: 'Poppins',
                      fontSize: dimension.val30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                   SizedBox(height: dimension.val15),
                   Text.rich(
                    TextSpan(
                      style: TextStyle(
                        color: appState.isDarkMode
                            ? AppColors.lightModePrimary
                            : AppColors.primaryColor,
                        fontFamily: 'Poppins',
                        fontSize: dimension.val20,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
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
                   SizedBox(height: dimension.val20),
                   Text(
                    "Admin Login",
                    style: TextStyle(
                      fontSize: dimension.val25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                   SizedBox(height: dimension.val20),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (input) {
                            if (input!.isEmpty) {
                              return 'Please enter an email';
                            }
                            return null;
                          },
                          onSaved: (input) => _email = input!,
                          decoration: const InputDecoration(labelText: 'Email'),
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
                          decoration:
                              const InputDecoration(labelText: 'Password'),
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
                   Text(
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
