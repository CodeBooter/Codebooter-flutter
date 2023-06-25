import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';

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
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 50,
            horizontal: 50,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 70),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      image: DecorationImage(
                        image: AssetImage('assets/images/logo4.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'Welcome to CodeBooter 👋 🚀',
                    style: TextStyle(
                      color: Color.fromARGB(255, 53, 53, 53),
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text.rich(
                    TextSpan(
                      style: TextStyle(
                        color: Color.fromARGB(255, 53, 53, 53),
                        fontFamily: 'Poppins',
                        fontSize: 16,
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
                  const SizedBox(height: 20),
                  const Text(
                    "Admin Login",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
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
                        const SizedBox(height: 20),
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
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: signIn,
                          child: const Text('Sign In'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'By clicking continue with Google, Apple, Facebook above, you acknowledge that you have read and agree to the CodeBooter\'s Terms of Service and Privacy Policy.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 107, 106, 106),
                      fontFamily: 'calibri',
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 70),
                  const Text(
                    '© 2023 CodeBooter. All rights reserved.',
                    style: TextStyle(fontSize: 12),
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
