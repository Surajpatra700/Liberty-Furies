// ignore_for_file: unused_import, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:liberty_furies/pages/framework.dart';
import 'package:liberty_furies/auth/loginPage.dart';
import 'package:liberty_furies/auth/signup.dart';
import 'package:liberty_furies/screens/home_screen.dart';

class SplashActions {
  
  final auth = FirebaseAuth.instance;
  void action(BuildContext context) {
    final user = auth.currentUser;
    if(user == null){
      Timer(const Duration(seconds: 5), ()=> Navigator.push(context, MaterialPageRoute(builder: ((context)=>signUp()))));
    }else{
      Timer(const Duration(seconds: 5), ()=> Navigator.push(context, MaterialPageRoute(builder: ((context)=>FrameworkScreen()))));
    }
  }
}