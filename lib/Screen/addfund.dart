import 'package:annexa_app/Screen/buybitcoin.dart';
import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widget/back_button.dart';
import '../Widget/reuseable_moneycard.dart';

class AddFund extends StatefulWidget {
  @override
  _AddFundState createState() => _AddFundState();
}

class _AddFundState extends State<AddFund> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff150c3f),
      appBar: AppBar(
        leading: navBack(),
        backgroundColor: Color(0xff29214d),
        title: Text("Indian Rupee"),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => BuyBitcoin()));
        },
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                  height: MediaQuery.of(context).size.height / 7,
                  width: MediaQuery.of(context).size.height / 1.5,
                  child: Card(
                      color: Color(0xff29214d),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: const [
                              Padding(
                                  padding: EdgeInsets.only(left: 8, top: 30),
                                  child: ReuseableText(
                                    color: Colors.white,
                                    wordSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    size: 16,
                                    text: 'Available Balance',
                                  )),
                              Padding(
                                padding: EdgeInsets.only(right: 50),
                                child: Text(
                                  '\u{20B9}${0.02}',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset(
                              "assets/images/jpg/bitcoin.jpg",
                              height: 50,
                              width: 50,
                              fit: BoxFit.contain,
                            ),
                          )
                        ],
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16, top: 10),
                  child: ReuseableText(
                      text: "PAST TRANSACTION",
                      size: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white60,
                      wordSpacing: 0),
                ),
                Divider(
                  indent: 5,
                  endIndent: 5,
                  thickness: 1,
                  color: Colors.white60,
                ),
                /*Container(
                    height: 100,
                    child: ReuseableMoneyCard(
                        result: 'COMPLETED',
                        date: DateTime.now(),
                        title: 'Withdraw',
                        image: 'currency',
                        price: 123445))*/
              ],
            ),
            ReuseableMoneyCard(
              result: 'COMPLETED',
              date: DateTime.now(),
              title: 'Withdraw',
              image: 'bitcoin',
              price: 123445, /*icon: Icon(Icons.arrow_forward_ios_outlined,)*/
            ),
            ReuseableMoneyCard(
              result: 'COMPLETED',
              date: DateTime.now(),
              title: 'Withdraw',
              image: 'bitcoin',
              price: 123445, /*icon: Icon(Icons.arrow_forward_ios_outlined,)*/
            ),
            ReuseableMoneyCard(
              result: 'COMPLETED',
              date: DateTime.now(),
              title: 'Withdraw',
              image: 'bitcoin',
              price: 123445, /*icon: Icon(Icons.arrow_forward_ios_outlined,)*/
            ),
            ReuseableMoneyCard(
              result: 'COMPLETED',
              date: DateTime.now(),
              title: 'Withdraw',
              image: 'bitcoin',
              price: 123445, /*icon: Icon(Icons.arrow_forward_ios_outlined,)*/
            ),
            ReuseableMoneyCard(
              result: 'COMPLETED',
              date: DateTime.now(),
              title: 'Withdraw',
              image: 'bitcoin',
              price: 123445, /*icon: Icon(Icons.arrow_forward_ios_outlined,)*/
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: MediaQuery.of(context).size.height / 22,
                  width: MediaQuery.of(context).size.width / 3,
                  child: MaterialButton(
                    elevation: 0,
                    onPressed: () {
                      /* Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SuccessfulScreen()),
                      );*/
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: const Color(0xff29214d),
                    child: const Text('Withdraw Funds',
                        style: TextStyle(
                            color: Colors.white60,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: MediaQuery.of(context).size.height / 22,
                  width: MediaQuery.of(context).size.width / 3,
                  child: MaterialButton(
                    elevation: 0,
                    onPressed: () {
                      /*Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SuccessfulScreen()),
                      );*/
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.green,
                    child: const Text('Add Funds',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
