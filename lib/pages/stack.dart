import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateStack extends StatelessWidget {
  const CreateStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Create a Stack",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                width: 70,
                height: 36,
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.indigoAccent, width: 2),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.gripHorizontal,
                      color: Colors.indigoAccent,
                    ),
                    FaIcon(
                      FontAwesomeIcons.caretRight,
                      color: Colors.indigoAccent,
                      size: 28,
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 200,
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 50.0),
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                color: Colors.purple[50],
                borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.network(
                      "https://assets.webiconspng.com/uploads/2016/12/Piggy-Bank-High-Resolution-PNG-Icon-300x300.png",
                      width: 60,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Save",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                        Text.rich(
                            TextSpan(
                                text: 'Short term ',
                                children: <InlineSpan>[
                                  TextSpan(
                                      text: ' | ',
                                      style: TextStyle(color: Colors.black54)),
                                  TextSpan(
                                    text: ' 1 - 3 years',
                                  )
                                ]),
                            style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.w600)),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          top: 4.0, bottom: 4.0, left: 4.0, right: 6.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18.0)),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.purple[100],
                            child: FaIcon(
                              FontAwesomeIcons.handHoldingUsd,
                              size: 15.0,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text("debt")
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 4.0, bottom: 4.0, left: 4.0, right: 6.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18.0)),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.purple[100],
                            child: FaIcon(
                              FontAwesomeIcons.balanceScale,
                              size: 15.0,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("hybrid")
                        ],
                      ),
                    ),
                  ],
                ),
                Text(
                  "For your short term goals like emergency, vacation, gadgets etc.",
                  style: TextStyle(color: Colors.black54, fontSize: 14),
                )
              ],
            ),
          ),
          Container(
            height: 200,
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 30.0),
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                color: Colors.yellow[50],
                borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.network(
                      "https://cdn3.iconfinder.com/data/icons/personal-business-finance-2/380/Growth_Investing-512.png",
                      width: 60,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Invest",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                        Text.rich(
                            TextSpan(text: 'Long term ', children: <InlineSpan>[
                              TextSpan(
                                  text: ' | ',
                                  style: TextStyle(color: Colors.black54)),
                              TextSpan(
                                text: ' 3+ years',
                              )
                            ]),
                            style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.w600)),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          top: 4.0, bottom: 4.0, left: 4.0, right: 6.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18.0)),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.yellow[100],
                            child: FaIcon(
                              FontAwesomeIcons.handHoldingUsd,
                              size: 15.0,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("debt")
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 4.0, bottom: 4.0, left: 4.0, right: 6.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18.0)),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.yellow[100],
                            child: FaIcon(
                              FontAwesomeIcons.globe,
                              size: 15.0,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("equity")
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 4.0, bottom: 4.0, left: 4.0, right: 6.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18.0)),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.yellow[100],
                            child: FaIcon(
                              FontAwesomeIcons.bitcoin,
                              size: 15.0,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("crypto")
                        ],
                      ),
                    ),
                  ],
                ),
                Text(
                  "Diversified ETF portfolios for your goals like retirement, marriage, education etc.",
                  style: TextStyle(color: Colors.black54, fontSize: 14),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          RichText(
            text: TextSpan(
                text: "Reach your goals faster throught our\n",
                style: TextStyle(color: Colors.white60, fontSize: 16),
                children: [
                  TextSpan(
                      text: "Smart Stack Approach ⓘ",
                      style: TextStyle(
                          color: Colors.indigoAccent,
                          fontSize: 18,
                          fontWeight: FontWeight.w600))
                ]),
          )
        ],
      ),
    );
  }
}
