import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liberty_furies/pages/educationPage.dart';
import 'package:liberty_furies/quiz/quizhomeScreen.dart';

import '../screens/home_screen.dart';
import 'color.dart';

class ResultScreen extends StatefulWidget {
  int score;
  ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              "Congratulations...",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 45.0,
          ),
          Text(
            "Your Score is",
            style: TextStyle(color: Colors.white, fontSize: 34.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "${widget.score}",
            style: TextStyle(
              color: Colors.orange,
              fontSize: 85.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          RawMaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizHomeScreen(),
                  ));
            },
            fillColor: AppColor.secondaryColor,
            shape: StadiumBorder(),
           // color: AppColor.secondaryColor,
            padding: EdgeInsets.all(18.0),
            child: Text(
              "Repeat the quiz",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 50,),
          RawMaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  Education(),
                  ));
            },
            fillColor: Colors.red,
            shape: StadiumBorder(),
            // color: AppColor.secondaryColor,
            padding: EdgeInsets.all(18.0),
            child: Text(
              "Exit",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}