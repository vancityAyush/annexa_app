import 'package:annexa_app/Widget/back_button.dart';
import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'newsdescription.dart';

class NewsScreen extends StatefulWidget {
  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff150c3f),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              navBack(),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NewsDescription()));
                  },
                  child: newswidget()),
              newswidget(),
              newswidget(),
              newswidget(),
              newswidget(),
            ],
          )
        ],
      ),
    );
  }
}

class newswidget extends StatelessWidget {
  const newswidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: MediaQuery.of(context).size.height / 5.5,
      width: MediaQuery.of(context).size.width / 1,
      child: Card(
        color: Color(0xff29214d),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/png/advertisement.jpg",
                width: MediaQuery.of(context).size.width / 2.3,
                height: MediaQuery.of(context).size.height / 7,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              width: MediaQuery.of(context).size.width * 0.4,
              child: const ReuseableText(
                color: Colors.white,
                size: 16,
                wordSpacing: 0,
                fontWeight: FontWeight.bold,
                text:
                    "Advises buyers that they are should be prompt in filling their claims",
              ),
            )
          ],
        ),
      ),
    );
  }
}
