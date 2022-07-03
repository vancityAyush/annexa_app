import 'package:annexa_app/Screen/buybitcoin.dart';
import 'package:annexa_app/Screen/sellbitcoin.dart';
import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Widget/back_button.dart';

class Bitcoin extends StatefulWidget {
  @override
  _BitcoinState createState() => _BitcoinState();
}

class _BitcoinState extends State<Bitcoin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff150c3f),
      appBar: AppBar(
        leading: navBack(),
        backgroundColor: Color(0xff29214d),
        title: Text('Bitcoin'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image.asset(
                          "assets/images/jpg/bitcoin.jpg",
                          height: 50,
                          width: 40,
                        )),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: ReuseableText(
                            text: "Current  Bitcoin Buy Price",
                            size: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            wordSpacing: 1),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                            ),
                            child: ReuseableText(
                                text: " ₹ 22,657.29",
                                size: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                wordSpacing: 1),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 1),
                            child: ReuseableText(
                                text: " ↑3.36%",
                                size: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                wordSpacing: 1),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 5,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 50,
                        ),
                        child: Icon(
                          Icons.doorbell,
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 20,
                        ),
                        child: ReuseableText(
                            text: "Price Alert",
                            size: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            wordSpacing: 0),
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 15),
                        child: ReuseableText(
                            text: '1D Highest',
                            size: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            wordSpacing: 0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: ReuseableText(
                            text: '₹ 22,657.00',
                            size: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            wordSpacing: 0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 12),
                        child: VerticalDividerWidget(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 12),
                        child: ReuseableText(
                            text: '1D Lowest 20,920.00',
                            size: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            wordSpacing: 0),
                      ),
                    ],
                  ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Image.asset(
                  "assets/images/jpg/graph.jpg",
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width / 1,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 20, left: 10),
                      height: 30,
                      width: 70,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Color(0xff29214d),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(
                                color: Color(0xff150c3f),
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('10',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
                        /*onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const AlternateDay()));

                        },*/
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 20, left: 10),
                      height: 30,
                      width: 70,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Color(0xff29214d),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(
                                color: Colors.white,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('1 W',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
                        /*onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const AlternateDay()));

                        },*/
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 20, left: 10),
                      height: 30,
                      width: 70,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Color(0xff29214d),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(
                                color: Colors.white,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('1 M',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
                        /*onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const AlternateDay()));

                        },*/
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 20, left: 10),
                      height: 30,
                      width: 70,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Color(0xff29214d),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(
                                color: Colors.white,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('1 Y',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
                        /*onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const AlternateDay()));

                        },*/
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, top: 10),
                alignment: Alignment.centerLeft,
                child: ReuseableText(
                    text: 'Statisatics',
                    size: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    wordSpacing: 0),
              ),
              Divider(
                height: 5,
                color: Colors.white,
                indent: 5,
                endIndent: 1,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        child: ReuseableText(
                          color: Colors.white,
                          wordSpacing: 0,
                          fontWeight: FontWeight.normal,
                          size: 16,
                          text: 'Market Clap',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20, top: 10),
                        child: ReuseableText(
                          color: Colors.white,
                          wordSpacing: 0,
                          fontWeight: FontWeight.normal,
                          size: 16,
                          text: 'Volume 24h',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 5),
                        child: ReuseableText(
                          color: Colors.white,
                          wordSpacing: 0,
                          fontWeight: FontWeight.normal,
                          size: 16,
                          text: '₹ 58,339 T',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 35, top: 5),
                        child: ReuseableText(
                          color: Colors.white,
                          wordSpacing: 0,
                          fontWeight: FontWeight.normal,
                          size: 16,
                          text: '₹ 58,339 T',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        child: ReuseableText(
                          color: Colors.white60,
                          wordSpacing: 0,
                          fontWeight: FontWeight.normal,
                          size: 16,
                          text: 'Circulating Supply',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20, top: 5),
                        child: ReuseableText(
                          color: Colors.white60,
                          wordSpacing: 0,
                          fontWeight: FontWeight.normal,
                          size: 16,
                          text: 'Max Supply',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 5),
                        child: ReuseableText(
                          color: Colors.white,
                          wordSpacing: 0,
                          fontWeight: FontWeight.normal,
                          size: 16,
                          text: '58,938 BTC',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 30, top: 5),
                        child: ReuseableText(
                          color: Colors.white,
                          wordSpacing: 0,
                          fontWeight: FontWeight.normal,
                          size: 16,
                          text: '21 M BTC',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        child: ReuseableText(
                          color: Colors.white60,
                          wordSpacing: 0,
                          fontWeight: FontWeight.normal,
                          size: 16,
                          text: 'Total Supply',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 40, top: 10),
                        child: ReuseableText(
                          color: Colors.white60,
                          wordSpacing: 0,
                          fontWeight: FontWeight.normal,
                          size: 16,
                          text: 'Rank',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 5),
                        child: ReuseableText(
                          color: Colors.white,
                          wordSpacing: 0,
                          fontWeight: FontWeight.normal,
                          size: 16,
                          text: '18.339 M BTC',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 50, top: 5),
                        child: ReuseableText(
                          color: Colors.white,
                          wordSpacing: 0,
                          fontWeight: FontWeight.normal,
                          size: 16,
                          text: '# 1',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 5),
                        child: ReuseableText(
                          color: Colors.white60,
                          wordSpacing: 0,
                          fontWeight: FontWeight.normal,
                          size: 16,
                          text: 'All Time High',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20, top: 5),
                        child: ReuseableText(
                          color: Colors.white60,
                          wordSpacing: 0,
                          fontWeight: FontWeight.normal,
                          size: 16,
                          text: 'Mkt Domiance',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 5),
                        child: ReuseableText(
                          color: Colors.white,
                          wordSpacing: 0,
                          fontWeight: FontWeight.normal,
                          size: 16,
                          text: '₹ 58,339 T',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 35, top: 5),
                        child: ReuseableText(
                          color: Colors.white,
                          wordSpacing: 0,
                          fontWeight: FontWeight.normal,
                          size: 16,
                          text: '₹ 58,339 T',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    height: MediaQuery.of(context).size.height / 18,
                    width: MediaQuery.of(context).size.width / 3,
                    child: MaterialButton(
                      elevation: 0,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BuyBitcoin()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      color: Colors.green,
                      child: const Text('BUY',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    height: MediaQuery.of(context).size.height / 18,
                    width: MediaQuery.of(context).size.width / 3,
                    child: MaterialButton(
                      elevation: 0,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SellBitCoin()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      color: Colors.red,
                      child: const Text('SELL',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class VerticalDividerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 3,
      color: Colors.white,
    );
  }
}
