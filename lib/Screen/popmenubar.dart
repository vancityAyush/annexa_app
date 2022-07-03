import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:flutter/material.dart';

class PopMenuBar extends StatefulWidget {
  @override
  _PopMenuBarState createState() => _PopMenuBarState();
}

class _PopMenuBarState extends State<PopMenuBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff150c3f),
      margin: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height / 10,
      width: MediaQuery.of(context).size.width / 10,
      child: Column(
        children: [
          Row(
            children: [
              Row(
                children: [
                  ReuseableText(
                      text: "AISAN HOTEL(East)",
                      size: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      wordSpacing: 0)
                ],
              ),
              Column(
                children: [
                  Icon(Icons.voice_chat_outlined),
                  ReuseableText(
                      text: "Add To Watch list",
                      size: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.white60,
                      wordSpacing: 0)
                ],
              ),
              Column(
                children: [
                  ReuseableText(
                      text: "Rs.236.1",
                      size: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.white60,
                      wordSpacing: 0),
                  ReuseableText(
                      text: "Trading Symbole:AHLEAST",
                      size: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.white60,
                      wordSpacing: 0),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
