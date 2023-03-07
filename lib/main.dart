// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:liberty_furies/actions/splashActions.dart';
import 'package:liberty_furies/google%20maps/searchLocation.dart';
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

class FrontPage extends StatefulWidget {
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.statusqueen.com/mobilewallpaper/thumbnail/mobile_wallpaper3-187.jpg"),
              fit: BoxFit.cover,
              opacity: 20,
              colorFilter:
                  ColorFilter.mode(Colors.deepPurple, BlendMode.color)),
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                "Liberty Furies",
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                          color: Colors.black45,
                          offset: Offset(4, 4),
                          blurRadius: 20),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                "Welcome to Liberty Furies",
                style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                    fontSize: 19.5),
              ),
            ),
            // Container(
            //   child: Padding(
            //     padding: const EdgeInsets.all(20.0),
            //     child: Lottie.asset('assets/animations/17816-moving-car.json',filterQuality: FilterQuality.low),
            //   ),
            // ),
            SizedBox(height: 200),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 22, 36, 62),
                  borderRadius: BorderRadius.circular(60),
                  border: Border.all(),
                ),
                child: Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(60),
                  border: Border.all(),
                ),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
