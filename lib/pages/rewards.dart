import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marquee/marquee.dart';

class RewardItem {
  final String? title;
  final String? description;
  final String? imageUrl;
  final int? price;
  const RewardItem(
      {this.title, this.description, this.imageUrl, this.price = 20});
}

class Rewards extends StatelessWidget {
  Rewards({Key? key}) : super(key: key);
  final List<RewardItem> rewards = [
    RewardItem(
        title: 'Match your vibe',
        description:
            "Voice assistant enabled\ncalling watch woth a big\n1.7'' HD touch display",
        imageUrl: "assets/watch.png"),
    RewardItem(
        title: 'Brew on the go',
        description:
            "Stack's got you covered!\nThis Suction Mug keeps your coffee from spilling.",
        imageUrl: "assets/coffee.png"),
    RewardItem(
        title: 'Essence of Earth',
        description: "Get this perfume that\nsmells like the first rain",
        imageUrl: "assets/bottle.png")
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 28.0, left: 28.0, top: 28.0),
            child: Text(
              "Stack rewards you for good finance habits",
              style: TextStyle(color: Colors.black54, fontSize: 24.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(right: 28.0, left: 28.0, top: 22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[200]!, width: 2),
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.trophy,
                          color: Colors.indigo,
                          size: 20.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "₹ 9.58",
                          style: TextStyle(color: Colors.black54),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        FaIcon(
                          FontAwesomeIcons.arrowCircleDown,
                          color: Colors.deepOrange[300],
                          size: 20.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "-4.18 %",
                          style: TextStyle(color: Colors.deepOrange[300]),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[200]!, width: 2),
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.coins,
                          color: Colors.yellow[800],
                          size: 20.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "0",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  )
                ],
              )),
          Container(
            margin: EdgeInsets.only(top: 28.0),
            width: double.maxFinite,
            height: 30,
            child: Marquee(
              text: '   CLAIM FREE STOCKS AND BITCOIN!   ',
              style: TextStyle(
                  color: Colors.green, fontSize: 16.0, wordSpacing: 2.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 24.0, left: 28.0, top: 22.0),
            child: Text(
              "Win US Stocks & Bitcoin each time you invest",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
          Image.asset("assets/animation.gif", width: double.maxFinite),
          Padding(
              padding: EdgeInsets.only(right: 24.0, left: 28.0, top: 36.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Upcoming Offers",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Coming Soon",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.indigoAccent),
                  ),
                ],
              )),
          Padding(
            padding: EdgeInsets.only(right: 24.0, left: 28.0, top: 18.0),
            child: Text(
              "Get exclusive mechandise and\nStocks just for a limited time",
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 350,
            margin: EdgeInsets.only(top: 32, bottom: 34),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: rewards.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 300,
                  margin: EdgeInsets.only(
                      left: 24, right: index == rewards.length - 1 ? 24 : 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.0),
                      image: DecorationImage(
                          image: AssetImage(rewards[index].imageUrl!),
                          fit: BoxFit.cover)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 22,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              rewards[index].title!,
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              rewards[index].description!,
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 80,
                        color: Colors.white.withOpacity(0.7),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                                radius: 24,
                                backgroundColor: Colors.indigo,
                                child: FaIcon(
                                  FontAwesomeIcons.lock,
                                  size: 18,
                                  color: Colors.white,
                                )),
                            Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.coins,
                                  size: 18,
                                  color: Colors.yellow[900],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  rewards[index].price.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 18.0),
            padding: EdgeInsets.symmetric(vertical: 24),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.indigo[100]!, Colors.grey[50]!],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  height: 30,
                  child: Marquee(
                    text: '   EXCLUSIVE PERKS WHEN YOU REFER 🧡   ',
                    style: TextStyle(
                        color: Colors.indigoAccent,
                        fontSize: 16.0,
                        wordSpacing: 2.0),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Win AirPods Pro",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Join the Jackpot now!",
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.network(
                  "https://i0.wp.com/lojairepair.com.br/wp-content/uploads/2020/11/airpods-pro-transparent.png?fit=800%2C800",
                  width: 250,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 24.0, left: 28.0, top: 42.0),
            width: double.maxFinite,
            padding: EdgeInsets.all(26),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              gradient: LinearGradient(
                  colors: [Colors.yellow[50]!, Colors.red[50]!],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
            child: Column(
              children: [
                Text(
                  "Invite friends to Stack and earn Rs. 100 and a chance to win AirPods Pro",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.network(
                    "https://www.buyandship.com.sg/contents/uploads/2019/10/FriendReferral-500x261.png")
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(
                  right: 24.0, left: 28.0, top: 36.0, bottom: 36.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "That's all\nfor now!",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Colors.black38),
                  ),
                  FaIcon(
                    FontAwesomeIcons.coins,
                    color: Colors.yellow[800],
                    size: 56,
                  )
                ],
              )),
        ],
      ),
    );
  }
}
