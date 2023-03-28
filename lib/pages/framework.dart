// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:liberty_furies/pages/googleMapScreen.dart';
import 'package:liberty_furies/screens/about.dart';
import 'package:liberty_furies/screens/callscreen.dart';
import 'package:liberty_furies/screens/home_screen.dart';
import 'package:liberty_furies/screens/hospital.dart';
import 'package:liberty_furies/screens/userdetail.dart';

class FrameworkScreen extends StatefulWidget {
  const FrameworkScreen({super.key});

  @override
  State<FrameworkScreen> createState() => _FrameworkScreenState();
}

class _FrameworkScreenState extends State<FrameworkScreen> {
  int index = 2;
  final screens = [
    const DoctorHomePage(),
    //CallScreen(),
    const GoogleMapScreen(),
    const HomeScreen(),
    const UserDetail(),
    const About(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        //buttonBackgroundColor: Colors.white,
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
        backgroundColor: Colors.transparent,
        //color: Color.fromARGB(255, 2, 173, 91),
        color: Colors.indigo.shade400,
        height: 50,
        index: index,
        items: [
          const Icon(
            Icons.local_hospital,
            color: Colors.black,
          ),
          const Icon(
            Icons.health_and_safety,
            color: Colors.black,
          ),
          const Icon(
            Icons.home,
            color: Colors.black,
          ),
          const Icon(
            Icons.person,
            color: Colors.black,
          ),
          const Icon(
            Icons.info_rounded,
            color: Colors.black,
          ),

        ],
        animationDuration: const Duration(milliseconds: 400),
      ),
    );
  }
}
