import 'package:annexa_app/Widget/back_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widget/reuseable_text.dart';

class AddMoney extends StatefulWidget {
  const AddMoney({Key? key}) : super(key: key);

  @override
  _AddMoneyState createState() => _AddMoneyState();
}

class _AddMoneyState extends State<AddMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff150c3f),
        appBar: AppBar(
            backgroundColor: Color(0xff29214d),
            leading: navBack(),
            title: ReuseableText(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              size: 16,
              wordSpacing: 0,
              text: 'Add Money',
            )),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: ReuseableText(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  wordSpacing: 0,
                  size: 18,
                  text: "Add Money"),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: ReuseableText(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  wordSpacing: 0,
                  size: 12,
                  text: "Current Balance: ₹0.02"),
            ),
            Container(
                width: MediaQuery.of(context).size.width / 1.1,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      fillColor: Color(0xff29214d),
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text("₹",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                      ),
                      hintText: 'Enter Amount',
                      hintStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 5, left: 100),
                  child: ReuseableText(
                      text: 'Min,₹100',
                      size: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      wordSpacing: 0),
                ),
                Expanded(
                    child: Divider(
                  color: Colors.white,
                  thickness: 1,
                  endIndent: 20,
                  indent: 20,
                )),
                Padding(
                  padding: EdgeInsets.only(top: 10.0, right: 100),
                  child: ReuseableText(
                      text: 'Max,₹510000',
                      size: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      wordSpacing: 0),
                )
              ],
            ),
            Wrap(children: [
              Container(
                padding: EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: MaterialButton(
                            elevation: 0,
                            onPressed: () {
                              //on press of custom button
                            },
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Color(0xff29214d)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Color(0xff29214d),
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.cyanAccent,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    '\u{20B9}${70}',
                                    style: TextStyle(
                                        color: Colors.cyanAccent,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: MaterialButton(
                            elevation: 0,
                            onPressed: () {
                              //on press of custom button
                            },
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Color(0xff29214d)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Color(0xff29214d),
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.cyanAccent,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    '\u{20B9}${70}',
                                    style: TextStyle(
                                        color: Colors.cyanAccent,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: MaterialButton(
                            elevation: 0,
                            onPressed: () {
                              //on press of custom button
                            },
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Color(0xff29214d)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Color(0xff29214d),
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.cyanAccent,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    '\u{20B9}${70}',
                                    style: TextStyle(
                                        color: Colors.cyanAccent,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
            ),
            GestureDetector(
              onTap: () {
                /*    Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Address ()),
                );*/
              },
              child: Container(
                  height: MediaQuery.of(context).size.height / 15,
                  margin: const EdgeInsets.only(top: 50, left: 15, right: 15),
                  decoration: BoxDecoration(
                    color: Color(0xff29214d),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      'Continue',
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
