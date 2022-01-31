// ignore_for_file: prefer_const_constructors_in_immutables, file_names, unused_element, sized_box_for_whitespace, prefer_const_constructors, avoid_unnecessary_containers

import "package:flutter/material.dart";
import "./components/newsCard.dart";

class AllNews extends StatefulWidget {
  AllNews({Key? key}) : super(key: key);

  @override
  State<AllNews> createState() => _AllNewsState();
}

class _AllNewsState extends State<AllNews> {
  String r1 = """
  "Every Indian should now forget that he is a Rajput, a Sikh, or a Jat. He must remember that he is an Indian",~ Sardar Vallabhbhai Patel. 
On this day, year 1950 Constitution of India was adopted with a democratic government system. Thus, completing India's transition to become an independent republic. This year , the country will observe its 73rd "Ganatantra Diwas".
The Rajpath is the center of attention of the entire world as Majestic parades, drone shows and daredevil acts are performed that showcases India's defence capability, its rich cultural and social heritage. Different regiments of the Indian army along with the Navy and the Indian Air force march past dressed in full regalia, while our Honourable Commander-in-Cheif of the armed forces takes the salute. Isn't the patriot within you proud and ecstatic?
These celebrations are a reminder of the times our ancestors weren't free on their own land. How our brave fighters, our heroes fought hard enough to give us our freedom. The tricolor fluttering today costed us a lot of blood. So know your duty towards the nation and also your rights. 
Team HITian Inside wishes everyone a very Happy Republic Day. Jai Hind.
""";
  String r2 = """
  “It is blood alone that can pay the price of freedom”
Netaji Subash Chandra Bose, a true son of our motherland who gave new energy to the freedom struggle, who often hailed as one of the most iconic leaders, hardly requires any introduction. A well known novelist who avowed us that “freedom is not given, it is taken”
Born on January 23, 1897, Subhas Chandra Bose's patriotism, call for freedom and obdurate refusal to stop before achieving the desired goal have made him a hero, a reputation that has remained intact even after all these years. Often called 'Netaji' by people, he led the young, radical wing of the Indian National Congress in the late 1920s and later became the president of the party in 1938. Although he was later ousted owing to his differences with Mahatma Gandhi, Netaji continued his effort to get rid of the British from India. 
His death and its cause might still remain shrouded in mystery but in 2005, Mukherjee submitted its report to the Government of India in which there was no evidence of Netaji's death in that plane crash. But the then government rejected the report of the Mukherjee Commission and where Netaji went missing from 18 August 1945 and what happened next has become the biggest unanswered mystery in Indian history.
On his 125th birth anniversary, let us all honour his boundless valor and selfless service to the nation. HITian INSIDE wishes everyone an influential Prakram Diwas.
""";
  String r3 = """
 The legendary creator and cartoonist of Bengal and India, Narayan Debnath, who shaped our childhood, passes away today. With him ends the era of his creations - "Bantul the Great, Hada - Bhoda, Nonte - Fonte" and many more. His comic series 'Nonte - Fonte' continued for record 53 years. He's the first and the only Indian cartoonist to receive a D. Litt degree. 
The late Narayan Debnath, the magician of our childhood. HITian Inside pays homage to the proverbial creator of Bengali comics. Padma Shri Narayan Debnath was born in 1925 in Shibpur, Howrah. He set an outstanding example in Bengali children's literature by creating more than one and a half thousand serious and funny comics over the last seven decades. Today, we have lost the creator of our teenage companions....
Padmashri Narayan Debnath will live in our hearts for generations to come with his fabulous allegorical characters that are the irrecoverable part of our childhood.
""";

  @override
  Widget build(BuildContext context) {
    double dWidth = MediaQuery.of(context).size.width;
    double dHeight = MediaQuery.of(context).size.height;
    adjustedWidth(double width) {
      return width * dWidth / 375;
    }

    adjustedHeight(double height) {
      return height * dHeight / 667;
    }

    adjustedSize(double size) {
      return (((size * dWidth) / 375) + ((size * dHeight) / 667)) / 2;
    }

    return SafeArea(
        child: Scaffold(
            body: Container(
      height: dHeight,
      width: dWidth,
      child: Column(
        children: [
          Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.bookmark_border),
                    color: Colors.black,
                  ),
                  Text(
                    "All News",
                    style: TextStyle(
                        fontSize: adjustedSize(24),
                        fontWeight: FontWeight.bold,
                        fontFamily: "NanumGothic",
                        color: Colors.black),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.login),
                    color: Colors.black,
                  ),
                ],
              ),
              flex: 1),
          Expanded(
              child: Container(
                width: adjustedWidth(320),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(60)),
                        color: Colors.grey.shade200,
                      ),
                      padding: EdgeInsets.all(adjustedSize(10)),
                      child: Text(
                        "All News",
                        style: TextStyle(
                            fontSize: adjustedSize(20),
                            fontWeight: FontWeight.bold,
                            fontFamily: "IndieFlower",
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: adjustedWidth(10),
                    ),
                    Container(
                        child: InkWell(
                      child: Text(
                        "Categories",
                        style: TextStyle(
                            fontSize: adjustedSize(16),
                            fontWeight: FontWeight.bold,
                            fontFamily: "IndieFlower",
                            color: Colors.grey.shade800),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, "/categories");
                      },
                    )),
                    SizedBox(
                      width: adjustedWidth(10),
                    ),
                    Container(
                        child: InkWell(
                      child: Text(
                        "People",
                        style: TextStyle(
                            fontSize: adjustedSize(16),
                            fontWeight: FontWeight.bold,
                            fontFamily: "IndieFlower",
                            color: Colors.grey.shade800),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, "/people");
                      },
                    )),
                  ],
                ),
              ),
              flex: 1),
          Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.all(adjustedSize(10)),
                  child: Column(
                    children: [
                      NewsCard(
                          title: "Republic Day",
                          description: r1,
                          imageUrl: "assets/Republic_Day.jpg",
                          time: "26/01/2022"),
                      NewsCard(
                          title: "Netaji Subhash Chandra Bose",
                          description: r2,
                          imageUrl: "assets/Netaji_Subhash_Chandra.jpg",
                          time: "23/01/2022"),
                      NewsCard(
                          title: "Narayan Debnath",
                          description: r3,
                          imageUrl: "assets/Narayan_Debnath.jpg",
                          time: "18/01/2022")
                    ],
                  ),
                ),
              ),
              flex: 10),
        ],
      ),
    )));
  }
}
