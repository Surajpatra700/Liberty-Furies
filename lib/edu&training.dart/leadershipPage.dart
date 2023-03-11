// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LeadershipPage extends StatefulWidget {
  const LeadershipPage({super.key});

  @override
  State<LeadershipPage> createState() => _LeadershipPageState();
}

class _LeadershipPageState extends State<LeadershipPage> {
  List<String> image2 = [
    "https://www.heysigmund.com/wp-content/uploads/Leader-TITLE.jpg",
    "https://imageio.forbes.com/specials-images/imageserve/1170077596/Group-of-people-on-peak-mountain-climbing-helping-team-work---travel-trekking-success/960x0.jpg?format=jpg&width=960",
    "https://www.incimages.com/uploaded_files/image/1920x1080/getty_133251230_970647970450060_45159.jpg"
  ];
  List<String> text12 = [
    "10 Characteristics of",
    "Helpful",
    "Importance Leadership"
  ];
  List<String> text22 = [
    "a good Leader",
    "Leadership articles",
    "Competencies"
  ];
  List<String> image = [
    "https://media.licdn.com/dms/image/C5612AQGpUD7cBbcs1Q/article-cover_image-shrink_600_2000/0/1520110253908?e=2147483647&v=beta&t=-6ICjU9BqXF12mX3KasYa2EPjYKY1I2jklVOnrXE5zQ",
    "https://www.feedough.com/wp-content/uploads/2019/09/IMPORTANCE-OF-LEADERSHIP.png",
    "https://imageio.forbes.com/specials-images/dam/imageserve/1140379193/0x0.jpg?format=jpg&width=1200"
  ];
  List<String> text1 = [
    "Introduction to",
    "Importance of",
    "Implementation of"
  ];
  List<String> text2 = [
    "Leadership Skills",
    "Leadership Skill",
    "Leadership Skills"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 240,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    height: 240,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://media.istockphoto.com/id/501650629/photo/leadership.jpg?b=1&s=170667a&w=0&k=20&c=c4k_qwO-FNrcFmGt0eGFhA7Wbb7XNwXYOqg0BgZEf2s="),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.deepPurple, BlendMode.colorBurn),
                          opacity: 80),
                      //borderRadius: BorderRadius.vertical(bottom: Radius.circular(70)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0, left: 30),
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://bl-i.thgim.com/public/incoming/1kok5r/article24697056.ece/alternates/FREE_385/women-ssc-pcjpg"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(120),
                          border: Border.all(width: 2, color: Colors.white)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70.0, left: 200),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "A leader is one",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Lobster",
                              letterSpacing: 1),
                        ),
                        Text(
                          "who knows the way,",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Lobster",
                              letterSpacing: 1),
                        ),
                        Text(
                          "goes the way &",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Lobster",
                              letterSpacing: 1),
                        ),
                        Text(
                          "shows the way,",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Lobster",
                              letterSpacing: 1),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 145.0, left: 330),
                    child: Icon(
                      Icons.format_quote,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Leadership",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Video Contents",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                  )),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    for (int i = 0; i < 3; i++)
                      InkWell(
                        onTap: () {
                          if (text1[i].toString() == "Introduction to") {
                            launchUrl(Uri.parse("https://youtu.be/QBuxsx8Horo"));
                          } else if (text1[i].toString() == "Importance of") {
                            launchUrl(Uri.parse("https://youtu.be/XChPEfUuTG0"));
                          } else {
                            launchUrl(Uri.parse("https://youtu.be/G0SAPtW5sWA"));
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Container(
                            height: 300,
                            width: 270,
                            //color: Colors.white,
                            decoration: BoxDecoration(
                              //color: Colors.indigo.shade200,
                              gradient: LinearGradient(colors: [
                                Colors.white,
                                Colors.indigo.shade500,
                              ]),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 150,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15)),
                                      child: Image.network(image[i],
                                          fit: BoxFit.cover,
                                          height: 50,
                                          width: 270)),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, left: 15),
                                  child: Text(
                                    text1[i],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text(
                                    text2[i],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, top: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        "1 video",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 15),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 160.0),
                                        child: Icon(
                                          Icons.remove_red_eye,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Articles",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                  )),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    for (int i = 0; i < 3; i++)
                      InkWell(
                        onTap: () {
                          if (text12[i].toString() == "10 Characteristics of") {
                            launchUrl(Uri.parse(
                                "https://www.ccl.org/articles/leading-effectively-articles/characteristics-good-leader/"));
                          } else if (text12[i].toString() == "Helpful") {
                            launchUrl(Uri.parse(
                                "https://seismic.com/enablement-explainers/helpful-leadership-articles/"));
                          } else {
                            launchUrl(Uri.parse(
                                "https://hbr.org/2016/03/the-most-important-leadership-competencies-according-to-leaders-around-the-world"));
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Container(
                            height: 300,
                            width: 270,
                            //color: Colors.white,
                            decoration: BoxDecoration(
                              //color: Colors.indigo.shade200,
                              gradient: LinearGradient(colors: [
                                Colors.white,
                                Colors.indigo.shade500,
                              ]),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 150,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15)),
                                      child: Image.network(image2[i],
                                          fit: BoxFit.cover,
                                          height: 50,
                                          width: 270)),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, left: 15),
                                  child: Text(
                                    text12[i],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text(
                                    text22[i],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, top: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Visit Site",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 15),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 160.0),
                                        child: Icon(
                                          Icons.language,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
