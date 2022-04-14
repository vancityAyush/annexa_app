import 'package:flutter/material.dart';

import '../util/util.dart';

class ReuseableMoneyCard extends StatelessWidget {
  final String image;
  final String title;
  final DateTime date;
  final double price;
  final String result;
  /*final Widget icon;*/
  ReuseableMoneyCard({
    Key? key,
    required this.title,
    required this.price,
    required this.date,
    required this.result,
    required this.image,
    /* required this.icon*/
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      height: MediaQuery.of(context).size.height / 9,
      width: MediaQuery.of(context).size.width / 1.5,
      child: Card(
        color: Color(0xff29214d),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(right: 20, top: 20),
            child: getImage(context, image: image, type: IMAGE_TYPE.jpg),
          ),
          title: Padding(
            padding: const EdgeInsets.only(right: 50, top: 20),
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.normal,
                  fontSize: 16),
            ),
          ),
          subtitle: Text(
            date.toString().substring(0, 10),
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.normal),
          ),
          trailing: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18, right: 25),
                child: Text(
                  price.toString(),
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 18,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 25,
                ),
                child: Text(
                  result,
                  style: TextStyle(
                      color: Colors.lightGreenAccent,
                      fontWeight: FontWeight.normal,
                      fontSize: 10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
