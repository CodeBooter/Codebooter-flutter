import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:go_router/go_router.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

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
