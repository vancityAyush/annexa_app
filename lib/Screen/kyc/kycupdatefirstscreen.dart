import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Widget/back_button.dart';

class KycUpdate extends StatefulWidget {
  @override
  _KycUpdateState createState() => _KycUpdateState();
}

class _KycUpdateState extends State<KycUpdate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff150c3f),
      appBar: AppBar(
        leading: navBack(),
        backgroundColor: Color(0xff29214d),
        title: const Text(
          "Kyc Update",
          style: TextStyle(
            color: Colors.indigoAccent,
          ),
        ),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 10),
            child: ReuseableText(
                text: "Personal Info",
                size: 16,
                fontWeight: FontWeight.normal,
                color: Colors.white,
                wordSpacing: 0),
          ),
          const Divider(
            color: Colors.white60,
            thickness: 1,
            endIndent: 15,
            indent: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 10),
            child: ReuseableText(
                text: "FIRST NAME*",
                size: 16,
                fontWeight: FontWeight.normal,
                color: Colors.white,
                wordSpacing: 0),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  fillColor: Color(0xff29214d),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(width: 0.0, color: Color(0xff29214d))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(width: 0.0, color: Color(0xff29214d))),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                          width: 0.0, color: Colors.lightBlueAccent))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: ReuseableText(
                text: "MIDDLE NAME*",
                size: 16,
                fontWeight: FontWeight.normal,
                color: Colors.white,
                wordSpacing: 0),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  fillColor: Color(0xff29214d),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(width: 0.0, color: Color(0xff29214d))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(width: 0.0, color: Color(0xff29214d))),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(width: 0.0, color: Color(0xff29214d)))),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 10),
            child: ReuseableText(
                text: "LAST NAME*",
                size: 16,
                fontWeight: FontWeight.normal,
                color: Colors.white,
                wordSpacing: 0),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  fillColor: Color(0xff29214d),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(width: 0.0, color: Color(0xff29214d))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(width: 0.0, color: Color(0xff29214d))),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(width: 0.0, color: Color(0xff29214d)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: ReuseableText(
                text: "DATE OF BIRTH(DD-MM-YYYY)*",
                size: 16,
                fontWeight: FontWeight.normal,
                color: Colors.white,
                wordSpacing: 0),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  fillColor: Color(0xff29214d),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(width: 0.0, color: Color(0xff29214d))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(width: 0.0, color: Color(0xff29214d))),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(width: 0.0, color: Color(0xff29214d)))),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 10),
            child: ReuseableText(
                text: "ADDRESS*",
                size: 16,
                fontWeight: FontWeight.normal,
                color: Colors.white,
                wordSpacing: 0),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              maxLines: 5,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  fillColor: Color(0xff29214d),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(width: 0.0, color: Color(0xff29214d))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(width: 0.0, color: Color(0xff29214d))),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(width: 0.0, color: Color(0xff29214d)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: ReuseableText(
                text: "STATE*",
                size: 16,
                fontWeight: FontWeight.normal,
                color: Colors.white,
                wordSpacing: 0),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  fillColor: Color(0xff29214d),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(width: 0.0, color: Color(0xff29214d))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(width: 0.0, color: Color(0xff29214d))),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(width: 0.0, color: Color(0xff29214d)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: ReuseableText(
                text: "PAN CARD",
                size: 16,
                fontWeight: FontWeight.normal,
                color: Colors.white,
                wordSpacing: 0),
          ),
          Divider(
            color: Colors.white60,
            thickness: 1,
            endIndent: 15,
            indent: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: ReuseableText(
                text: "PAN NUMBER*",
                size: 16,
                fontWeight: FontWeight.normal,
                color: Colors.white,
                wordSpacing: 0),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  fillColor: Color(0xff29214d),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(width: 0.0, color: Color(0xff29214d))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(width: 0.0, color: Color(0xff29214d))),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(width: 0.0, color: Color(0xff29214d)))),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20, bottom: 20),
            alignment: Alignment.centerRight,
            child: const ReuseableText(
                text: 'Please Enter your PAN Number',
                size: 14,
                fontWeight: FontWeight.normal,
                color: Colors.white,
                wordSpacing: 0),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: ReuseableText(
                text: "AADHAAR CARD",
                size: 16,
                fontWeight: FontWeight.normal,
                color: Colors.white,
                wordSpacing: 0),
          ),
          const Divider(
            color: Colors.white60,
            thickness: 1,
            endIndent: 15,
            indent: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: ReuseableText(
                text: " AADHAAR NUMBER*",
                size: 16,
                fontWeight: FontWeight.normal,
                color: Colors.white,
                wordSpacing: 0),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  fillColor: Color(0xff29214d),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(width: 0.0, color: Color(0xff29214d))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(width: 0.0, color: Color(0xff29214d))),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(width: 0.0, color: Color(0xff29214d)))),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20, bottom: 20),
            alignment: Alignment.centerRight,
            child: ReuseableText(
                text: 'Please Enter your AADHAAR Number',
                size: 14,
                fontWeight: FontWeight.normal,
                color: Colors.white,
                wordSpacing: 0),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            height: MediaQuery.of(context).size.height / 6,
            width: MediaQuery.of(context).size.width / 6,
            child: Card(
                color: Color(0xff29214d),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1)),
                child: Row(
                  children: [
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 12,
                          ),
                          child: ReuseableText(
                              text: "Upload PAN Card",
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              wordSpacing: 0),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: ReuseableText(
                              text: "on desktop,simply drag and drop ",
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white60,
                              wordSpacing: 0),
                        ),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 8.5,
                      width: MediaQuery.of(context).size.width / 6,
                      decoration: BoxDecoration(
                        color: Color(0xff150c3f),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        // ignore: prefer_const_constructors
                        Icons.arrow_upward,
                        color: Colors.white,
                        size: 40,
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
