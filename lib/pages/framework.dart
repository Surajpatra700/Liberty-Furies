import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:liberty_furies/screens/achievement.dart';
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
    DoctorHomePage(),
    CallScreen(),
    HomeScreen(),
    Achievement(),
    UserDetail(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Icon(
            Icons.local_hospital,
            color: Colors.black,
          ),
          Icon(
            Icons.phone,
            color: Colors.black,
          ),
          Icon(
            Icons.home,
            color: Colors.black,
          ),
          Icon(
            Icons.star_border_outlined,
            color: Colors.black,
          ),
          Icon(
            Icons.person,
            color: Colors.black,
          ),
        ],
        animationDuration: Duration(milliseconds: 400),
      ),
    );
  }
}
