import 'package:annexa_app/Widget/back_button.dart';
import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InviteAndEarn extends StatefulWidget {
  @override
  _InviteAndEarnState createState() => _InviteAndEarnState();
}

class _InviteAndEarnState extends State<InviteAndEarn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Color(0xff150c3f),
            height: MediaQuery.of(context).size.height * 0.65,
            width: double.infinity,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 25),
                child: navBack(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25, top: 15),
                child: ReuseableText(
                  wordSpacing: 0,
                  text: 'Invite & Earn!',
                  size: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 28, top: 10),
                width: MediaQuery.of(context).size.width * 0.7,
                child: const Text(
                  "you can earn easily upon refferring your friends and  colleagues to join Annexa trading Upon referring,you will earn Upto ₹ 500 per activation and 10% brokeage sharing as well. ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30, top: 20),
                child: Text(
                  'How it work',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                      )),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: ReuseableText(
                        text: 'Refer a friend to Annexa',
                        size: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        wordSpacing: 0),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 20, top: 40),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                      )),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 40),
                    child: ReuseableText(
                        text: "friend's buys a coin",
                        size: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        wordSpacing: 0),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 20, top: 40),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(50),
                      )),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 40),
                    child: ReuseableText(
                        text: 'you got ₹500',
                        size: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        wordSpacing: 0),
                  ),
                ],
              ),
            ]),
          ),
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * 0.35,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: ReuseableText(
                      text: 'Invite your friends and family',
                      size: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      wordSpacing: 0),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 50),
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.width / 1,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Image.asset(
                          "assets/images/png/wimage.png",
                          height: 40,
                          width: 40,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: ReuseableText(
                            text: 'Invite Via Whatsapp',
                            size: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            wordSpacing: 0),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 50, top: 15),
                          child: Icon(
                            Icons.copy,
                            color: Colors.blue,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15, left: 5),
                          child: ReuseableText(
                              text: 'Copy Link',
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              wordSpacing: 0),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 10),
                      child: VerticalDividerWidget(),
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 15),
                          child: Icon(
                            Icons.more_horiz,
                            size: 30,
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: ReuseableText(
                              text: 'More Options',
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlueAccent,
                              wordSpacing: 0),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class VerticalDividerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 1,
      color: Colors.brown,
    );
  }
}
