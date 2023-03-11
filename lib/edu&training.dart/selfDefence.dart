// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:liberty_furies/pages/educationPage.dart';
import 'package:url_launcher/url_launcher.dart';

class SelfDefencePage extends StatefulWidget {
  const SelfDefencePage({super.key});

  @override
  State<SelfDefencePage> createState() => _SelfDefencePageState();
}

class _SelfDefencePageState extends State<SelfDefencePage> {
  List<String> image = [
    "https://www.doersempire.com/wp-content/uploads/2019/06/12-basic-self-defence-tips-everyone-should-know-about.jpg",
    "https://stacyknows.com/wp-content/uploads/2021/05/pexels-inna-mikitas-6455247-scaled.jpg",
    "https://plus.unsplash.com/premium_photo-1663099244688-3cbbfd819b2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2VsZiUyMGRlZmVuY2V8ZW58MHx8MHx8&w=1000&q=80"
  ];
  List<String> text1 = [
    "Self Defence Moves",
    "5 Self Defence Moves",
    "How to Survive From"
  ];
  List<String> text2 = [
    "Every Woman Must Know",
    "Woman Must Know",
    "Any Situation"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 260,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.vertical(
                        bottom: Radius.elliptical(120, 40)),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cutewallpaper.org/22/women-kickboxer-wallpapers/284131922.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 170.0, left: 20),
                  child: Text(
                    "Women's Safety: Self Defence Tips & Why",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200.0, left: 20),
                  child: Text(
                    "Is It Important..",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 8),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Education()));
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        weight: 10,
                      )),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Self Defence",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Text(
                "Why Self Defence is important for women ?",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.redAccent),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 15),
              child: Text(
                "Self defense is important for women because it gives them the means to protect themselves against any form of physical attack. Self defense techniques and strategies can be useful both in preventing attacks, as well as in responding to an attack if it has already begun. Self-defense can help build confidence, provide mental and physical strength, and help women take control of their safety. It is also important to recognize that self-defense is not just physical techniques and strategies; it is also a mental attitude, and being aware of one’s environment and potential risks. Learning self-defense gives women the tools to stay safe and protect themselves in any situation.",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "Vulnerable spots to attack",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Container(
                    height: 300,
                    width: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://media.fuzia.com/assets/uploads/images/co_brand_1/blog/vulnerable-points-1579846366.jpg"),
                          fit: BoxFit.cover),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(15),
                          bottom: Radius.circular(15)),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "> Eyes \n\n> Nose \n\n> Ear \n\n> Throat \n\n> Groin \n\n> Knee",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "Simple Self-Defence Technique",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                )),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "1. Palm Strike: ",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 300,
                      width: 260,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(15),
                              bottom: Radius.circular(15)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://assets.seniority.in/media/wysiwyg/shutterstock_670180672.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "If close to the attacker, a palm strike\ncan be the best option for inflicting damage\n and getting away. Strike the assailant's nose\n or chin with the heel of your hand.\nAim upward so that you're striking the bottom\nof his nose or chin. Breaking the nose\n in this way will be extremely painful for\nthe attacker and will give you\n plenty of time to escape.",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
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
                    "2. Kick the Groin: ",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  //color: Colors.white,
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white70,
                        Colors.indigo.shade500,
                      ]),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                        child: Image.network(
                          "https://assets.seniority.in/media/wysiwyg/shutterstock_664898716.jpg",
                          height: 170,
                          width: 370,
                          fit: BoxFit.cover,
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                          "A strike at the groin can end a fight immediately. Stand firm in the direction of the attacker with your dominant leg (the one you’ll use to kick) behind you. Then with all the speed and power, engaging your hip muscles and quads, kick your leg straight out, leaning slightly behind to ensure a balance. If the attacker is closer, you can use your knee to attack the groin.",
                          style: TextStyle(
                              fontSize: 15.5, fontWeight: FontWeight.w400)),
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
                    "3. Wrist Release: ",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 365,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  //color: Colors.white,
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white70,
                        Colors.indigo.shade500,
                      ]),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                        child: Image.network(
                          "https://assets.seniority.in/media/wysiwyg/shutterstock_230236114.jpg",
                          height: 170,
                          width: 370,
                          fit: BoxFit.cover,
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                          "When an attacker grabs your wrist and tries to drag you, don’t resist the grip. Rather, you can break away from the hold in one simple movement: Step aside from the line of attack and trap the attacker’s hand by a rotational switch placing your fingers over his wrist, locking the wrist, and then twisting the opponent’s arm, followed by an elbow spiral. The movement requires no power on your part. You don’t have to be stronger than your attacker.",
                          style: TextStyle(
                              fontSize: 15.5, fontWeight: FontWeight.w400)),
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
                    "4. Ear Slap: ",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  //color: Colors.white,
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white70,
                        Colors.indigo.shade500,
                      ]),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                        child: Image.network(
                          "https://assets.seniority.in/media/wysiwyg/ear_slap.jpg",
                          height: 170,
                          width: 370,
                          fit: BoxFit.cover,
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                          "Retaining a surprise element is key to successfully tackling the attacker with a ringing ear slap! When confronted, open your palms at the side of your waist and distract the offender with a question like ‘What do you want?’ or ‘What did I do?’. Then in a swift move, cup your hand and slam your palms into the opponent’s ears. A well-placed ear slap is sufficient to knock out or disorient the attacker, giving you time to choose between fight or flight.",
                          style: TextStyle(
                              fontSize: 15.5, fontWeight: FontWeight.w400)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Video Tutorials",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                )),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < 3; i++)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: InkWell(
                          onTap: () {
                            if (text1[i].toString() == "Self Defence Moves") {
                              launchUrl(Uri.parse("https://youtu.be/k9Jn0eP-ZVg"));
                            }else if(text1[i].toString() == "5 Self Defence Moves"){
                              launchUrl(Uri.parse("https://youtu.be/KVpxP3ZZtAc"));
                            }else{
                              launchUrl(Uri.parse("https://youtu.be/SfAoGd8R-CM"));
                            }
                          },
                          child: Container(
                            height: 300,
                            width: 280,
                            //color: Colors.white,
                            decoration: BoxDecoration(
                              //color: Colors.grey.shade300,
                              gradient: LinearGradient(colors: [
                                Color.fromARGB(255, 180, 189, 240),
                                Color.fromARGB(255, 60, 33, 107),
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
                                          width: 280)),
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
                                        "Self Defence Video",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 15),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 100.0),
                                        child: Icon(
                                          Icons.remove_red_eye,
                                          color: Colors.red,
                                        ),
                                      ),
                                      //Padding(padding: EdgeInsets.only(right: 10)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
