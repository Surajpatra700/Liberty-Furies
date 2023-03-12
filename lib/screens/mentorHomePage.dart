import 'package:flutter/material.dart';
import 'package:liberty_furies/pages/framework.dart';

import 'mentorDashboard.dart';


class MentorHomepage extends StatelessWidget {

  List image = [
    "mentor1.jpg",
    "mentor2.jpg",
    "mentor3.jpg",
    "mentor4.jpg",
    "mentor5.jpg",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      //backgroundColor: Color(0xFF000080),
      body: SingleChildScrollView(

        child: Container(
          //height: double.infinity,
          //color: Colors.transparent,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.lightBlue,
              Colors.indigo.shade600,
            ]),
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30,),
                  child: IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FrameworkScreen()));
                  }, icon: Icon(Icons.arrow_back_ios_new,weight:10,),color: Colors.white,),
                ),
                Padding(padding: EdgeInsets.only(left: 15,top: 50),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Welcome", style: TextStyle(
                          fontSize:32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white60,
                          fontStyle: FontStyle.italic,
                        ),),
                        /* CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/images/doctor1.jpg"),
          )*/
                      ],
                    )
                ),
                SizedBox(height: 15,),
                Padding(padding: EdgeInsets.only(left: 16,bottom: 35),
                  child: Text("Popular Mentors", style: TextStyle(fontSize: 23,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,

                  )
                  ),
                ),
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 210.0,
                  ),
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => MentorDashboard()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            color: Colors.white30,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.white30,
                                  blurRadius: 5,
                                  spreadRadius: 5
                              ),
                            ]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                  "assets/images/${image[index]}"),
                            ),
                            Text("Mr/Mrs Mentor Name",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            Text("Mentor",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.star, color: Colors.amber,),
                                Text("4.9",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black54,
                                    )),
                              ],

                            ),
                            SizedBox(height: 17),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ]),
        ),
      ),
    );
  }
}
