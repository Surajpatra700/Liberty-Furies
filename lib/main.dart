// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:liberty_furies/actions/splashActions.dart';
import 'package:liberty_furies/edu&training.dart/selfDefence.dart';
import 'package:liberty_furies/google%20maps/voiceRecorder.dart';
import 'package:liberty_furies/pages/educationPage.dart';
import 'package:liberty_furies/pages/framework.dart';
import 'package:liberty_furies/pages/googleMapScreen.dart';
import 'package:liberty_furies/pages/loginPage.dart';
import 'package:liberty_furies/pages/signup.dart';
import 'package:liberty_furies/screens/home_screen.dart';
import 'package:liberty_furies/screens/splashScreen.dart';
import 'package:lottie/lottie.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: SplashScreen(),
    );
  }
}