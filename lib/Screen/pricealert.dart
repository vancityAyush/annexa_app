import 'package:annexa_app/Screen/sellbitcoin.dart';
import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widget/back_button.dart';
import '../Widget/price_alert.dart';

class PriceAlert extends StatefulWidget {
  @override
  _PriceAlertState createState() => _PriceAlertState();
}

class _PriceAlertState extends State<PriceAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff150c3f),
        appBar: AppBar(
          leading: navBack(),
          backgroundColor: Color(0xff29214d),
          title: Text("Create Price alert"),
        ),
        body: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SellBitCoin()));
          },
          child: ListView(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width / 1.0,
                    height: MediaQuery.of(context).size.height / 17,
                    margin: const EdgeInsets.only(top: 40, left: 15, right: 15),
                    decoration: BoxDecoration(
                      color: Color(0xff29114d),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.currency_bitcoin),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.currency_bitcoin),
                        ),
                      ],
                    )),
                Container(
                  width: MediaQuery.of(context).size.width / 1.0,
                  height: MediaQuery.of(context).size.height / 17,
                  margin: const EdgeInsets.only(top: 40, left: 15, right: 15),
                  decoration: BoxDecoration(
                    color: Color(0xff29114d),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Enter Price",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 14),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Current Price:2787197.98",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width / 1.0,
                    height: MediaQuery.of(context).size.height / 15,
                    margin: const EdgeInsets.only(top: 40, left: 15, right: 15),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Create Price Alert',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: ReuseableText(
                          text: "Coin Name",
                          size: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.white70,
                          wordSpacing: 0),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: ReuseableText(
                          text: "ALERT PRICE",
                          size: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.white70,
                          wordSpacing: 0),
                    ),

                    /*  Container(
                      height: 140,
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            return ReuseAblePriceAlert(
                                image: 'crypto.png',
                                title: 'Bitcoin',
                                icon: Icon(Icons.delete),
                                price: '43768,6');
                          },
                          separatorBuilder: (context, index) {
                            return Divider(
                              thickness: 2,
                              color: Colors.white,
                            );
                          },
                          itemCount: 7),
                    )*/
                  ],
                ),
                Divider(
                  color: Colors.white,
                  thickness: 2,
                  endIndent: 15,
                  indent: 20,
                ),
                ReuseAblePriceAlert(
                    image: 'bitcoin',
                    title: 'Gala',
                    icon: Icon(
                      Icons.delete,
                      size: 30,
                      color: Colors.grey,
                    ),
                    price: '43768,6'),
                buildDashedLine(),
                ReuseAblePriceAlert(
                    image: 'bitcoin',
                    title: 'Axie Infinity',
                    icon: Icon(
                      Icons.delete,
                      size: 30,
                      color: Colors.grey,
                    ),
                    price: '43768,6'),
                buildDashedLine(),
                ReuseAblePriceAlert(
                    image: 'bitcoin',
                    title: 'COSMOS',
                    icon: Icon(
                      Icons.delete,
                      size: 30,
                      color: Colors.grey,
                    ),
                    price: '43768,6'),
                buildDashedLine(),
                ReuseAblePriceAlert(
                    image: 'bitcoin',
                    title: 'Solana',
                    icon: Icon(
                      Icons.delete,
                      size: 30,
                      color: Colors.grey,
                    ),
                    price: '43768,6'),
              ],
            ),
          ]),
        ));
  }

  Widget buildDashedLine() => Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: DottedLine(
            dashColor: Colors.white,
            lineThickness: 1,
            dashLength: 4,
            dashGapLength: 5,
          ),
        ),
      );
}
