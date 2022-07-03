import 'package:annexa_app/Screen/history.dart';
import 'package:annexa_app/Screen/tradinghomepage.dart';
import 'package:annexa_app/Screen/userprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';
import 'news.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final pageOption = [
    TradingHomepage(),
    NewsScreen(),
    History(),
    Homepage(),
    UserProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: pageOption,
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
                icon: Image.asset(
                  "assets/images/png/home.png",
                  height: 40,
                  color: Colors.white,
                ),
                label: "Home",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/png/news (1).png",
                  height: 40,
                  color: Colors.white,
                ),
                label: "News",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/png/trade.png",
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
                icon: Image.asset("assets/images/png/profile.png",
                    color: Colors.white, height: 30),
                label: "Profile",
                backgroundColor: Colors.white,
              ),
            ]));
  }
}
