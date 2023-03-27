// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:liberty_furies/screens/achievementForm.dart';

class UserDetail extends StatefulWidget {
  const UserDetail({super.key});

  @override
  State<UserDetail> createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final difficultyController = TextEditingController();
  final overcomeController = TextEditingController();
  final achievementController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.white,
              Color.fromARGB(255, 29, 63, 91),
            ])),
            child: Stack(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  // ignore: prefer_const_constructors
                  child: Center(
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                              size: 20,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 55.0),
                          child: Text(
                            "User's achievement",
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                                color: Color.fromARGB(255, 6, 5, 38),
                                fontSize: 23,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 90),
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/chats.png"),
                        fit: BoxFit.cover,
                      ),
                      //borderRadius: BorderRadius.all(Radius.circular(8)
                      //)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 420.0, left: 20),
                  child: Text(
                    "Let's Shine",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 453.0, left: 20),
                  child: Text(
                    "To be a shining star, to be an inspiration for\nthousands of female user, please fill up\nyour achievement form.",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 530, left: 20, right: 20),
                  child: TextFormField(
                    controller: nameController,
                    validator: (value) {
                      if (value == null) {
                        print("Please enter the name");
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        hintText: "Enter your name",
                        prefixIcon: Icon(Icons.person_2_rounded),
                        hintStyle: TextStyle(color: Colors.black54),
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              style: BorderStyle.none,
                            ))),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 600, left: 20, right: 20),
                  child: TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value == null) {
                        print("Please enter the email");
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: "Enter your email",
                        prefixIcon: Icon(Icons.email_rounded),
                        hintStyle: TextStyle(color: Colors.black54),
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              style: BorderStyle.none,
                            ))),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 670, left: 20, right: 20),
                  child: TextFormField(
                    controller: phoneController,
                    validator: (value) {
                      if (value == null) {
                        print("Please enter this section");
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: "Enter your domain of success",
                        prefixIcon: Icon(Icons.person_4_rounded),
                        hintStyle: TextStyle(color: Colors.black54),
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              style: BorderStyle.none,
                            ))),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 740, left: 20, right: 20),
                  child: TextFormField(
                    controller: difficultyController,
                    validator: (value) {
                      if (value == null) {
                        print("Please enter this section");
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.text,
                    maxLines: 3,
                    decoration: InputDecoration(
                        hintText: "Enter the difficulty you faced",
                        hintStyle: TextStyle(color: Colors.black54),
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              style: BorderStyle.none,
                            ))),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 850, left: 20, right: 20),
                  child: TextFormField(
                    controller: overcomeController,
                    validator: (value) {
                      if (value == null) {
                        print("Please enter this section");
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                    decoration: InputDecoration(
                        hintText: "Explain how u overcame with that difficulty",
                        hintStyle: TextStyle(color: Colors.black54),
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              style: BorderStyle.none,
                            ))),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      top: 1000, left: 20, right: 20, bottom: 30),
                  child: TextFormField(
                    controller: achievementController,
                    validator: (value) {
                      if (value == null) {
                        print("Please mention your achievement section");
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                    decoration: InputDecoration(
                        hintText:
                            "Pls proudly share your achievement with others",
                        hintStyle: TextStyle(color: Colors.black54),
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              style: BorderStyle.none,
                            ))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 1160.0, left: 10, right: 10, bottom: 30),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Center(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurple,
                              maximumSize: Size(280, 48)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AchievementForm(
                                        name: nameController.text.toString(),
                                        email: emailController.text.toString(),
                                        domain: phoneController.text.toString(),
                                        difficulty: difficultyController.text
                                            .toString(),
                                        overcome:
                                            overcomeController.text.toString(),
                                        achievement: achievementController.text
                                            .toString())));
                          },
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w700),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
