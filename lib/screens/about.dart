import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          Container(
      decoration: BoxDecoration(
      gradient: LinearGradient(colors: [
        Colors.indigo,
        Color(0xff000080),

      ]
          )
      ),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
      margin: EdgeInsets.only(top: 100,left: 30,right: 30 ,bottom: 70),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
        "About",
        style: TextStyle(
            fontSize: 50,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: <Shadow>[
        Shadow(
        offset: Offset(5.0, 5.0),
        blurRadius: 5.0,
        color: Colors.black,
      ),
            ]),
      ),
        SizedBox(height: 5,),
        Container(
          width: 320,
          child: Text(
            "Version:-1.0.0",
            style: TextStyle(
                fontSize: 18,

                color: Colors.grey),
          ),
        ),
      // AppText(text: "Mountain",size: 30,),
      SizedBox(height: 45,),
      Container(
      width: 335,
      child: Text(
        "Liberty Furies” is a new app developed for solving the problem of women. It can be used anywhere at any point of time. The app provides support for different safety services in one interface only. The app contains some features like location sharing and voice record and sharing features in which the location and voice record can be sent to guardian and nearby police station. This app ensures the safety of women. It helps to identify and call on resources to help the one out of dangerous situations. These reduce risk and bring assistance when user is in danger and provide facilities to send the location to the guardian and nearby police station. It contains mentorship and doctor page where user can connect with mentors and doctors if required. The app also contains an education and training page in which the user can be trained and educated to protect themselves.\n    The mission of this app is to create an application using newer and advanced technologies that ensures the safety of women protect them from being a victim of physical, emotional and sexual abuse.",
        style: TextStyle(
            fontSize: 19.5,

            color: Colors.white),
      ),
      //color: ,

      ),
      ])
      ],
      ),


      ),
    ))],
      ),
    );
  }
}
