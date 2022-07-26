import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:annexa_app/main.dart';
import 'package:annexa_app/screen/login/signupscreen.dart';
import 'package:annexa_app/services/api_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../services/api_service.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final ApiService apiService = getIt<ApiService>();
  String email = '';
  String password = '';
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff150c3f),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: SizedBox(
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
                  margin: const EdgeInsets.only(left: 22),
                  child: TextFormField(
                      onSaved: (value) {
                        email = value!;
                      },
                      style: const TextStyle(color: Colors.white),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your email";
                        }
                        return null;
                      },
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
                      onSaved: (value) {
                        password = value!;
                      },
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter the Password';
                        }
                        return null;
                      },
                      style: TextStyle(color: Colors.white),
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
                    margin: const EdgeInsets.only(top: 15),
                    height: MediaQuery.of(context).size.height / 18,
                    width: MediaQuery.of(context).size.width / 3,
                    child: RoundedLoadingButton(
                      controller: _btnController,
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          _btnController.success();
                          _formKey.currentState!.save();
                          await apiService.login(context, email, password);
                        } else {
                          _btnController.error();
                        }
                      },
                      resetAfterDuration: true,
                      resetDuration: const Duration(seconds: 2),
                      borderRadius: 10,
                      color: const Color(0xff29214d),
                      successColor: Colors.green,
                      child: const Text('LOGIN',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },
                    child: const ReuseableText(
                        text: "New to Annex Trading? Join Now",
                        size: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        wordSpacing: 0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
