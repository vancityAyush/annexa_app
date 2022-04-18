import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widget/back_button.dart';
import '../Widget/cryptodatatable.dart';

class Crypto extends StatefulWidget {
  const Crypto({Key? key}) : super(key: key);

  @override
  _CryptoState createState() => _CryptoState();
}

class _CryptoState extends State<Crypto> with SingleTickerProviderStateMixin {
  final List<Widget> _tabs = [
    Center(
      child: Text("All Conins"),
    ),
    Center(
      child: Text("My Watchlist"),
    )
  ];

  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: _tabs.length, vsync: this);
    _controller.addListener(() {
      print(_controller.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Color(0xff150c3f),
        appBar: AppBar(
          backgroundColor: Color(0xff29214d),
          leading: navBack(),
          title: const Text(
            "Crypto",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(
            tabs: const [
              Text(
                "All Coins",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "My WatchList",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
            onTap: (index) {
              print(index);
            },
          ),
        ),
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: ReuseableText(
                      text: "Your Assest",
                      size: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white60,
                      wordSpacing: 0),
                ),
                Divider(
                  color: Colors.white60,
                  thickness: 0.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: ReuseableText(
                          text: " Coins Name",
                          size: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          wordSpacing: 0),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: ReuseableText(
                          text: "Price",
                          size: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          wordSpacing: 0),
                    ),
                    Padding(
                      padding: EdgeInsets.all(13.0),
                      child: ReuseableText(
                          text: "24HCHANGE",
                          size: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          wordSpacing: 0),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.white60,
                  thickness: 0.5,
                ),
                const CryptoDataTable(
                  title: 'Bitcoin',
                  totalpercentage: 11.90,
                  subtitle: 'BTC',
                  rate: 6.25,
                  image: 'bitcoin',
                  price: 1234455,
                ),
                Divider(
                  color: Colors.white60,
                  thickness: 0.5,
                ),
                CryptoDataTable(
                  title: 'Bitcoin',
                  totalpercentage: 11.90,
                  subtitle: 'BTC',
                  rate: 6.25,
                  image: 'bitcoin',
                  price: 1234455,
                ),
                Divider(
                  color: Colors.white60,
                  thickness: 0.5,
                ),
                CryptoDataTable(
                  title: 'Bitcoin',
                  totalpercentage: 11.90,
                  subtitle: 'BTC',
                  rate: 6.25,
                  image: 'bitcoin',
                  price: 1234455,
                ),
                Divider(
                  color: Colors.white60,
                  thickness: 0.5,
                ),
                CryptoDataTable(
                  title: 'Bitcoin',
                  totalpercentage: 11.90,
                  subtitle: 'BTC',
                  rate: 6.25,
                  image: 'bitcoin',
                  price: 1234455,
                ),
                Divider(
                  color: Colors.white60,
                  thickness: 0.5,
                ),
                CryptoDataTable(
                  title: 'Bitcoin',
                  totalpercentage: 11.90,
                  subtitle: 'BTC',
                  rate: 6.25,
                  image: 'bitcoin',
                  price: 1234455,
                ),
                Divider(
                  color: Colors.white60,
                  thickness: 0.5,
                ),
                CryptoDataTable(
                  title: 'Bitcoin',
                  totalpercentage: 11.90,
                  subtitle: 'BTC',
                  rate: 6.25,
                  image: 'bitcoin',
                  price: 1234455,
                ),
                Divider(
                  color: Colors.white60,
                  thickness: 0.5,
                ),
                CryptoDataTable(
                  title: 'Bitcoin',
                  totalpercentage: 11.90,
                  subtitle: 'BTC',
                  rate: 6.25,
                  image: 'bitcoin',
                  price: 1234455,
                ),
                Divider(
                  color: Colors.white60,
                  thickness: 0.5,
                ),
                CryptoDataTable(
                  title: 'Bitcoin',
                  totalpercentage: 11.90,
                  subtitle: 'BTC',
                  rate: 6.25,
                  image: 'bitcoin',
                  price: 1234455,
                ),
                Divider(
                  color: Colors.white60,
                  thickness: 0.5,
                ),
                CryptoDataTable(
                  title: 'Bitcoin',
                  totalpercentage: 11.90,
                  subtitle: 'BTC',
                  rate: 6.25,
                  image: 'bitcoin',
                  price: 1234455,
                ),
              ],
            )
          ],
        ),
        /*body: Center(
            child: TabBarView(
              children: _tabs,
              controller: _controller,
            ),
          )*/
      ),
    );
    /*  body: ListView.separated(
            itemBuilder: (context, index) {
              return ReuseAbleCrypto(
                price: 123,
                rate: 90,
                image: 'crypto.png',
                percentageChange: 6.92,
                subtitle: 'btc',
                title: 'Bitcoin',
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: 7)*/
  }
}

Widget buildDashedLine() => Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: DottedLine(
          lineLength: 380,
          dashColor: Colors.white60,
          lineThickness: 1.5,
          dashLength: 4,
          dashGapLength: 5,
        ),
      ),
    );
