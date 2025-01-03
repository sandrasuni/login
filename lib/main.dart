import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login/firebase_options.dart';
import 'package:login/login.dart';
import 'package:login/notescreen.dart';
import 'package:login/registration.dart';
import 'package:login/services/firebaseauthservice.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}
