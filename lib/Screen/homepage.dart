import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widget/homepagecard.dart';
import '../Widget/reuseable_icon.dart';
import '../Widget/reuseable_text.dart';
import '../Widget/top_gainers.dart';
import 'order.dart';

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
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "ANNEX TRADING",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Order()));
          },
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: const Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Welcome to AnnexTrading",
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  const Text(
                    "Make your first invesment",
                    style: const TextStyle(
                        color: Colors.white60,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: const homepagecard(),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      "Top Gainers",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 25),
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
                      icon: Icon(Icons.add)),
                  const TopGainers(
                      percentage: '6.92.',
                      name: 'Bitcoin',
                      price: '24656.6',
                      icon: Icon(Icons.add)),
                  const ReuseableText(
                    size: 16,
                    text: "Watch the Biggner's Guide to Go App! ",
                    wordSpacing: 3,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  const ReuseableText(
                    size: 16,
                    text: "Watch the Biggner's Guide to Go App! ",
                    wordSpacing: 3,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  /* Image.asset("assets/Image/crypto.png"),*/

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20, top: 20),
                        child: ReusableIcon(
                          color: Colors.white,
                          icon: Icon(Icons.add),
                          size: 100,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          ReuseableText(
                            size: 12,
                            text: "Need Help?We are here for you",
                            wordSpacing: 0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          ReuseableText(
                            size: 12,
                            text: " 24*7 Customer Support",
                            wordSpacing: 0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          ReuseableText(
                            size: 10,
                            text: "Visit Help Center",
                            wordSpacing: 0,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            elevation: 4,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.blue,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            unselectedItemColor: Colors.white70,
            iconSize: 30,
            currentIndex: _currentIndex,
            onTap: (index) => setState(() {
                  _currentIndex = index;
                }),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: "Home",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.fiber_new_sharp,
                  color: Colors.black,
                ),
                label: "News",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.graphic_eq,
                  color: Colors.black,
                ),
                label: "Trade",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.currency_bitcoin,
                  color: Colors.black,
                ),
                label: "Crypto",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.people_alt_outlined,
                  color: Colors.black,
                ),
                label: "Profile",
                backgroundColor: Colors.white,
              ),
            ]));
  }
}
