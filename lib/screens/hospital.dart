// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:liberty_furies/pages/doctorDashboard.dart';

class DoctorHomePage  extends StatelessWidget {

  List symptoms=[
    "Welcome"
  ];
  List image =[
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
    "doctors.png",
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFF2F3F4),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
          Padding(padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Welcome", style: TextStyle(
          fontSize: 35,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,
        ),),
       /* CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage("assets/images/doctor1.jpg"),
        )*/
      ],
      )
      ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [BoxShadow(
                        color: Colors.black26,
                        blurRadius: 7,
                        spreadRadius: 5,

                      ),]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.add,
                          color: Color(0xFF7165D6),
                          size: 36,
                          ),
                        ),
                        SizedBox( height: 32,),
                        Text("Clinic Visit",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                        SizedBox( height: 5,),
                        Text("Make an Appointment",
                          style: TextStyle(

                            color: Colors.black54,
                          ),
                        )

                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Color(0xFF241571),
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [BoxShadow(
                          color: Colors.black26,
                          blurRadius: 7,
                          spreadRadius: 5,

                        ),]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(9),
                          decoration: BoxDecoration(
                            color: Color(0xFFF0EEFA),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.home_filled,
                            color: Color(0xFF241571),
                            size: 36,
                          ),
                        ),
                        SizedBox( height: 32,),
                        Text("Home Visit",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox( height: 5,),
                        Text("Call the Doctor home",
                          style: TextStyle(

                            color: Colors.white54,
                          ),
                        )

                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox( height: 25,),
            Padding(padding: EdgeInsets.only(left: 15,),
              child: Text("What are your Symptoms?",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),),

            ),
            SizedBox( height: 70,
              child: ListView.builder(shrinkWrap:true,scrollDirection: Axis.horizontal,
                itemCount: symptoms.length,
                itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 9,horizontal:14),
                    padding: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Color(0xFFF4F6FA),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        spreadRadius: 2,
                        color: Colors.black12,

                      ),
                    ],
                  ),
                  child:Center (
                  child: Text(symptoms[index],
                  style: TextStyle(
                    fontSize:16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),),

                  ),
                );

              },),
            ),
            SizedBox(height: 15,),
            Padding(padding: EdgeInsets.only(left: 16),
            child: Text("Popular Doctors",style:TextStyle(fontSize: 23,
            fontWeight: FontWeight.w600,
            color:Colors.black54,

            )
            ),
            ),
            GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
              itemCount: 4,
                shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,index){
                  return InkWell(
                    onTap: ( ){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorDashboard()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2
                          ),
                        ]
                      ),
                     child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:[
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("assets/images/${image[index]}"),
                          ),
                          Text("Dr. Doctor Name",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          ),
                          Text("Therapist",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.star,color: Colors.amber,),
                              Text("4.9",
                              style:TextStyle(
                                color: Colors.black45,


                              ))
                            ],

                          ),

                        ],
                      ),
                    ),
                  );
              },
            ),
        ]),
      ),
    );
  }
}