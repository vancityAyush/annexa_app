import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Orderitems extends StatefulWidget {
  @override
  _OrderitemsState createState() => _OrderitemsState();
}

class _OrderitemsState extends State<Orderitems>
    with SingleTickerProviderStateMixin {
  final List<Widget> _tabs = [
    Center(
      child: Text("bbcbfn"),
    ),
    Center(
      child: Text("Shubham"),
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

  int _curr = 0;
  PageController controller = PageController();
  List demo = [
    {
      'img': 'assets/abc.png',
      'title': 'Coin1',
      'subTitle': 'subTitle1',
    },
    {
      'img': 'assets/abc.png',
      'title': 'Coin2',
      'subTitle': 'subTitle2',
    },
    {
      'img': 'assets/abc.png',
      'title': 'Coin3',
      'subTitle': 'subTitle3',
    },
    {
      'img': 'assets/abc.png',
      'title': 'Coin4',
      'subTitle': 'subTitle4',
    },
  ];
  Widget build(BuildContext context) {
    List<Widget> pages = [allCoins(), watchList()];
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      controller.animateToPage(0,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("AllCoins"),
                  )),
              InkWell(
                  onTap: () {
                    setState(() {
                      controller.animateToPage(1,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("WatchList"),
                  )),
            ],
          ),
          Expanded(
            child: PageView.builder(
              itemCount: pages.length,
              scrollDirection: Axis.horizontal,
              controller: controller,
              onPageChanged: (num) {
                setState(() {
                  _curr = num;
                });
              },
              itemBuilder: (context, index) {
                return pages[index];
              },
            ),
          ),
        ],
      ),
    ));
  }

  allCoins() {
    return Center(
        child: ListView.builder(
            itemCount: demo.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Text(demo[index]['title']),
                  Text(demo[index]['subTitle']),
                ],
              );
            }));
  }

  watchList() {
    return Center(child: Text('data2'));
  }
}
