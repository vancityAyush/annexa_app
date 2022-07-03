import 'package:flutter/material.dart';

import '../Widget/reuseabletabbarmarket.dart';

class Market extends StatefulWidget {
  @override
  _MarketState createState() => _MarketState();
}

class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff150c3f),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TabBarCard(
                    subtitle: 'NSE',
                    title: 'HANGSENG BEES-NAV',
                    price: 2297.11,
                  )),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TabBarCard(
                    subtitle: 'NSE',
                    title: 'HANGSENG BEES-NAV',
                    price: 2297.11,
                  )),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TabBarCard(
                    subtitle: 'NSE',
                    title: 'HANGSENG BEES-NAV',
                    price: 2297.11,
                  )),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TabBarCard(
                    subtitle: 'NSE',
                    title: 'HANGSENG BEES-NAV',
                    price: 2297.11,
                  )),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TabBarCard(
                    subtitle: 'NSE',
                    title: 'HANGSENG BEES-NAV',
                    price: 2297.11,
                  )),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TabBarCard(
                    subtitle: 'NSE',
                    title: 'HANGSENG BEES-NAV',
                    price: 2297.11,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
