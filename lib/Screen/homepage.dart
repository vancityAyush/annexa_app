import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widget/homepagecard.dart';
import '../Widget/reuseable_text.dart';
import '../Widget/top_gainers.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff150c3f),
        appBar: AppBar(
            leading: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: CircleAvatar(
                      maxRadius: 22,
                      backgroundColor: Colors.yellow,
                      backgroundImage:
                          AssetImage("assets/images/png/user.png")),
                ),
                /*Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ReuseableText(
                      text: "Yash",
                      size: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      wordSpacing: 0),
                )*/
              ],
            ),
            toolbarHeight: 100,
            backgroundColor: Color(0xff29214d),
            title: Image.asset(
              "assets/images/png/Annexlogo.png",
              fit: BoxFit.cover,
            )),
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, top: 10),
                    child: Text(
                      "Welcome to AnnexTrading",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    "Make your first invesment",
                    style: TextStyle(
                        color: Colors.white60,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: const homepagecard(),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                  child: Image.asset(
                    "assets/images/jpg/foto.jpg",
                    fit: BoxFit.contain,
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 25, top: 30),
                  child: Text(
                    "Top Gainers",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  child: Text(
                    "Coin that have gained the most in 24 hours ",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 14),
                  ),
                ),
                const TopGainers(
                    percentage: '6.92.',
                    name: 'Bitcoin',
                    price: '24656.6',
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
                const TopGainers(
                    percentage: '6.92.',
                    name: 'Bitcoin',
                    price: '24656.6',
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
                Container(
                  width: MediaQuery.of(context).size.width * 2,
                  child: const ReuseableText(
                    size: 20,
                    text: "Watch the Biggner's Guide to Go App! ",
                    wordSpacing: 3,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ReuseableText(
                  size: 16,
                  text:
                      "Worried about how to getting started?Watch this video and learn the basics",
                  wordSpacing: 3,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
                /* Image.asset("assets/Image/crypto.png"),*/
                /*  Container(child: Image.asset("assets/images/jpg/visa.jpg")),*/
                Container(
                  height: MediaQuery.of(context).size.height / 3.5,
                  width: MediaQuery.of(context).size.width / 1,
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(
                        children: [
                          Image.asset("assets/images/jpg/visa.jpg",
                              fit: BoxFit.cover,
                              height: MediaQuery.of(context).size.height / 3.1,
                              width: MediaQuery.of(context).size.width / 1),
                          Container(
                            width: MediaQuery.of(context).size.width * .3,
                            child: const ReuseableText(
                                text: "Connecting the world to crypto",
                                size: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                wordSpacing: 0),
                          )
                        ],
                      )),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/images/png/chatapp.png",
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: const ReuseableText(
                              text: "Need Help?We are here for you",
                              size: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              wordSpacing: 0),
                        ),
                        Container(
                          child: const ReuseableText(
                              text: "24*7 Customer Support",
                              size: 10,
                              fontWeight: FontWeight.normal,
                              color: Colors.white60,
                              wordSpacing: 0),
                        ),
                        Container(
                          child: const ReuseableText(
                              text: "Visit Help Center",
                              size: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.green,
                              wordSpacing: 0),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            elevation: 4,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xff29214d),
            selectedItemColor: Colors.blue,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            unselectedItemColor: Colors.white70,
            iconSize: 30,
            currentIndex: _currentIndex,
            onTap: (index) => setState(() {
                  _currentIndex = index;
                }),
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: "Home",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.fiber_new_sharp,
                  color: Colors.white,
                ),
                label: "News",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/png/bar_chart.png",
                  height: 40,
                  color: Colors.white,
                ),
                label: "Trade",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.currency_bitcoin,
                  color: Colors.white,
                ),
                label: "Crypto",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/png/user.png",
                    color: CupertinoColors.white, height: 30),
                label: "Profile",
                backgroundColor: Colors.white,
              ),
            ]));
  }
}
