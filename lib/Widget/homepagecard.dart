import 'package:annexa_app/Screen/order.dart';
import 'package:flutter/material.dart';

import '../Screen/crypto.dart';
import '../Screen/pricealert.dart';

class homepagecard extends StatelessWidget {
  const homepagecard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width / 1.1,
      child: Card(
        color: Color(0xff29214d),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Crypto()));
                    },
                    child: const CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/images/png/newmarket.png",
                      ),
                      backgroundColor: Color(0xff150c3f),
                      maxRadius: 35,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Order()));
                    },
                    child: const CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/images/png/neworder.png",
                      ),
                      backgroundColor: Color(0xff150c3f),
                      maxRadius: 35,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PriceAlert()));
                    },
                    child: CircleAvatar(
                      backgroundColor: Color(0xff150c3f),
                      backgroundImage:
                          AssetImage('assets/images/png/newprice.png'),
                      maxRadius: 35,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "Market",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    "Order",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    "Price",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
