// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CarrierCouncellingPage extends StatefulWidget {
  const CarrierCouncellingPage({super.key});

  @override
  State<CarrierCouncellingPage> createState() => _CarrierCouncellingPageState();
}

class _CarrierCouncellingPageState extends State<CarrierCouncellingPage> {
  List<String> proffesion1 = ["Civil Services","Defence","Engineer","Artist","Interior Designer"];
  List<String> proffesion2 = ["Doctor/Surgeon","Enterpreneur","Lawyer","Banking","Teaching"];
  List<String> image1 = ["assets/images/ias.jpg","assets/images/defence.jpg","assets/images/engineer.png","assets/images/artist.jpg","assets/images/interior_design.jpg"];
  List<String> image2 = ["assets/images/surgeon.jpg","assets/images/enterprenuer.jpeg","assets/images/lawyer.jpg","assets/images/banking.jpg","assets/images/teacher.jpg"];
  List<String> description1 = [
    "Joining the civil service is an\nexcellent way to make a difference\nin the world. It offers an opportunity to\nserve the community in a meaningful way\nand make an impact on the lives of many\npeople. The civil service also offers\nexcellent job security, benefits, and\nopportunities for advancement. Working in the\ncivil service also gives you the chance to develop\nyour leadership and organizational skills.",
    
    "Joining the defence forces is a great\nway for women to gain valuable skills,\nexperience, and a sense of purpose.\n Women who join the defence forces can benefit\nfrom the physical and mental challenges,\nresponsibility, and camaraderie that\ncome with such a career. Additionally, a\ncareer in the defence forces can provide\nwomen with the opportunity to serve their country and\nmake a lasting contribution to society. Furthermore,\nthe defence forces offer attractive salaries and\nbenefits, and provide women with the chance to grow\nprofessionally and personally.",
    
    "Becoming an engineer can provide\nwomen with a wide range of opportunities.\nEngineering is a field that is in high\n demand, and offers good financial and job\nsecurity. It also provides a diverse range of\ncareer paths and specialties, meaning\nthat women can find a career that is ideal\nfor them. Additionally, engineering\nprovides the opportunity for women to lead, innovate, and\nsolve problems, making a real and lasting impact\non the world.",
    
    "Becoming an artist like a singer or\ndancer is a great way to express yourself,\nand can be incredibly rewarding as\n a profession. It allows you to tap into you\n creative side, cultivate your talents, and\nshare your artistry with the world. For\nmany female artists, it is also a way to\nempower themselves and others, to inspire\nand to make a difference. It can be a chance to make a\nliving from doing something you're passionate\nabout.",
    
    "Interior design is a great career\nchoice for women who want to combine their\ncreativity and technical skills with\n their natural eye for beauty and style. Interior\ndesign is a versatile career that allows\nwomen to express their personal flair\nand individuality in an ever-changing aesthetic\nlandscape. With the right training and\ncertification, women can create stunning and functional\nspaces for any style. Women can also use\ntheir interior design skills to enter into a wide\nrange of fields, from home staging to architectural\ndesign. Women can also use their interior design skills to\ncreate their own businesses, giving them the freedom\nto create their own schedules and design the spaces\nof their dreams.",
    
  ];
  List<String> description2 = [
    
    "Joining the medical profession as\na doctor or surgeon is an incredibly\nrewarding career. It offers the opportunity\n to make a positive difference in people's\nlives, to use your knowledge and skills\nto provide quality healthcare, and to\nbe part of a team of dedicated professionals.\nAs a doctor or surgeon, you can also\ntake advantage of the variety of specialties available,\nallowing you to tailor your career path to best\nsuit your interests and abilities. As a female\ndoctor or surgeon, you can also be a role model for\nother women, showing them that it is possible to succeed\nin a traditionally male-dominated field.",
    
    "Females who become entrepreneurs\nhave the opportunity to create a career and\nlife that are personally rewarding.\n By being their own boss, they can shape their\nown destiny and create their own success.\nThey can also bring to life ideas and\nvisions that may not otherwise get off the\nground. Entrepreneurship also offers\nthe potential to earn more money than a traditional job,\nwhile also allowing the satisfaction of helping to\ncreate something valuable.",
    
    "Becoming a lawyer for females can\nbe very rewarding. With a career in law,\nyou can make a positive difference in\n the lives of people who have been wronged or\ntreated unfairly. You can also use your legal\nskills to protect the rights of women\nand promote gender equality. By advocating\nfor women's rights, you can help create\na more equitable society and contribute to a more just\nand fair world. The personal satisfaction and\nprofessional success you can gain from a career in\nlaw make it a great choice for female lawyers.",
    
    "Banking is an amazing career path\nfor females, as it offers a range of\nopportunities in a variety of roles and\n industries. With a focus on customer service,\nfinancial analysis, and regulatory compliance,\nbanking offers security and growth\npotential. It also provides a great opportunity\nto build strong relationships with clients,\nwhile allowing you to use your knowledge and expertise\nto help others make smart financial\ndecisions.",
    
    "Teaching is an incredibly rewarding\ncareer path for females. It is a great\nway to make a positive impact on the world\n and to help young people to reach their\npotential. Teaching also offers great job\nsecurity, as teachers are in high demand.\nTeachers also enjoy a flexible work schedule and\nthe opportunity to build relationships\nwith students and colleagues."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.grey.shade200,
                Color.fromARGB(255, 22, 57, 85),
              ],
            ),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 240,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://www.shutterstock.com/image-photo/career-adviser-assembling-word-wooden-260nw-1663753210.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, left: 330),
                    child: PopupMenuButton(
                      icon: Icon(Icons.menu, size: 30, color: Colors.black),
                      itemBuilder: (context) => [
                        PopupMenuItem(
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Mentors Info",
                                  style: TextStyle(color: Colors.black),
                                ))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 180.0),
                    child: Center(
                        child: Text("Councelling",
                            style: TextStyle(
                                fontSize: 34,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Lobster"))),
                  )
                ],
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0, left: 20),
                    child: Text("Career Oppurtunities",
                        style:
                            TextStyle(fontSize: 22, fontWeight: FontWeight.w800)),
                  )),
              SizedBox(height: 30),
              for (int i = 0; i < 5; i++)
                Column(
                  children: [
                    Text(
                      "${proffesion1[i]}",
                      style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 25),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Container(
                                height: 300,
                                width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(image1[i]),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              children: [
                                Text(
                                  description1[i],
                                  style: TextStyle(
                                      fontSize: 15, fontFamily: "Lobster"),
                                ),
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 150.0),
                                      child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Read more",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          )),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Text("${proffesion2[i]}",
                        style:
                            TextStyle(fontSize: 19, fontWeight: FontWeight.w700)),
                    SizedBox(height: 25),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              children: [
                                Text(
                                  description2[i],
                                  style: TextStyle(
                                      fontSize: 15, fontFamily: "Lobster"),
                                ),
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 100),
                                      child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Read more",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          )),
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Container(
                                  height: 300,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            image2[i]),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
