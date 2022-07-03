import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widget/reuseableprofilecard.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff150c3f),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 30),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                height: MediaQuery.of(context).size.height / 4.8,
                width: MediaQuery.of(context).size.width / 1,
                child: Card(
                  color: Color(0xff29214d),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 20),
                            child: Icon(
                              Icons.people,
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(right: 20, top: 20),
                              child: Text(
                                'User ID',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                      Container(
                          alignment: Alignment.centerRight,
                          child: const Padding(
                            padding: EdgeInsets.only(
                              right: 30,
                            ),
                            child: Text(
                              '17439',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          )),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: ReuseableText(
                              text: 'Balance:',
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              wordSpacing: 0),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 15,
                            ),
                            child: Text(
                              '\u{20B9}${20.0}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.height / 8,
                            margin: EdgeInsets.only(right: 15),
                            child: MaterialButton(
                              elevation: 0,
                              onPressed: () {
                                /*Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SuccessfulScreen()),
                        );*/
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              color: Colors.white,
                              child: const Text('Deposite',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              ReuseableProfileCard(
                text: 'withdraw',
                icon: Icon(
                  Icons.eighteen_mp,
                  color: Colors.white,
                  size: 50,
                ),
                icons: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              ReuseableProfileCard(
                text: 'Transaction',
                icon: Icon(
                  Icons.eighteen_mp,
                  color: Colors.white,
                  size: 50,
                ),
                icons: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              ReuseableProfileCard(
                text: 'Invite Friends',
                icon: Icon(
                  Icons.eighteen_mp,
                  color: Colors.white,
                  size: 50,
                ),
                icons: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              ReuseableProfileCard(
                text: 'online Support',
                icon: Icon(
                  Icons.eighteen_mp,
                  color: Colors.white,
                  size: 50,
                ),
                icons: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              ReuseableProfileCard(
                text: 'Tutorials',
                icon: Icon(
                  Icons.eighteen_mp,
                  color: Colors.white,
                  size: 50,
                ),
                icons: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                height: MediaQuery.of(context).size.height / 20,
                width: MediaQuery.of(context).size.width / 2.4,
                child: MaterialButton(
                  elevation: 0,
                  onPressed: () {
                    /*Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SuccessfulScreen()),
                        );*/
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Color(0xff29214d),
                  child: const Text('Log out',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
