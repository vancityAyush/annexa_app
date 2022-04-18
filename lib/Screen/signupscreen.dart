import 'package:annexa_app/Screen/homepage.dart';
import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff150c3f),
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15, top: 20),
                  child: ReuseableText(
                      text: 'Create Account',
                      size: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      wordSpacing: 0),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 10),
                  child: ReuseableText(
                      text: "Full Name*",
                      size: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white60,
                      wordSpacing: 0),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16),
                  child: TextFormField(
                      decoration: const InputDecoration(
                    hintText: 'Please Enter Full Name',
                    hintStyle: TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60),
                    ),
                  )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 10),
                  child: ReuseableText(
                      text: "Mobile Number*",
                      size: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white60,
                      wordSpacing: 0),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16, top: 10),
                  child: TextFormField(
                      decoration: const InputDecoration(
                    hintText: 'Please Enter Mobile/Phone',
                    hintStyle: TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60),
                    ),
                  )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 10),
                  child: ReuseableText(
                      text: "Email*",
                      size: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white60,
                      wordSpacing: 0),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, bottom: 10),
                  child: TextFormField(
                      decoration: const InputDecoration(
                    hintText: 'Please Enter Email',
                    hintStyle: TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60),
                    ),
                  )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 10),
                  child: ReuseableText(
                      text: "Password*",
                      size: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white60,
                      wordSpacing: 0),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, bottom: 10),
                  child: TextFormField(
                      decoration: const InputDecoration(
                    hintText: 'Please Enter Password',
                    hintStyle: TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60),
                    ),
                  )),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ReuseableText(
                      text:
                          "*By joining,I agree to the terms of use,privacy policy,IPR and agree to receive email  releted to our services",
                      size: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      wordSpacing: 0),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    height: MediaQuery.of(context).size.height / 17,
                    width: MediaQuery.of(context).size.width / 2,
                    child: MaterialButton(
                      elevation: 0,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Homepage()));
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Color(0xff29214d),
                      child: const Text('JOIN NOW',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
