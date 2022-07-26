import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:flutter/material.dart';

class NewsDescription extends StatefulWidget {
  @override
  _NewsDescriptionState createState() => _NewsDescriptionState();
}

class _NewsDescriptionState extends State<NewsDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff150c3f),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                "assets/images/png/fastetrade.jpg",
                height: MediaQuery.of(context).size.height / 2.3,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: ReuseableText(
                  text:
                      "In this episode of The Moneycontrol Real Estate show, Moneycontrol's Vandana Ramnani talks to Ankur Gupta, joint managing director, Ashiana Housing, who explains how senior living is different from the concept of old age homes and who should buy into the housing segment.",
                  size: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  wordSpacing: 2),
            )
          ],
        ),
      ),
    );
  }
}
