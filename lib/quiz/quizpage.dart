import 'package:flutter/material.dart';
import 'package:liberty_furies/quiz/result.dart';

import 'color.dart';
import 'data/questionlist.dart';

class quizpage extends StatefulWidget {
  final name;
  const quizpage({Key? key, required this.name}) : super(key: key);

  @override
  State<quizpage> createState() => _quizpageState();
}

class _quizpageState extends State<quizpage> {
  int question_pos = 0;
  int score = 0;
  bool btnPressed = false;
  PageController? _controller;
  String btnText = "Next Question";
  bool answered = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: Stack(
        children: [
          
          Padding(
              padding: const EdgeInsets.all(18.0),
              child: PageView.builder(
                controller: _controller!,
                onPageChanged: (page) {
                  if (page == questions.length - 1) {
                    setState(() {
                      btnText = "See Results";
                    });
                  }
                  setState(() {
                    answered = false;
                  });
                },
                physics: new NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Welcome to the Quick Quiz\n${widget.name}",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Question ${index + 1}/${questions.length}",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 200.0,
                        child: Text(
                          "${questions[index].question}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                          ),
                        ),
                      ),
                      for (int i = 0; i < questions[index].answers!.length; i++)
                        Container(
                          width: double.infinity,
                          height: 50.0,
                          margin: EdgeInsets.only(
                              bottom: 20.0, left: 12.0, right: 12.0),
                          child: RawMaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            fillColor: btnPressed
                                ? questions[index].answers!.values.toList()[i]
                                    ? Colors.green
                                    : Colors.red
                                : AppColor.secondaryColor,
                            onPressed: !answered
                                ? () {
                                    if (questions[index]
                                        .answers!
                                        .values
                                        .toList()[i]) {
                                      score++;
                                      print("yes");
                                    } else {
                                      print("no");
                                    }
                                    setState(() {
                                      btnPressed = true;
                                      answered = true;
                                    });
                                  }
                                : null,
                            child:
                                Text(questions[index].answers!.keys.toList()[i],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                    )),
                          ),
                        ),
                      SizedBox(
                        height: 40.0,
                      ),
                      RawMaterialButton(
                        onPressed: () {
                          if (_controller!.page?.toInt() ==
                              questions.length - 1) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ResultScreen(score)));
                          } else {
                            _controller!.nextPage(
                                duration: Duration(milliseconds: 250),
                                curve: Curves.easeInExpo);

                            setState(() {
                              btnPressed = false;
                            });
                          }
                        },
                        shape: StadiumBorder(),
                        fillColor: Colors.blue,
                        padding: EdgeInsets.all(18.0),
                        elevation: 0.0,
                        child: Text(
                          btnText,
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  );
                },
                itemCount: questions.length,
              )),
        ],
      ),
    );
  }
}
