// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:liberty_furies/actions/Utils.dart';
import 'package:liberty_furies/pages/framework.dart';
// ignore: unused_import
import 'package:liberty_furies/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  final String name;
  const LoginScreen({super.key,required this.name});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final auth = FirebaseAuth.instance;
  bool hide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Stack(
        children: [
          Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 520),
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
              margin: EdgeInsets.only(top: 225, left: 50, right: 50),
              width: double.infinity,
              height: 400,
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
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: "Email",
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(120))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter email";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: hide,
                      keyboardType: TextInputType.text,
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
                          return "Enter password";
                        } else {
                          return null;
                        }
                      },
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            padding: EdgeInsets.symmetric(horizontal: 100)),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            setState(() {});
                            auth
                                .signInWithEmailAndPassword(
                              email: emailController.text.toString(),
                              password: passwordController.text.toString(),
                            )
                                .then((value) {
                              Utils(check: true)
                                  .toastMessage("Welcome to Liberty Furies");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FrameworkScreen()));
                            }).onError((error, stackTrace) {
                              Utils(check: false)
                                  .toastMessage(error.toString());
                            });
                          }
                        },
                        child: Text("Login",style: TextStyle(
                          fontSize: 13.5
                        ),)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Doesn't have an account?",style: TextStyle(
                          fontSize: 10
                        ),),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Register",
                              style: TextStyle(color: Colors.blue),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100.0,left: 30),
                child: Text(
                      "Welcome ${widget.name}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                        "Login access to your account",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w300),
                      ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
