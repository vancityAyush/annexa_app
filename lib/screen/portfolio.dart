import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widget/back_button.dart';
import 'Positions.dart';
import 'holding.dart';
import 'newalert.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio>
    with SingleTickerProviderStateMixin {
  final List<Widget> _tabs = [
    Center(
      child: Text("Holding"),
    ),
    Center(
      child: Text("Positions"),
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
          bottom: TabBar(
            tabs: [
              Text(
                "Holding",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Positions",
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
        body: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => NewAlert()));
          },
          child: TabBarView(
            children: [Holding(), Positions()],
          ),
        ),
      ),
    );
  }
}
