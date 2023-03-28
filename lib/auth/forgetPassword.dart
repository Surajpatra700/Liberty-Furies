// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:liberty_furies/actions/Utils.dart';
import 'package:liberty_furies/auth/loginPage.dart';
import 'package:liberty_furies/auth/signup.dart';
import 'package:liberty_furies/pages/framework.dart';


class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final forgetPasswordController = TextEditingController();
  final auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  height: 200,
                  width: 330,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://media.istockphoto.com/id/1226829688/vector/forgot-password-computer-concept.jpg?s=612x612&w=0&k=20&c=N1FV2t_pt16K3hsyLPOehHii6Y15nhpq-zIYFkWXi2w="),
                        fit: BoxFit.cover,
                        opacity: 20),
                  ),
                ),
              ),
              Container(
                height: 400,
                width: 320,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Forgot Password",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("Please enter the email address you'd like your password reset information sent to",style: TextStyle(color: Colors.black54),),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0, bottom: 4),
                      child: Row(
                        children: [
                          Text(
                            "Username ",
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            "*",
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: TextFormField(
                        controller: forgetPasswordController,
                        decoration: InputDecoration(
                          hintText: "User email",
                          prefixIcon: Icon(Icons.email_rounded),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 5),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter email";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: InkWell(
                        onTap: (){
                            setState(() {
                              loading = true;
                            });
                            auth
                                .sendPasswordResetEmail(
                                    email: forgetPasswordController.text
                                        .toString())
                                .then((value) {
                              Utils(check: true)
                                  .toastMessage("Password send to your email");
                              setState(() {
                                loading = false;
                              });
                            }).onError((error, stackTrace) {
                              Utils().toastMessage(error.toString());
                              setState(() {
                                loading = false;
                              });
                            });
                          
                        },
                        child: Container(
                          height: 45,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.deepPurple, 
                          ),
                          child: Center(child: Text("Forget Password",style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 2),
                      child: Row(
                        children: [
                          Text(
                            "Back to",
                            style:
                                TextStyle(color: Colors.black87, fontSize: 15),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: ((context) => signUp())));
                              },
                              child: Text("SignUp Page",
                                  style: TextStyle(
                                      color: Colors.deepPurple,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold))),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      //),
    );
  }
}
