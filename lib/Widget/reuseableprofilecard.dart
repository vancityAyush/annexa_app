import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReuseableProfileCard extends StatelessWidget {
  final Widget icon;
  final String text;
  final Widget icons;
  ReuseableProfileCard(
      {required this.icon, required this.text, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      height: MediaQuery.of(context).size.height / 13,
      child: Card(
          color: Color(0xff29214d),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: ListTile(
            leading: icon,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                icons
              ],
            ),
          )),
    );
  }
}
