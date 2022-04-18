import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReuseAbleCrypto extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final double price;
  final double rate;
  final double percentageChange;

  ReuseAbleCrypto(
      {required this.title,
      required this.subtitle,
      required this.price,
      required this.rate,
      required this.percentageChange,
      required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/Image/$image',
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(title),
                  ),
                  Text(subtitle)
                ],
              )
            ],
          ),
          Column(
            children: [Text(" ₹" + title), Text("%" + subtitle)],
          )
        ],
      ),
    );
  }
}
