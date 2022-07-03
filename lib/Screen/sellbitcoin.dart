import 'package:annexa_app/Screen/signupscreen.dart';
import 'package:annexa_app/Widget/back_button.dart';
import 'package:flutter/material.dart';

import '../Widget/reuseable_text.dart';

class SellBitCoin extends StatelessWidget {
  const SellBitCoin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff150c3f),
        appBar: AppBar(
          leading: navBack(),
          backgroundColor: Color(0xff29214d),
          title: const Text(
            'Sell BitCoin',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: [
            Column(
              children: [
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
                    '₹ 0',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 40),
                    child: const ReuseableText(
                      size: 16,
                      wordSpacing: 0,
                      text: 'Available Balance ',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
                Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const ReuseableText(
                      size: 16,
                      wordSpacing: 0,
                      text: 'Minimum ₹100 | Maximum ₹25,0000',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Image.asset(
                    "assets/images/png/buy_bitcoin.png",
                    height: MediaQuery.of(context).size.height / 3,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignupScreen()));
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width / 1.0,
                      height: MediaQuery.of(context).size.height / 17,
                      margin:
                          const EdgeInsets.only(top: 40, left: 20, right: 20),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Text(
                          'FILL AMOUNT TO SELL',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      )),
                )
              ],
            ),
          ],
        ));
  }
}
