import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../util/util.dart';

class TransactionWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final double mainprice;
  final String rate;
  final double holdingprice;
  final String holdingrate;
  TransactionWidget(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.mainprice,
      required this.rate,
      required this.holdingprice,
      required this.holdingrate});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: getImage(context, image: image, type: IMAGE_TYPE.jpg),
              ),
              Column(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                  )
                ],
              )
            ],
          )),
      Expanded(
        flex: 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  " ₹" + mainprice.toString(),
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 18),
                ),
                Text(
                  " ↑" + rate,
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ],
            )
          ],
        ),
      ),
      Expanded(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                " ₹" + holdingprice.toString(),
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    holdingrate,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                  ),
                ],
              )
            ],
          )
        ],
      ))
    ]);
  }
}
