import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:go_router/go_router.dart';
import 'package:github_sign_in_plus/github_sign_in_plus.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  final GitHubSignIn _gitHubSignIn = GitHubSignIn(
    clientId: 'b62dc6218423a18cc61b',
    clientSecret: 'f77e13a65c7e237a1cd55fdd13e00d200f9caedf',
    redirectUrl: 'https://codebooter-study.firebaseapp.com/__/auth/handler',
    title: 'GitHub Connection',
    centerTitle: false,
  );
  Future<void> signInWithGitHub(BuildContext context) async {
    try {
      final result = await _gitHubSignIn.signIn(context);
      if (result != null) {
        final token = await result.token;
        if (token != null) {
          final credential = GithubAuthProvider.credential(token);
          try {
            final currentUser = _firebaseAuth.currentUser;

            if (currentUser != null) {
              // Link the GitHub credential with the existing Firebase account
              await currentUser.linkWithCredential(credential);
              // Navigate to the home page
              context.go('/homepage');
            } else {
              // If no user is currently signed in, sign in with the GitHub credential
              await _firebaseAuth.signInWithCredential(credential);
              // Navigate to the home page
              context.go('/homepage');
            }
          } catch (error) {
            print('Firebase sign-in error: $error');
          }
        } else {
          print('Failed to retrieve GitHub access token.');
        }
      } else {
        print('GitHub sign-in was canceled by the user.');
      }
    } catch (error) {
      print('GitHub sign-in error: $error');
    }
  }

  // ------------------------------------------
  // ------------------------------------------
  Future<void> signInWithGoogle(BuildContext context) async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;

      // Use these details to authenticate with Firebase
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in to Firebase using the Google credentials
      await _firebaseAuth.signInWithCredential(credential);

      // Navigate to the home page
      context.go('/homepage');
    } catch (error) {
      // Handle sign-in error
      print(error);
    }
  }

  Future<void> signOut(BuildContext context) async {
    try {
      await _firebaseAuth.signOut();
      await _googleSignIn.signOut();

      // Navigate to the login page
      context.go('/');
    } catch (error) {
      // Handle sign-out error
      print(error);
    }
  }

  bool isUsingEmail() {
    final currentUser = _firebaseAuth.currentUser;
    final providerData = currentUser?.providerData;
    return providerData?.any((userInfo) => userInfo.providerId == 'password') ??
        false;
  }

  bool isAuthenticated() {
    final currentUser = _firebaseAuth.currentUser;
    return currentUser != null;
  }

  //get user name
  String? getUserName() {
    final currentUser = _firebaseAuth.currentUser;
    return currentUser?.displayName;
  }

  //get user email
  String? getUserEmail() {
    final currentUser = _firebaseAuth.currentUser;
    return currentUser?.email;
  }

  //getUserImage()
  String? getUserImage() {
    final currentUser = _firebaseAuth.currentUser;
    final String? photoURL = currentUser?.photoURL;
    return photoURL;
  }
}



//  accountName() {
//     if (_authService.isAuthenticated()) {
//       return _authService.getUid();
//     } else {
//       return 'Guest';
//     }
//   }

//   accountEmail() {
//     if (_authService.isAuthenticated()) {
//       return _authService.getUid();
//     } else {
//       return 'Guest';
//     }
//   }
