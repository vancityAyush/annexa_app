import 'package:flutter/material.dart';

import '../Widget/reuseable_text.dart';

class SellBitCoin extends StatelessWidget {
  const SellBitCoin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff150c3f),
        appBar: AppBar(
          leading: Icon(Icons.cancel),
          backgroundColor: Color(0xff29214d),
          title: const Text(
            'Sell BitCoin',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
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
                '\u{20B9}${0}',
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
                  text: 'Minimum 100 | Maximum 25,0000',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3.1,
            ),
            GestureDetector(
              onTap: () {
                /*    Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Address ()),
                );*/
              },
              child: Container(
                  width: MediaQuery.of(context).size.width / 1.0,
                  height: MediaQuery.of(context).size.height / 16,
                  margin: const EdgeInsets.only(top: 40, left: 15, right: 15),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
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
        ));
  }
}
