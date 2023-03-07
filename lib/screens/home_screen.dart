// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:liberty_furies/domain%20pages/speechesPage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> profileImage = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhmytC7a0Fz5P0FQ0MEDpjA1XeP5LNComl2rXK3epyqZUIbwZ1KT2VbFpPP22AP0vBRsw&usqp=CAU"
    "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80",
    "https://ienglishstatus.com/wp-content/uploads/2022/03/Attitude-Profile-Whatsapp-DP-Boys.jpg",
    "https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?cs=srgb&dl=pexels-masha-raymers-2726111.jpg&fm=jpg",
    "https://cdn2.sharechat.com/BestPhotoProfile_255cf04_1602867049097_sc_cmprsd_40.jpg"
  ];
  List<String> profileName = [
    "INSIDER",
    "MARSH",
    "SPARK",
    "RAMESH",
    "AKASH"
  ];
  List<String> description = [
    "She is the first woman to win Miss World and Beauty with a Purpose together and the fourth Beauty with a Purpose winner from India at Miss World. she was crowned Miss World 2017 on November 18, 2017, in Sanya, China, by outgoing titleholder Miss World 2016, Stephanie Del Valle of Puerto Rico. She became the sixth Indian woman to be crowned Miss World, and the first since Priyanka Chopra in 2000.",
    "On September 25, 2018, Hima Das was conferred with the Arjuna Award by the President of India. The Arjuna Award is given to athletes who have made the country proud on the international stage, and is considered one of the nation's highest honours.",
    "Kalpana Chawla(17 March 1962 - 1 February 2003) was an Indian-born American astronaut and aerospace engineer who was the first women of indian origin to go to space.",
    "She is the only Indian badminton player to win an Olympic medal, the first Indian to reach the BWF World Championships final, and the only Indian to win the BWF World Junior Championships. Nehwal became the first Indian female and the youngest Asian to win a four-star championship in 2006.",
    "Srushti Deshmukh is renowned as one of the youngest UPSC champions to attain AIR 5 in CSE 2018 at her very first attempt. She achieved this feat at a very young age of 23. She chose Sociology as her optional subject and belongs to the native state of Madhya Pradesh."
  ];
  List<String> image = [
    "https://www.thestatesman.com/wp-content/uploads/2017/11/Manushi-Chhillar-517_afp.jpg",
    "https://cdn.dnaindia.com/sites/default/files/styles/full/public/2018/09/26/735799-25j18bydel017.jpg",
    "https://www.kcgmc.edu.in/KCGMCImg/1230.jpg",
    "https://cdn.sportslumo.com/wp-content/uploads/2021/07/23000230/SainaNehwal-Twitter%40WeAreTeamIndia-compressed-1024x576.jpg",
    "https://upscbuddy.com/wp-content/uploads/2019/04/Srushti-Jayant-Deshmukh-IAS-Topper.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://connectuspray.s3.amazonaws.com/wlpr2/7.png"),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 160.0),
                  child: Center(
                    child: Container(
                      height: 30,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white70,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 35.0),
                            child: Text(
                              "I will",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Color.fromARGB(255, 2, 173, 91),
                            weight: 10,
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 350.0, top: 50),
                  child: Icon(
                    Icons.search,
                    size: 35,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
            //Image.network("https://connectuspray.s3.amazonaws.com/wlpr2/7.png",fit: BoxFit.cover,),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 131,
                  //color: Colors.yellow,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.4, color: Colors.grey.shade400),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Container(
                          height: 45,
                          width: 100,
                          child: Image.network(
                              "https://cdn-icons-png.flaticon.com/512/201/201614.png"),
                        ),
                      ),
                      Text("Edu & Training",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                Container(
                  height: 90,
                  width: 130,
                  //color: Colors.yellow,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.4, color: Colors.grey.shade400),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Container(
                          height: 45,
                          width: 100,
                          child: Image.network(
                              "https://cdn-icons-png.flaticon.com/512/1376/1376523.png"),
                        ),
                      ),
                      Text("Mentorship",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                Container(
                  height: 90,
                  width: 131,
                  //color: Colors.yellow,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.4, color: Colors.grey.shade400),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Container(
                          height: 45,
                          width: 100,
                          child: Image.network(
                              "https://as2.ftcdn.net/v2/jpg/01/38/26/53/1000_F_138265357_dvVPtWBz5VQXBC0j1a5acIxp488Z2XjW.jpg"),
                        ),
                      ),
                      Text("Questioning",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => VideoSpeeches())));
                  },
                  child: Container(
                    height: 90,
                    width: 131,
                    //color: Colors.yellow,
                    decoration: BoxDecoration(
                      border:
                          Border.all(width: 0.4, color: Colors.grey.shade400),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Container(
                            height: 45,
                            width: 100,
                            child: Image.network(
                                "https://as1.ftcdn.net/v2/jpg/00/80/56/28/1000_F_80562883_PAJJNiVcccBaPnU1ee1vNredJ5mJkYyz.jpg"),
                          ),
                        ),
                        Text("Speeches",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 90,
                  width: 130,
                  //color: Colors.yellow,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.4, color: Colors.grey.shade400),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Container(
                          height: 45,
                          width: 100,
                          child: Image.network(
                              "https://cdn-icons-png.flaticon.com/512/2541/2541988.png"),
                        ),
                      ),
                      Text("User Records",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                Container(
                  height: 90,
                  width: 131,
                  //color: Colors.yellow,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.4, color: Colors.grey.shade400),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Container(
                          height: 45,
                          width: 100,
                          child: Image.network(
                              "https://cdn-icons-png.flaticon.com/512/6703/6703900.png"),
                        ),
                      ),
                      Text("Certificate",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 12,
            ),

            Container(
              height: 1650,
              //color: Colors.white,
              decoration: BoxDecoration(
                color: Colors.white,
              ),

              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  children: [
                    Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Get Inspired",
                                style: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.bold),
                              )),
                        ),
                    for(int i=0;i<(profileImage.length);i++)
                    Column(  
                      children: [
                        //for(int i=0;i<profileImage.length;i++)
                        Container(
                          height: 60,
                          child: Row(
                            children: [
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          profileImage[i]),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(45),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            profileName[i],
                                            style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                                fontSize: 15),
                                          ),
                                          Icon(
                                            Icons.post_add,
                                            color: Colors.black54,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 8.0),
                                            child: Text(
                                              "posted a video",
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 14),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 90.0),
                                            child: Icon(
                                              Icons.person_add,
                                              color: Colors.black54,
                                            ),
                                          ),
                                          Icon(
                                            Icons.more_vert,
                                            color: Colors.black54,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Yesterday",
                                          style: TextStyle(
                                              color: Colors.black54, fontSize: 14),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                    //for(int i=0;i<image.length;i++)
                        Container(
                          height: 180,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    image[i]),
                                fit: BoxFit.cover),
                          ),
                        ),
                    //for(int i=0;i<description.length;i++)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 10),
                          child: Text(
                            description[i],
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
          ],
        ),
                  ],
                ),
      ),
            ),
          ],
        ),
      ),
    );
  }
}
