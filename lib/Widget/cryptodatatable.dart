import 'package:annexa_app/util/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CryptoDataTable extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final double price;
  final double rate;
  final double totalpercentage;

  const CryptoDataTable({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.totalpercentage,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: getImage(context, image: image, type: IMAGE_TYPE.jpg),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 16),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.normal,
                  fontSize: 12),
            )
          ],
        ),
        Column(
          children: [
            Text(" ₹" + price.toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal)),
            Text(
              "↑" + rate.toString(),
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
            )
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height / 26,
          width: MediaQuery.of(context).size.width / 4,
          child: MaterialButton(
            elevation: 0,
            onPressed: () {
              /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SuccessfulScreen()),
                    );*/
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: Color(0xfff6b6b6),
            child: Text(" -" + totalpercentage.toString() + " %",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
          ),
        )
      ],
    );
  }
}
