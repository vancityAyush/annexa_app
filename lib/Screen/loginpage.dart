import 'package:annexa_app/Screen/signupscreen.dart';
import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'kyc/kycupdatefirstscreen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff150c3f),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 2.6,
                child: Image.asset("assets/images/png/Annexlogo.png"),
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: ReuseableText(
                    text: "Login",
                    size: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white60,
                    wordSpacing: 0),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 16),
                child: ReuseableText(
                    text: "Email",
                    size: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white60,
                    wordSpacing: 0),
              ),
              Container(
                margin: EdgeInsets.only(left: 22),
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
                padding: EdgeInsets.only(top: 20, left: 16),
                child: ReuseableText(
                    text: "Password",
                    size: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white60,
                    wordSpacing: 0),
              ),
              Container(
                margin: EdgeInsets.only(left: 22),
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
              Container(
                alignment: Alignment.bottomRight,
                child: const ReuseableText(
                    text: "Forget Password?",
                    size: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white60,
                    wordSpacing: 0),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  height: MediaQuery.of(context).size.height / 18,
                  width: MediaQuery.of(context).size.width / 3,
                  child: MaterialButton(
                    elevation: 0,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    color: Color(0xff29214d),
                    child: const Text('LOGIN',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Center(
                child: ReuseableText(
                    text: "New to Annex Trading? Join Now",
                    size: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    wordSpacing: 0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
