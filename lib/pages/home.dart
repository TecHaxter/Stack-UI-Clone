import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  width: 85,
                  height: 50,
                  padding: EdgeInsets.only(right: 8.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[200]!, width: 2),
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.grey[200]!, width: 2),
                            borderRadius: BorderRadius.circular(12.0),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://uiillustrations.net/wp-content/uploads/2020/12/profile-illustration-gunaldi-yunus.png"),
                                fit: BoxFit.cover)),
                      ),
                      FaIcon(
                        FontAwesomeIcons.angleRight,
                        size: 25.0,
                        color: Colors.indigo,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[200]!, width: 2),
                    borderRadius: BorderRadius.circular(15.0)),
                child: IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.solidCommentDots,
                      size: 20,
                    )),
              )
            ],
          ),
          Text(
            "Howdy, Khushal 🙌",
            style: TextStyle(fontSize: 24.0, color: Colors.black87),
          ),
          Column(
            children: [
              Container(
                height: 350,
                child: GridView.count(
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  crossAxisCount: 2,
                  children: [
                    for (var i = 0; i < 4; i++)
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            gradient: LinearGradient(
                                colors: [Colors.indigo[50]!, Colors.white],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            borderRadius: BorderRadius.circular(20.0)),
                      )
                  ],
                ),
              ),
              Text(
                "Lets create a new stack!\nClick on this button\n|\n|\n|",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.0, color: Colors.black87),
              )
            ],
          )
        ],
      ),
    );
  }
}
