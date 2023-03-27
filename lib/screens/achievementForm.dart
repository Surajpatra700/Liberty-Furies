import 'package:flutter/material.dart';

class AchievementForm extends StatefulWidget {
  final name, email, domain, difficulty, overcome, achievement;
  const AchievementForm(
      {super.key,
      required this.name,
      required this.email,
      required this.domain,
      required this.difficulty,
      required this.overcome,
      required this.achievement});

  @override
  State<AchievementForm> createState() => _AchievementFormState();
}

class _AchievementFormState extends State<AchievementForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
          child: Center(
            child: Container(
              height: 740,
              width: 365,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.grey.shade200,
                      Color.fromARGB(255, 42, 74, 100),
                    ]),
                //color: Colors.grey.shade200,
                border: Border.all(width: 0.2),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                        child: Text(
                      "CERTIFICATE",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.7),
                    )),
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                        child: Text("of",
                            style: TextStyle(
                                fontSize: 29,
                                fontWeight: FontWeight.w300,
                                fontFamily: "Lobster"))),
                    SizedBox(height: 14),
                    Center(
                        child: Text("ACHIEVEMENT",
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.w600))),
                    SizedBox(
                      height: 60,
                    ),
                    Center(
                        child: Text(
                      "PROUDLY PRESENTED TO",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    )),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text(
                        "${widget.name}",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            fontFamily: "DancingScript"),
                      ),
                    ),
                    SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Center(
                          child: Text(
                        "This is to Certify Ms/Mrs. ${widget.name} for achieving excellance in the domain of ${widget.domain}.",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Text(
                      "Difficulty that i Faced",
                      style: TextStyle(
                          fontSize: 16.5,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic),
                    )),
                    SizedBox(
                      height: 8,
                    ),
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text("${widget.difficulty}",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400)),
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Text(
                      "How I overcome from that situation",
                      style: TextStyle(
                          fontSize: 16.5,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic),
                    )),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Center(
                          child: Text("${widget.overcome}",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400))),
                    ),
                    SizedBox(height: 10),
                    Center(child: Text("Congralutions",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white54),)),
                    SizedBox(height: 6),
                    Center(child: Text("${widget.name}",style: TextStyle(fontSize: 26,fontFamily: "Lobster",fontWeight: FontWeight.w600,color: Color.fromARGB(255, 171, 42, 85)),)),
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: [
                          Container(
                            height: 280,
                            width: 170,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/badge.png"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Liberty Furies",
                                style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "DancingScript"),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Container(
                                  height: 2, width: 140, color: Colors.black),
                              SizedBox(
                                height: 6,
                              ),
                              Text("Liberty Furies",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            //),
          ),
        ),
      ),
    );
  }
}
