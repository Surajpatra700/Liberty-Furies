import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MentorDashboard extends StatelessWidget {
  List image =[
    "mentor1.jpg",
    "mentor2.jpg",
    "mentor3.jpg",
    "mentor4.jpg",
    "mentor5.jpg",
  ];
  Future<void> _launchUniversalLinkIos(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(url);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        child: Column(
        children: [
         SizedBox(height: 60),
          Padding(padding: EdgeInsets.symmetric(horizontal: 30),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios_new,color:Colors.white,
                  size: 25, ),
                ),
                InkWell(
                  onTap: () async {
                    final Uri url=Uri(
                        scheme: 'tel',
                        path: "9784012589"
                    );
                    if(await canLaunchUrl(url)){
                    await launchUrl(url);
                    }else {
                    print('cannot launch this');
                    }
                  },
                  child: Icon(Icons.call,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage("assets/images/mentor1.jpg"),
                ),
                SizedBox(height: 25),
                Text("Mr/Ms. Mentor name",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.white
    ),),
               SizedBox(height: 5,),
                Text("Mentor",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),),
                SizedBox(height: 15,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                  SizedBox(width: 0,),
                  Icon(Icons.star,color:Colors.amber,),
                  Text("4.9",style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.w400,color: Colors.white),),

                    ]
                )],
            ),
            )]
        )
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
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text("About Mentor",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600
                                ),),
                              SizedBox(height: 5,),
                              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
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

                                  SizedBox(width: 5,),
                                  Text("(5)",style: TextStyle(fontSize: 16,
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
                                                  title: Text("Mr/Ms Mentor",style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),),
                                                  subtitle: Text("2 day ago"),
                                                  trailing:Row(
                                                    mainAxisSize:MainAxisSize.min ,
                                                    mainAxisAlignment:MainAxisAlignment.center,
                                                  ),
                                                ),
                                                SizedBox(height: 6,),
                                                Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                                                  child:Text(
                                                    maxLines: 2,"A very great and professional Mentor.Many many thanks to the Mentor",style: TextStyle(color: Colors.black),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),

                                        );
                                      }
                                  )
                              ),
                              SizedBox(height:20,),
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
                                  title: Text("Gurugram,Haryana",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  )
                              ),
                              SizedBox(height: 15,),
                              Stack(
                                children: [
                                  Container(
                                      height: 50,
                                      child: Text("Phone No.",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)),
                                  // Padding(
                                  //   padding: const EdgeInsets.only(left: 320.0),
                                  //   child: FloatingActionButton(
                                  //       backgroundColor: Colors.teal,
                                  //       foregroundColor: Colors.white,
                                  //       child: Icon(Icons.message),
                                  //       splashColor: Colors.yellow,
                                  //
                                  //       onPressed:() async {
                                  //         // final Uri url=Uri(
                                  //         //     scheme: 'sms',
                                  //         //     path: "99999999"
                                  //         // );
                                  //         // if(await canLaunchUrl(url)){
                                  //         //   await launchUrl(url);
                                  //         // }else {
                                  //         //   print('cannot launch this');
                                  //         // }
                                  //         PopupMenuButton(
                                  //           icon: Icon(Icons.message),
                                  //
                                  //           itemBuilder: (context)=>[
                                  //             PopupMenuItem(
                                  //                 value: 1,
                                  //                 child: Icon(Icons.sms),
                                  //             ),
                                  //             PopupMenuItem(
                                  //               value: 2,
                                  //               child: Icon(Icons.flight),
                                  //             ),
                                  //             PopupMenuItem(
                                  //               value: 3,
                                  //               child: Icon(Icons.square),
                                  //             ),
                                  //             PopupMenuItem(
                                  //               value: 4,
                                  //               child: Icon(Icons.circle),
                                  //             ),
                                  //           ],
                                  //         );
                                  //
                                  //       }
                                  //   ),
                                  // ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 300),
                                    child: Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        boxShadow:[ BoxShadow(
                                          blurRadius: 0,
                                          spreadRadius: 2,
                                        color: Colors.teal,)]

                                      ),
                                      child: PopupMenuButton(
                                                  icon: Icon(Icons.connect_without_contact_sharp,size:40,color: Colors.white,),

                                                  itemBuilder: (context)=>[
                                                    PopupMenuItem(
                                                        value: 1,
                                                      child: IconButton(

                                                        icon: Icon(FontAwesomeIcons.instagram,color: Color(0xFFE91E63),),

                                                        onPressed: ()  {
                                                          _launchUniversalLinkIos('https://www.instagram.com/');
                                                        },

                                                      ),

                                                    ),
                                                    PopupMenuItem(
                                                      value: 2,
                                                      child: IconButton(

                                                        icon: Icon(FontAwesomeIcons.facebookMessenger,color: Colors.indigo,),

                                                        onPressed: () { 
                                                          _launchUniversalLinkIos('https://www.facebook.com/');
                                                        },

                                                      ),
                                                    ),
                                                    PopupMenuItem(
                                                      value: 3,
                                                      child: IconButton(

                                                        icon: Icon(FontAwesomeIcons.telegram,color: Colors.blue,),

                                                        onPressed: () {
                                                          _launchUniversalLinkIos('https://telegram.me/libertyfuries');
                                                        },

                                                      ),
                                                    ),
                                                    PopupMenuItem(
                                                      value: 4,
                                                      child: IconButton(

                                                        icon: Icon(FontAwesomeIcons.message,color: Colors.amber,),

                                                        onPressed: () async {
                                                          final Uri url=Uri(
                                                                 scheme: 'sms',
                                                                path: "9784012589"
                                                               );
                                                               if(await canLaunchUrl(url)){
                                                                await launchUrl(url);
                                                                }else {
                                                               print('cannot launch this');
                                                               }
                                                        },

                                                      ),
                                                    ),
                                                  ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 16.0,left: 20),
                                    child: ListTile(
                                      leading: Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Color(0xFFF0EEFA),
                                            shape: BoxShape.circle
                                        ),
                                        child: Icon(Icons.call,color: Colors.black54,size: 32,),
                                      ),
                                      title: Text("9784012589",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),

                                    ),
                                  ),
                                ],

                              ),

]
                              ),

                        ))],
                          ),
                        ),
                      );
  }
}
