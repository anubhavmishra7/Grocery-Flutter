import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:grocery/auth/sign_in.dart';
//import 'package:grocery/auth/sign_in.dart';
//import 'package:grocery/homescreen.dart';
//import 'package:grocery/auth/sign_in.dart';
//import 'package:grocery/homescreen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: SignIn(),
    );
  }
}
