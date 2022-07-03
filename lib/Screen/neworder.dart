import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:flutter/material.dart';

import '../Widget/back_button.dart';

class NewOrder extends StatefulWidget {
  @override
  _NewOrderState createState() => _NewOrderState();
}

class _NewOrderState extends State<NewOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff150c3f),
      appBar: AppBar(
        leading: navBack(),
        backgroundColor: Color(0xff29214d),
        title: Text("Orders"),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        ReuseableText(
                            text: "3I INFOTECH",
                            size: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            wordSpacing: 0),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ReuseableText(
                              text: "NSE",
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white60,
                              wordSpacing: 0),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            ReuseableText(
                                text: "BUY@",
                                size: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                wordSpacing: 0),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ReuseableText(
                                  text: "RS.68.09",
                                  size: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white60,
                                  wordSpacing: 0),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                height: MediaQuery.of(context).size.height / 10,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                    color: Color(0xff29214d),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReuseableText(
                        text: "2022-04-09 06:30:44",
                        size: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        wordSpacing: 0),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ReuseableText(
                          text: "COMPLETED",
                          size: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          wordSpacing: 0),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        ReuseableText(
                            text: "3I INFOTECH",
                            size: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            wordSpacing: 0),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ReuseableText(
                              text: "NSE",
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white60,
                              wordSpacing: 0),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            ReuseableText(
                                text: "BUY@",
                                size: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                wordSpacing: 0),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ReuseableText(
                                  text: "RS.68.09",
                                  size: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white60,
                                  wordSpacing: 0),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                height: MediaQuery.of(context).size.height / 10,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                    color: Color(0xff29214d),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReuseableText(
                        text: "2022-04-09 06:30:44",
                        size: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        wordSpacing: 0),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ReuseableText(
                          text: "COMPLETED",
                          size: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          wordSpacing: 0),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        ReuseableText(
                            text: "3I INFOTECH",
                            size: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            wordSpacing: 0),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ReuseableText(
                              text: "NSE",
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white60,
                              wordSpacing: 0),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            ReuseableText(
                                text: "BUY@",
                                size: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                wordSpacing: 0),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ReuseableText(
                                  text: "RS.68.09",
                                  size: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white60,
                                  wordSpacing: 0),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                height: MediaQuery.of(context).size.height / 10,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                    color: Color(0xff29214d),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReuseableText(
                        text: "2022-04-09 06:30:44",
                        size: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        wordSpacing: 0),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ReuseableText(
                          text: "COMPLETED",
                          size: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          wordSpacing: 0),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        ReuseableText(
                            text: "3I INFOTECH",
                            size: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            wordSpacing: 0),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ReuseableText(
                              text: "NSE",
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white60,
                              wordSpacing: 0),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            ReuseableText(
                                text: "BUY@",
                                size: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                wordSpacing: 0),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ReuseableText(
                                  text: "RS.68.09",
                                  size: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white60,
                                  wordSpacing: 0),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                height: MediaQuery.of(context).size.height / 10,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                    color: Color(0xff29214d),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReuseableText(
                        text: "2022-04-09 06:30:44",
                        size: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        wordSpacing: 0),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ReuseableText(
                          text: "COMPLETED",
                          size: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          wordSpacing: 0),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
