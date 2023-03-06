import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class DoctorDashboard extends StatelessWidget {
  List image =[
    "assets/images/doctor1.jpg",
    "assets/images/doctor2.jpg",
    "assets/images/doctor3.jpg",
    "assets/images/doctor4.jpg",
    "assets/images/doctors.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFBA0600),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 30,
                        ),
                      ),
                      InkWell(
                        onTap: (){

                        },
                        child: Icon(Icons.more_vert,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/images/doctor4.jpg"),
                      ),
                      SizedBox(height: 20,),
                      Text("Dr. Doctor name",style: TextStyle( fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color : Colors.white)),
                      SizedBox( height: 5,
                      ),
                      Text("Gynaeologist",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.cyan,
                            shape: BoxShape.circle,
                          ),

                          child: IconButton(icon: Icon(Icons.call),
                          color: Colors.white, onPressed: () async{
                            final Uri url=Uri(
                              scheme: 'tel',
                              path: "99999999"
                            );
                            if(await canLaunchUrl(url)){
                              await launchUrl(url);
                            }else {
                              print('cannot launch this');
                            }
                            },
                          ),
                          ),
                          SizedBox(width: 25,),
                      Container(padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                         color: Colors.cyan,
                           shape: BoxShape.circle,
                           ),

                        child: IconButton(icon: Icon(Icons.message),
                          color: Colors.white, onPressed: () async{
                            final Uri url=Uri(
                                scheme: 'sms',
                                path: "99999999"
                            );
                            if(await canLaunchUrl(url)){
                              await launchUrl(url);
                            }else {
                              print('cannot launch this');
                            }
                          },
                      ),),
                        ],
                      )
                    ],
                  ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: MediaQuery.of(context).size.height/1.5,
              width: double.infinity,
              padding: EdgeInsets.only(top: 20,left: 15),
              decoration: BoxDecoration(
                  color: Color(0xFFF2F3F4),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("About Doctor",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),),
                  SizedBox(height: 5,),
                  Text("The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from ",
                  style: TextStyle(fontSize: 16,color: Colors.black54
                  ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Reviews",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                      SizedBox(width: 10,),
                      Icon(Icons.star,color:Colors.amber,),
                      Text("4.9",style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.w500),),
                      SizedBox(width: 5,),
                      Text("(143)",style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.w500,color: Color(0xFF7165D6)),

                      ),
                      Spacer(),
                      TextButton(onPressed: (){}, child: Text("See all",style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.w500,color: Color(0xFF7165D6))),
                      )
                    ],
                  ),
                  SizedBox(height: 165,
                  child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index){
                    return Container(
                      margin: EdgeInsets.all(10.00),
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),
                        ]
                      ),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 1.4,
                        child: Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar( radius: 30,
                                  backgroundImage: AssetImage("assets/images/${image[index]}"),
                              ),
                              title: Text("Dr. Doctor",style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),),
                              subtitle: Text("2 day ago"),
                              trailing:Row(
                                mainAxisSize:MainAxisSize.min ,
                                mainAxisAlignment:MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star, color: Colors.amber,
                                  ),Text("4.9",
                                  style: TextStyle(
                                    color: Colors.black38,
                                  ),)
                                ],
                              ),
                            ),
                            SizedBox(height: 6,),
                            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                            child:Text(
                              maxLines: 2,"A very great and professional Doctor.Many many thanks to the doctor",style: TextStyle(color: Colors.black),
                            ),
                            )
                          ],
                        ),
                      ),

                    );
                      }
                  )
                  ),
                  SizedBox(height: 15,),
                  Text("Location",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                  ListTile(
                    leading: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFFF0EEFA),
                        shape: BoxShape.circle
                      ),
                      child: Icon(Icons.location_on,color: Colors.black54,size: 32,),
                    ),
                    title: Text("SCBMCH,Cuttack",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ),
                  SizedBox(height: 15,),
                  Text("Phone No.",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                  ListTile(
                      leading: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color(0xFFF0EEFA),
                            shape: BoxShape.circle
                        ),
                        child: Icon(Icons.call,color: Colors.black54,size: 32,),
                      ),
                      title: Text("9999999999",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),

                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}