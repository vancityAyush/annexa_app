import 'package:annexa_app/Widget/back_button.dart';
import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnlineSupport extends StatefulWidget {
  @override
  _OnlineSupportState createState() => _OnlineSupportState();
}

class _OnlineSupportState extends State<OnlineSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff150c3f),
        body: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: const [
                    navBack(),
                    Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: ReuseableText(
                          text: 'Online Support',
                          size: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          wordSpacing: 0),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15, bottom: 10),
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        color: Color(0xff150c3f),
                        borderRadius: BorderRadius.circular(50),
                        //set border radius to 50% of square height and widt
                      ),
                      child: const Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 30),
                          child: ReuseableText(
                              text: 'E-mail',
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              wordSpacing: 0),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, left: 15),
                          child: ReuseableText(
                              text: "Support@annextrading",
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              wordSpacing: 0),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: ReuseableText(
                              text:
                                  "We will get a response within 1 business day",
                              size: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              wordSpacing: 0),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: ReuseableText(
                              text:
                                  "(Email subject should be  your registered account)",
                              size: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              wordSpacing: 0),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 10),
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        color: Color(0xff150c3f),
                        borderRadius: BorderRadius.circular(50),
                        //set border radius to 50% of square height and widt
                      ),
                      child: const Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 6, top: 30),
                          child: ReuseableText(
                              text: 'WhatsApp',
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              wordSpacing: 0),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 10),
                          child: ReuseableText(
                              text: 'User feedback',
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              wordSpacing: 0),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, left: 30, right: 30),
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width / 1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1),
                    color: Color(0xff150c3f),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ReuseableText(
                      color: Colors.white60,
                      size: 16,
                      text: "Enter the question and the advice",
                      fontWeight: FontWeight.normal,
                      wordSpacing: 0,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 30),
                    height: MediaQuery.of(context).size.height / 17,
                    width: MediaQuery.of(context).size.width / 2,
                    child: MaterialButton(
                      elevation: 0,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      color: Color(0xff29214d),
                      child: const Text('Submit',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 30),
                  alignment: Alignment.centerLeft,
                  child: const ReuseableText(
                      text: 'History of online support',
                      size: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      wordSpacing: 0),
                ),
              ],
            ),
          ],
        ));
  }
}
