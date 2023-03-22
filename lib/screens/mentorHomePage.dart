
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:liberty_furies/actions/Utils.dart';
import 'package:liberty_furies/pages/framework.dart';
import 'package:path/path.dart';
import 'package:url_launcher/url_launcher.dart';

class MentorHomePage extends StatefulWidget {
  const MentorHomePage({super.key});

  @override
  State<MentorHomePage> createState() => _MentorHomePageState();
}

class _MentorHomePageState extends State<MentorHomePage> {
  final searchController = TextEditingController();
  String search = "";
  final databaseRef = FirebaseDatabase.instance.ref("mentors");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 270,
                    decoration: BoxDecoration(
                      // gradient: LinearGradient(colors: [
                      //   Color.fromARGB(255, 52, 62, 119),
                      //   Color.fromARGB(255, 10, 16, 45),
                      // ]),
                      image: DecorationImage(image: NetworkImage("https://img.freepik.com/premium-photo/shot-two-business-women-working-together-with-laptop-office_519356-228.jpg?w=2000"),fit: BoxFit.cover),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 20.0,left: 12),
                    child: IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> FrameworkScreen()));
                    }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 25)),
                  ),

                  Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12,right: 12,top: 240),
                  child: TextFormField(
                    controller: searchController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Search for domain",
                      suffixIcon: Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35)),
                    ),
                    onChanged: (String? value) {
                      print(value);
                      setState(() {
                        search = value.toString();
                      });
                    },
                  ),
                ),
              ),
                ],
              ),
              
              SizedBox(height: 35),
              Text(
                "Mentors List",
                style: TextStyle(
                    color: Color.fromARGB(255, 8, 26, 40),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 25),
              Expanded(
                child: FirebaseAnimatedList(
                  query: databaseRef,
                  itemBuilder: ((context, snapshot, animation, index) {
                    late String domain =
                        snapshot.child("domain").value.toString();
                    if (searchController.text.isEmpty) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 3.0, horizontal: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Card(
                              elevation: 2.5,
                              child: ListTile(
                                onTap: () async{
                                  final Uri url = Uri(
                                    scheme: "tel",
                                    path: snapshot.child("phone").value.toString(),
                                  );
                                    if(await canLaunchUrl(url)){
                                      await launchUrl(url);
                                    }else{
                                      Utils(check: false).toastMessage("Sorry can't launch this url");
                                    }
                                },
                                tileColor: Colors.white,
                                leading: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    image: DecorationImage(
                                        image: NetworkImage(snapshot
                                            .child("url")
                                            .value
                                            .toString()),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                title: Center(
                                    child: Column(
                                  children: [
                                    Text(
                                      snapshot.child("name").value.toString(),
                                      style: TextStyle(
                                          color: Colors.deepPurple,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      snapshot
                                          .child("proffesion")
                                          .value
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "(${snapshot.child("year").value.toString()}+ yrs of experience)",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 13.5,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 18,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 18,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      snapshot.child("domain").value.toString(),
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                )),
                                subtitle: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.only(left: 65.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.phone),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          snapshot
                                              .child("phone")
                                              .value
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                                trailing: InkWell(
                                  onTap: () async{
                                    if(snapshot.child("linkedin").value.toString() == "no"){
                                      Utils(check: false).toastMessage("Linked account not provided");
                                    }else{
                                      await launchUrl(Uri.parse(snapshot.child("linkedin").value.toString()));
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://cdn-icons-png.flaticon.com/512/4494/4494497.png"),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    } else if (domain
                        .toLowerCase()
                        .contains(searchController.text.toLowerCase())) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 3.0, horizontal: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Card(
                              elevation: 2.5,
                              child: ListTile(
                                onTap: () async{
                                  final Uri url = Uri(
                                    scheme: "tel",
                                    path: snapshot.child("phone").value.toString(),
                                  );
                                    if(await canLaunchUrl(url)){
                                      await launchUrl(url);
                                    }else{
                                      Utils(check: false).toastMessage("Sorry can't launch this url");
                                    }
                                },
                                tileColor: Colors.white,
                                leading: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    image: DecorationImage(
                                        image: NetworkImage(snapshot
                                            .child("url")
                                            .value
                                            .toString()),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                title: Center(
                                    child: Column(
                                  children: [
                                    Text(
                                      snapshot.child("name").value.toString(),
                                      style: TextStyle(
                                          color: Colors.deepPurple,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      snapshot
                                          .child("proffesion")
                                          .value
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "(${snapshot.child("year").value.toString()}+ yrs of experience)",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 13.5,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 18,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 18,
                                        ),
                                      ],
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text: "",
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: domain,
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.w500)),
                                        ],
                                      ),
                                    ),
                                    // Text(
                                    //   domain,
                                    //   style: TextStyle(
                                    //       color: Colors.black54,
                                    //       fontSize: 14,
                                    //       fontWeight: FontWeight.w400),
                                    // ),
                                  ],
                                )),
                                subtitle: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.only(left: 65.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.phone),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          snapshot
                                              .child("phone")
                                              .value
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                                trailing: InkWell(
                                  onTap: () async{
                                    if(snapshot.child("linkedin").value.toString() == "no"){
                                      Utils(check: false).toastMessage("Linked account not provided");
                                    }else{
                                      await launchUrl(Uri.parse(snapshot.child("linkedin").value.toString()));
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://cdn-icons-png.flaticon.com/512/4494/4494497.png"),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    } else {
                      return Container();
                    }
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
