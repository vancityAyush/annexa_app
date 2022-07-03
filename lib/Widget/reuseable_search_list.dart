import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchList extends StatelessWidget {
  final String title;
  final String subtitle;
  final Icon icon;

  SearchList({required this.title, required this.subtitle, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 9,
        width: MediaQuery.of(context).size.width / 1,
        child: Card(
            color: Color(0xff29214d),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 18, left: 10),
                        child: Text(
                          title,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          subtitle,
                          style: const TextStyle(
                              color: Colors.white60,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                        onTap: () {
                          bottomsheets(context);
                        },
                        child: icon),
                  )
                ])));
  }

  void bottomsheets(context) {
    showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              decoration: const BoxDecoration(
                  color: Color(0xff150c3f),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ReuseableText(
                            text: "ASIAN HOTEL(EAST)",
                            size: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            wordSpacing: 0),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Column(
                            children: [
                              Icon(
                                Icons.remove_red_eye,
                                color: Colors.red,
                              ),
                              ReuseableText(
                                  text: "Add To Watch list",
                                  size: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  wordSpacing: 0),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            ReuseableText(
                                text: 'Rs.236.1',
                                size: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                wordSpacing: 0),
                            ReuseableText(
                                text: 'Trading Symbol:AHLEAST',
                                size: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                wordSpacing: 0),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.white60,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ReuseableText(
                                text: 'High',
                                size: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                wordSpacing: 0),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ReuseableText(
                                text: '250',
                                size: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                wordSpacing: 0),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.account_balance,
                        color: Colors.white,
                        size: 40,
                      ),
                      Expanded(
                          child: SizedBox(
                        width: 5,
                      )),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ReuseableText(
                                text: 'LOW',
                                size: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                wordSpacing: 0),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ReuseableText(
                                text: '250',
                                size: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                wordSpacing: 0),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.account_balance,
                        color: Colors.white,
                        size: 40,
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.white60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ReuseableText(
                                text: 'OPEN',
                                size: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.white60,
                                wordSpacing: 0),
                          ),
                          ReuseableText(
                              text: '250',
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              wordSpacing: 0)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50, left: 20),
                        child: Icon(
                          Icons.remove_red_eye,
                          color: Colors.green,
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ReuseableText(
                                text: 'CLOSE',
                                size: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                wordSpacing: 0),
                          ),
                          ReuseableText(
                              text: '250',
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              wordSpacing: 0)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50, left: 20),
                        child: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.white60,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20, left: 5, right: 5),
                    child: TextFormField(
                        decoration: InputDecoration(
                      fillColor: Color(0xff29214d),
                      filled: true,
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      hintText: 'Enter Quantity',
                      hintStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 16),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    height: MediaQuery.of(context).size.height / 18,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: ReuseableText(
                          color: Colors.white,
                          size: 14,
                          text: 'BUY',
                          fontWeight: FontWeight.normal,
                          wordSpacing: 0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ));
  }
}
