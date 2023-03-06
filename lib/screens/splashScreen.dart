import 'package:flutter/material.dart';
import 'package:liberty_furies/actions/splashActions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final splashActions = SplashActions();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashActions.action(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black38,
                  Color.fromARGB(100, 0, 6, 177),
                ],
              )),
              //child: Text("Liberty Furies",style: TextStyle(fontSize: 54,fontWeight: FontWeight.bold,fontFamily: 'Lobster',color: Colors.white),),
            ),
            Center(
                child: Text(
              "Liberty Furies",
              style: TextStyle(
                  fontSize: 54,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Lobster',
                  color: Colors.white),
            )),
          ],
        ),
      ),
    );
  }
}
