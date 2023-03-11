import 'package:flutter/material.dart';
import 'package:liberty_furies/edu&training.dart/carrierCouncelling.dart';
import 'package:liberty_furies/edu&training.dart/importance.dart';
import 'package:liberty_furies/edu&training.dart/leadershipPage.dart';
import 'package:liberty_furies/edu&training.dart/selfDefence.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  List<String> image = [
    "https://leverageedu.com/blog/wp-content/uploads/2020/04/Types-of-Education.jpg",
    "https://engeniusonline.com/wp-content/uploads/2021/11/counsuling.png",
    "https://images.squarespace-cdn.com/content/v1/5ce2b5be7fc3b40001578ce7/1572021491906-W2Y96QNWGW27OPDIT8JR/karate-2578819_640-1.jpg",
    "https://todaysparent.mblycdn.com/tp/resized/2016/02/1600x900/8-ways-to-deal-with-your-high-needs-baby-2560x1920-e1492029772633.jpg"
  ];
  List<String> name = [
    "Leadership","Carrier Councelling","Self Defence","Importance of Women"
  ];
  List<String> text1 = [
    "Leadership Skills","Carrier Councelling &","Self Defence","Importance of Women"
  ];
  List<String> text2 = [
    "& it's Importance","rise of new India","& protection","in Shaping the Society"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 6, 36, 60),
              Colors.black,
            ])
                //color: Colors.black87,
                ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 36.0, left: 20),
                child: Text(
                  "Education",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 38.0, left: 140),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 25,
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 105.0, left: 20, right: 20),
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () {}, icon: Icon(Icons.search_rounded)),
                filled: true,
                fillColor: Colors.white,
                focusColor: Colors.white,
                hoverColor: Colors.white,
                hintText: "Search",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(45)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0, left: 20),
            child: Text(
              "Studying & Training",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 240.0, left: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < 4; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: InkWell(
                        onTap: (){
                          if(name[i].toString() == "Leadership"){
                            Navigator.push(context, MaterialPageRoute(builder: ((context)=> LeadershipPage())));
                          }else if(name[i].toString() == "Carrier Councelling"){
                            Navigator.push(context, MaterialPageRoute(builder: ((context)=> CarrierCouncellingPage())));
                          }
                          else if(name[i].toString() == "Self Defence"){
                            Navigator.push(context, MaterialPageRoute(builder: ((context)=> SelfDefencePage())));
                          }else{
                            Navigator.push(context, MaterialPageRoute(builder: ((context)=> ImportancePage())));
                          }
                        },
                        child: Container(
                          height: 300,
                          width: 270,
                          //color: Colors.white,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 150,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15)),
                                    child: Image.network(
                                        image[i],
                                        fit: BoxFit.cover,
                                        height: 50,
                                        width: 270)),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      name[i],
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    )),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20.0, left: 15),
                                child: Text(
                                  text1[i],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text(
                                  text2[i],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15.0, top: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      "4 of 8 lessons",
                                      style: TextStyle(
                                          color: Colors.black54, fontSize: 15),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 50.0),
                                      child: Container(
                                        height: 8,
                                        width: 80,
                                        //color: Colors.red,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(13),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 36.0),
                                          child: Container(
                                            width: 45,
                                            //color: Colors.red,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(13),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    //Padding(padding: EdgeInsets.only(right: 10)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  //SizedBox(width: 10),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 570.0, left: 15),
            child: Text(
              "Achievements",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 620.0),
            child: ListTile(
              onTap: () {},
              leading: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn2.vectorstock.com/i/1000x1000/71/56/quiz-time-icon-emblem-logo-in-brush-stroke-style-vector-33267156.jpg"),
                        fit: BoxFit.cover)),
              ),
              title: Text(
                "Quick Quiz",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Colors.white),
              ),
              subtitle: Text(
                "Play and win stars",
                style: TextStyle(color: Colors.white60),
              ),
              trailing: Icon(
                Icons.star,
                color: Colors.yellow,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 690.0),
            child: ListTile(
              onTap: () {},
              leading: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://thumbs.dreamstime.com/b/basic-rgb-161937129.jpg"),
                        fit: BoxFit.cover)),
              ),
              title: Text(
                "Scoreboard",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Colors.white),
              ),
              subtitle: Text(
                "See your position in scoreboard",
                style: TextStyle(color: Colors.white60),
              ),
              trailing: Icon(
                Icons.scoreboard,
                color: Colors.yellow,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
