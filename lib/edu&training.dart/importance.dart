import 'package:flutter/material.dart';
import 'package:liberty_furies/edu&training.dart/applargrtext.dart';
import 'package:liberty_furies/edu&training.dart/apptext.dart';


import 'colors.dart';

class Importance extends StatefulWidget {
  const Importance({Key? key}) : super(key: key);

  @override
  _ImportanceState createState() => _ImportanceState();
}

class _ImportanceState extends State<Importance> {
  List images=[
    "unsplash.jpg",
    "women01.jpg",
    "womenaseducators.jpg",
    "women20.jpg",
    "women3.jpg",
    "women4.jpg",
    "women5.jpg",

  ];
  List largetexts=[
    "Importance of women\nin society",
    "The Role of Women\nas Caregivers",
    "The Role of Women\nas Educators",
    "The Role of Women in the\nWorkforce and Economy",
    "The Role of Women\nin Politics",
    "The role of women in\nGender equality",
    "Conclusion"



  ];
  List texts=[
    "Throughout history, the central role of women in society has ensured the stability, progress and long-term development of nations. Globally, women comprise 43 percent of the world’s agricultural labor force – rising to 70 percent in some countries. For instance, across Africa, 80 percent of the agricultural production comes from small farmers, most of whom are rural women. It’s widely accepted that agriculture can be the engine of growth and poverty reduction in developing nations. Women, notably mothers, play the largest role in decision-making about family meal planning and diet. And, women self-report more often their initiative in preserving child health and nutrition.",
    "Women are the primary caregivers of children and elders in every country of the world. International studies demonstrate that when the economy and political organization of a society change, women take the lead in helping the family adjust to new realities and challenges. They are likely to be the prime initiator of outside assistance, and play an important role in facilitating (or hindering) changes in family life.“Rural women play a key role in supporting their households and communities in achieving food and nutrition security, generating income, and improving rural livelihoods and overall well-being.” – UN Womenwatch Organization",
    "Educated women can bring about a positive change in society. They are more likely to educate their children and provide them with better health and nutrition, which ultimately contributes to the development of the society.Basic education is key to a nation’s ability to develop and achieve sustainability targets. Research has shown that education can improve agricultural productivity, enhance the status of girls and women, reduce population growth rates, enhance environmental protection, and widely raise the standard of living.",
    "Today, the median female share of the global workforce is 45.4 percent. Women's formal and informal labor can transform a community from a relatively autonomous society to a participant in the national economy. Despite significant obstacles, women’s small businesses in rural developing communities not only can be an extended family’s lifeline, but can form a networked economic foundation for future generations. The role of women in the urban and rural workforce has expanded exponentially in recent decades.\nWomen make a significant contribution to the economy through paid and unpaid work. They are involved in various industries and sectors such as healthcare, education, manufacturing, and agriculture. Women entrepreneurs are also making a mark in the business world.",
    "Women's political participation is crucial for the effective functioning of democratic societies. Women's perspectives and experiences are important in decision-making processes and help to ensure that policies and laws reflect the needs and interests of all members of society.",
    "Women's empowerment and gender equality are essential for the development of a just and equal society. When women are empowered, they can contribute to the betterment of their own\nlives,their families, and\ntheir communities.",
    "Overall, women's contributions to society are multifaceted and essential for its well-being and progress. It is important to recognize and value their contributions and to create an enabling environment that allows them to fully participate in all aspects of society.“When women are empowered and can claim their rights and access to land, leadership, opportunities and choices, economies grow, food security is enhanced and prospects are improved for current and future generations.”– Michelle Bachelet, Under-Secretary-General and Executive Director of UN Women"

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_,index){
            return Container(
              width: double.maxFinite,height:double.maxFinite ,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/"+images[index]
                      ),
                      fit: BoxFit.cover
                  )
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 150,left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: largetexts[index],),
                        // AppText(text: "Mountain",size: 30,),
                        SizedBox(height: 15,),
                        Container(
                          width: 320,
                          child: AppText(
                            text: texts[index],
                            //color: ,

                          ),
                        )
                      ],
                    ),
                    Column(
                      children: List.generate(7, (indexDots) {
                        return Container(
                            margin: const EdgeInsets.only(bottom: 2),
                            width: 8,
                            height: index==indexDots?25:8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color:index==indexDots?AppColors.mainColor:AppColors.mainColor.withOpacity(0.3)
                            )
                        );

                      }),

                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

