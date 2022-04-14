import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../util/util.dart';

class ReuseAblePriceAlert extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final Icon icon;
  ReuseAblePriceAlert(
      {required this.image,
      required this.title,
      required this.price,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: getImage(context, image: image, type: IMAGE_TYPE.jpg),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 20),
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16, bottom: 20),
                child: Text(
                  price,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16, bottom: 20),
                child: icon,
              )
            ],
          )
        ],
      ),
    );
  }
}
