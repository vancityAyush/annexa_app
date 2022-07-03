import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final double price;

  TabBarCard(
      {required this.title, required this.subtitle, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 9,
      width: MediaQuery.of(context).size.width / 1,
      child: Card(
          color: Color(0xff29214d),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  " Rs." + price.toString(),
                  style: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              )
            ],
          )),
    );
  }
}
