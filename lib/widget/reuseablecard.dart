import 'package:annexa_app/util/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReuseAbleCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final DateTime date;
  final double quantity;
  final String price;
  final double totalAmount;
  ReuseAbleCard(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.date,
      required this.quantity,
      required this.price,
      required this.totalAmount});

  @override
  Widget build(BuildContext context) {
    print('assets/Image/$image');
    return Container(
      height: MediaQuery.of(context).size.height / 7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image.asset(
              //   'assets/images/png/$image',
              //   height: 50,
              //   width: 50,
              //   fit: BoxFit.cover,
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: getImage(context, image: image, type: IMAGE_TYPE.jpg),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    date.toString().substring(0, 10),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                  )
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            /*  crossAxisAlignment: CrossAxisAlignment.end,*/
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Text(
                  "Qty :" + quantity.toString() + " FTM",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Text(
                  " ₹" + price,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Text(
                  " ₹" + totalAmount.toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
