import 'package:codebooter_study_app/Admin/home/mongoDB/MongoDbConnect.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/Admin/mongoDB/MongoDbConnect.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    String email = '';
    String password = '';

    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 255, 255, 255),

      body: Padding(
          padding: EdgeInsets.only(
              // top: dimension.val50,
              left: dimension.val50,
              right: dimension.val50),
          child: SingleChildScrollView(
            child: Column(
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
                        image: AssetImage('assets/images/logo4.png'),
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
                  bigText(text: "Admin Login"),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Email'),
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            email = value;
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Password'),
                          obscureText: true,
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            password = value;
                          },
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            if (_formKey.currentState?.validate() ?? false) {
                              final isValid =
                                  await validateLogin(email, password);
                              if (isValid) {
                                // Login success, perform the desired action
                                // For example, navigate to the admin home page
                                GoRouter.of(context).go('/admin');
                              } else {
                                // Invalid login credentials
                                // Show an error message or perform any other appropriate action
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title: const Text('Error'),
                                    content: const Text(
                                        'Invalid email or password.'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: const Text('OK'),
                                      ),
                                    ],
                                  ),
                                );
                              }
                            }
                          },
                          child: Text('Submit'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: dimension.val70,
                  ),
                  Text(
                    'By clicking continue with Google, Apple, Facebook above, you acknowledge that you have read and agree to the CodeBooter\'s Terms of Service and Privacy Policy.',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 107, 106, 106),
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
                      color: const Color.fromARGB(255, 107, 106, 106),
                      fontFamily: 'calibri',
                      fontSize: dimension.font12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ]),
              ],
            ),
          )),
    );
  }
}
