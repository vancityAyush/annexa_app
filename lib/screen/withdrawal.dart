import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Withdrawal extends StatefulWidget {
  @override
  _WithdrawalState createState() => _WithdrawalState();
}

class _WithdrawalState extends State<Withdrawal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff150c3f),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.cancel),
          ),
          backgroundColor: Color(0xff29214d),
          title: Text('INR WITHDRAWL'),
        ),
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: ReuseableText(
                      text: 'Withdraw INR to your bank account',
                      size: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      wordSpacing: 0),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: ReuseableText(
                      text: 'Rs 4500.00',
                      size: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      wordSpacing: 0),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12, top: 5),
                  child: ReuseableText(
                      text: 'Current Balance',
                      size: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white60,
                      wordSpacing: 0),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8, top: 15),
                  child: ReuseableText(
                      text:
                          'Money would be Depositied To The Following Bank Account',
                      size: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      wordSpacing: 0),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      ReuseableText(
                          text: 'BANK NAME',
                          size: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          wordSpacing: 0),
                      ReuseableText(
                          text: 'GHUJ',
                          size: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          wordSpacing: 0)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      ReuseableText(
                          text: 'IFSC Code',
                          size: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          wordSpacing: 0),
                      ReuseableText(
                          text: '234567',
                          size: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          wordSpacing: 0)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      ReuseableText(
                          text: 'BRANCH NAME',
                          size: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          wordSpacing: 0),
                      ReuseableText(
                          text: 'GHUJ',
                          size: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          wordSpacing: 0)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      ReuseableText(
                          text: 'HOLDER NAME',
                          size: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          wordSpacing: 0),
                      ReuseableText(
                          text: 'tggb',
                          size: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          wordSpacing: 0)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      ReuseableText(
                          text: 'ACCOUNT NUMBER',
                          size: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          wordSpacing: 0),
                      ReuseableText(
                          text: '56789034',
                          size: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          wordSpacing: 0)
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 8,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(left: 5, right: 5),
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 12,
                          child: MaterialButton(
                            elevation: 0,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            color: Color(0xff29214d),
                            child: Text("25%",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(left: 5, right: 5),
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 12,
                          child: MaterialButton(
                            elevation: 0,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            color: Color(0xff29214d),
                            child: Text("25%",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(left: 5, right: 5),
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 12,
                          child: MaterialButton(
                            elevation: 0,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            color: Color(0xff29214d),
                            child: Text("25%",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(left: 5, right: 5),
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 12,
                          child: MaterialButton(
                            elevation: 0,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            color: Color(0xff29214d),
                            child: Text("25%",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ),
                        )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.only(left: 5, right: 5, top: 30),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: " Enter Amount",
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal),
                              contentPadding:
                                  EdgeInsets.only(left: 20, right: 20),
                              fillColor: Color(0xff29214d),
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide(
                                      width: 0.0, color: Color(0xff29214d))),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide(
                                      width: 0.0, color: Color(0xff29214d))),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide(
                                      width: 0.0, color: Color(0xff29214d))),
                            ),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(left: 5, right: 5, top: 30),
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 12,
                          child: MaterialButton(
                            elevation: 0,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            color: Colors.green,
                            child: Text("25%",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ),
                        )),
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
