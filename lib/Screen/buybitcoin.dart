import 'package:annexa_app/Screen/crypto.dart';
import 'package:annexa_app/Widget/back_button.dart';
import 'package:flutter/material.dart';

import '../Widget/reuseable_text.dart';

class BuyBitcoin extends StatefulWidget {
  const BuyBitcoin({Key? key}) : super(key: key);

  @override
  _BuyBitcoinState createState() => _BuyBitcoinState();
}

class _BuyBitcoinState extends State<BuyBitcoin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff150c3f),
        appBar: AppBar(
          leading: navBack(),
          backgroundColor: Color(0xff29114d),
          title: const Text(
            'Buy BitCoin',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                alignment: Alignment.centerLeft,
                child: const ReuseableText(
                    text: "Buy Bitcoin",
                    size: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    wordSpacing: 0),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  child: const ReuseableText(
                      text: "INR AMOUNT",
                      size: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      wordSpacing: 0)),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  '\u{20B9}${22680.0}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 40),
                  child: const ReuseableText(
                    size: 16,
                    wordSpacing: 0,
                    text: 'Available Balance ₹ 061 ',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
              Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: const ReuseableText(
                    size: 16,
                    wordSpacing: 0,
                    text: 'Minimum 100 || Maximum 25,0000',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  "assets/images/png/buy_bitcoin.png",
                  height: MediaQuery.of(context).size.height / 3,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Crypto()));
                },
                child: Container(
                    width: MediaQuery.of(context).size.width / 1.0,
                    height: MediaQuery.of(context).size.height / 15,
                    margin: const EdgeInsets.only(top: 30, left: 25, right: 25),
                    decoration: BoxDecoration(
                      color: Color(0xff065f1f),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'FILL AMOUNT TO BUY',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}
