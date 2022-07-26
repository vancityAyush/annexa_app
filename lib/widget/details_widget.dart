import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsReuseable extends StatelessWidget {
  final Widget icon;
  final String text;
  final String subtext;
  final String subsubtext;
  final Widget icons;
  DetailsReuseable(
      {required this.icon,
      required this.text,
      required this.icons,
      required this.subtext,
      required this.subsubtext});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ReuseableText(
              text: "KYC Details",
              size: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              wordSpacing: 0),
          ReuseableText(
              text: "Mange your KYC, Bank Details etc",
              size: 12,
              fontWeight: FontWeight.normal,
              color: Colors.white70,
              wordSpacing: 0),
          ReuseableText(
              text: "KYC PENDING",
              size: 10,
              fontWeight: FontWeight.normal,
              color: Colors.white70,
              wordSpacing: 0),
        ],
      ),
      trailing: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.arrow_forward_ios_outlined,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
