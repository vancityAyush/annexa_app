import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Holding extends StatefulWidget {
  @override
  _HoldingState createState() => _HoldingState();
}

class _HoldingState extends State<Holding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff150c3f),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, top: 10, right: 10),
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                    color: Color(0xff29214d),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 8, left: 10),
                              child: ReuseableText(
                                  text: "Invested",
                                  size: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white60,
                                  wordSpacing: 0),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: ReuseableText(
                                  text: "19876,00",
                                  size: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  wordSpacing: 0),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 8, right: 40),
                              child: ReuseableText(
                                  text: "Current",
                                  size: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white60,
                                  wordSpacing: 0),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 60),
                              child: ReuseableText(
                                  text: "18,0190.90",
                                  size: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  wordSpacing: 0),
                            )
                          ],
                        ),
                      ]),
                  const Divider(
                    color: Color(0xff150c3f),
                    thickness: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: ReuseableText(
                              text: "P&L",
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white60,
                              wordSpacing: 0),
                        ),
                      ),
                      ReuseableText(
                          text: "-989.00  ",
                          size: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          wordSpacing: 0),
                      Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: ReuseableText(
                            text: "-5.06%",
                            size: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            wordSpacing: 0),
                      ),
                    ],
                  )
                ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.white, size: 30),
                        ReuseableText(
                            text: "Search",
                            size: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            wordSpacing: 0)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(Icons.graphic_eq_sharp,
                            color: Colors.white, size: 30),
                        ReuseableText(
                            text: "filter",
                            size: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            wordSpacing: 0)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(Icons.analytics, color: Colors.white, size: 30),
                        ReuseableText(
                            text: "Analytics",
                            size: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            wordSpacing: 0)
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReuseableText(
                              text: "6 QTY.•AVG",
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              wordSpacing: 0),
                          ReuseableText(
                              text: "-10.10%",
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              wordSpacing: 0)
                        ]),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReuseableText(
                              text: "HDFC BANK",
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              wordSpacing: 0),
                          ReuseableText(
                              text: "-943.50",
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              wordSpacing: 0)
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ReuseableText(
                                  text: "Invested ",
                                  size: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  wordSpacing: 0),
                              ReuseableText(
                                  text: "",
                                  size: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                  wordSpacing: 0)
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: ReuseableText(
                                    text: "LTP ",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white60,
                                    wordSpacing: 0),
                              ),
                              ReuseableText(
                                  text: "1399.0",
                                  size: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  wordSpacing: 0),
                              ReuseableText(
                                  text: "(-4.50%)",
                                  size: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                  wordSpacing: 0)
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
              Divider(
                thickness: 4,
                color: Color(0xff29214d),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReuseableText(
                              text: "6 QTY. •AVG",
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              wordSpacing: 0),
                          ReuseableText(
                              text: "-10.10%",
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              wordSpacing: 0)
                        ]),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReuseableText(
                              text: "HDFC BANK",
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              wordSpacing: 0),
                          ReuseableText(
                              text: "-943.50",
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              wordSpacing: 0)
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ReuseableText(
                                  text: "Invested ",
                                  size: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  wordSpacing: 0),
                              ReuseableText(
                                  text: "",
                                  size: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                  wordSpacing: 0)
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: ReuseableText(
                                    text: "LTP ",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white60,
                                    wordSpacing: 0),
                              ),
                              ReuseableText(
                                  text: "1399.0",
                                  size: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  wordSpacing: 0),
                              ReuseableText(
                                  text: "(-4.50%)",
                                  size: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                  wordSpacing: 0)
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
              Divider(
                thickness: 4,
                color: Color(0xff29214d),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReuseableText(
                              text: "6 QTY. •AVG",
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              wordSpacing: 0),
                          ReuseableText(
                              text: "-10.10%",
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              wordSpacing: 0)
                        ]),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReuseableText(
                              text: "HDFC BANK",
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              wordSpacing: 0),
                          ReuseableText(
                              text: "-943.50",
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              wordSpacing: 0)
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ReuseableText(
                                  text: "Invested ",
                                  size: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  wordSpacing: 0),
                              ReuseableText(
                                  text: "",
                                  size: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                  wordSpacing: 0)
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: ReuseableText(
                                    text: "LTP ",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white60,
                                    wordSpacing: 0),
                              ),
                              ReuseableText(
                                  text: "1399.0",
                                  size: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  wordSpacing: 0),
                              ReuseableText(
                                  text: "(-4.50%)",
                                  size: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                  wordSpacing: 0)
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
              Divider(
                thickness: 4,
                color: Color(0xff29214d),
              ),
              Row(
                children: const [
                  Icon(Icons.lock_outline, color: Colors.white, size: 30),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: ReuseableText(
                        text: "Authorisation",
                        size: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        wordSpacing: 0),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
