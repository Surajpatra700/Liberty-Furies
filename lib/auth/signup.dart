// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:liberty_furies/actions/Utils.dart';
import 'package:liberty_furies/auth/gynecologistSignUp.dart';
import 'package:liberty_furies/auth/mentorSignUp.dart';
import 'package:liberty_furies/auth/verifyPhoneNo.dart';
import 'package:liberty_furies/auth/loginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  bool check = false;
  //bool check = false;
  bool hide = true;
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Stack(
        children: [
          Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 570),
              height: 530,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40)),
                image: DecorationImage(
                  image: AssetImage("assets/images/handshake.jpg"),
                  fit: BoxFit.cover,
                ),
              )),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              margin: EdgeInsets.only(top: 130, left: 40, right: 40),
              width: double.infinity,
              height: 518,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black, spreadRadius: 0.1, blurRadius: 5)
                  ]),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                            hintText: "Enter First Name",
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(120))),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter your name";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                            hintText: "Email",
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(120))),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter your email";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: passwordController,
                        obscureText: hide,
                        decoration: InputDecoration(
                            hintText: "Password",
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: hide
                                  ? Icon(Icons.visibility_off)
                                  : Icon(Icons.visibility),
                            ),
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter your password";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: confirmController,
                        obscureText: hide,
                        decoration: InputDecoration(
                            hintText: "Confirm Password",
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: hide
                                  ? Icon(Icons.visibility_off)
                                  : Icon(Icons.visibility),
                            ),
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "enter confirmation password";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.deepPurple,
                              padding: EdgeInsets.symmetric(horizontal: 55)),
                          onPressed: () {
                            if (_formKey.currentState!.validate() &&
                                (passwordController.value.toString() ==
                                    confirmController.value.toString())) {
                              setState(() {});
                              auth
                                  .createUserWithEmailAndPassword(
                                email: emailController.text.toString(),
                                password: passwordController.text.toString(),
                              )
                                  .then((value) {
                                Utils(check: true)
                                    .toastMessage("Succesfully SignedUp");
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => LoginScreen(
                                            name: nameController.text
                                                .toString()))));
                              }).onError((error, stackTrace) {
                                //print(error.toString());
                                Utils(check: false)
                                    .toastMessage(error.toString());
                              });
                            }
                          },
                          child: Text("Create account")),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?",style: TextStyle(
                            fontSize: 12
                          ),),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen(
                                            name:
                                                nameController.text.toString())));
                              },
                              child: Text("Sign in"))
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 8.0, left: 10, right: 10),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              check = true;
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VerifyNumber()));
                          },
                          child: Container(
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: check == true
                                  ? Colors.white60
                                  : Color.fromARGB(255, 126, 72, 218),
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.black54),
                            ),
                            child: Center(
                                child: Text(
                              "SignUp with Phone Number",
                              style: TextStyle(
                                  color:
                                      check == true ? Colors.black : Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            )),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MentorSignUp()));
                              },
                              child: Text(
                                "mentor?",
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 15),
                              )),
                          Spacer(),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            GynecologistSignUp()));
                              },
                              child: Text(
                                "Gynecologist?",
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 15),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: 45,
              left: 30,
              right: 40,
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Welcome",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Sign Up your account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
