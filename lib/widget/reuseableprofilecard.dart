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
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: MediaQuery.of(context).size.height / 11,
      child: Card(
        color: Color(0xff29214d),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),

        /*ListTile(
            leading: icon,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text(
                    text,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                icons
              ],
            ),
          )*/
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: icon,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    text,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: icons,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
