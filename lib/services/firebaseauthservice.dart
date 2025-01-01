import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/bottomnavigation.dart';
import 'package:login/profile.dart';

String email = 'a@gmail.com';

Future<void> signup(
    {required String username,
    required String email,
    required String password,
    required String confirmPassword,
    required BuildContext context}) async {
  try {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => BottomNavigationScreen()));
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("Registration Successful")));
  } catch (e) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

Future<void> login(
    {required String email,
    required String password,
    required BuildContext context}) async {
  try {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => BottomNavigationScreen()));
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("Login Successful")));
  } catch (e) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(e.toString())));
  }
}
