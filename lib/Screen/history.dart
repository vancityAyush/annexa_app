import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initstate() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
    controller.addListener(() {
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff150c3f),
      body: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40),
                  alignment: Alignment.center,
                  child: ReuseableText(
                    text: 'History',
                    fontWeight: FontWeight.bold,
                    size: 16,
                    wordSpacing: 0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25,
                ),
                TabBar(
                    indicatorPadding: EdgeInsets.all(8),
                    indicatorColor: Colors.white,
                    unselectedLabelColor: Colors.blue,
                    labelColor: Colors.white,
                    indicatorWeight: 5,
                    tabs: <Widget>[
                      Tab(text: ('Active')),
                      Tab(text: ('Closed'))
                    ]),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReuseableText(
                          text: "2022-02-28",
                          size: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          wordSpacing: 0),
                      ReuseableText(
                          text: "Transaction:2",
                          size: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          wordSpacing: 0)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: MediaQuery.of(context).size.height / 4.2,
                  width: MediaQuery.of(context).size.width / 1,
                  child: Card(
                    color: Color(0xff29214d),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: const ReuseableText(
                              text: "Volatility 100 index",
                              size: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              wordSpacing: 0),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 25,
                          ),
                          child: const ReuseableText(
                              text: "FTT 75%",
                              size: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.red,
                              wordSpacing: 0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 10,
                              ),
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.red,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 10, right: 10),
                              child: Text(
                                '\u{20B9}${20.0}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, bottom: 25),
                                  child: Icon(
                                    Icons.watch_later_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 1, bottom: 25),
                                  child: ReuseableText(
                                      text: "1 minute",
                                      size: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      wordSpacing: 0),
                                )
                              ],
                            ),
                            Row(
                              children: const [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 25),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.red,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 10, bottom: 25),
                                  child: Text(
                                    '\u{20B9}${20.0}',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: MediaQuery.of(context).size.height / 4.2,
                  width: MediaQuery.of(context).size.width / 1,
                  child: Card(
                    color: Color(0xff29214d),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: const ReuseableText(
                              text: "Volatility 100 index",
                              size: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              wordSpacing: 0),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 26,
                          ),
                          child: const ReuseableText(
                              text: "FTT 75%",
                              size: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.green,
                              wordSpacing: 0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 10,
                              ),
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.red,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 10, right: 10),
                              child: Text(
                                '\u{20B9}${20.0}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 15, bottom: 25),
                                  child: Icon(
                                    Icons.watch_later_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(right: 5, bottom: 25),
                                  child: ReuseableText(
                                      text: "1 minute",
                                      size: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      wordSpacing: 0),
                                )
                              ],
                            ),
                            Row(
                              children: const [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 25),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.red,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 10, bottom: 25),
                                  child: Text(
                                    '\u{20B9}${20.0}',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
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
