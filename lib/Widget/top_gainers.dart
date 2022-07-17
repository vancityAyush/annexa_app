import 'package:annexa_app/network/entity/crypto_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopGainers extends StatelessWidget {
  final List<CryptoEntity> data;

  const TopGainers({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        height: MediaQuery.of(context).size.height / 4.5,
        child: ListView.builder(
          itemCount: data.length < 10 ? data.length : 10,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => Container(
            height: 10,
            width: 130,
            child: Card(
              color: const Color(0xff29214d),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(Icons.monetization_on,
                        color: Colors.white, size: 30),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      data[index].baseAsset.toUpperCase(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      " ₹" + data[index].lastPrice,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      data[index].percent > 0
                          ? "+" + data[index].percent.toStringAsFixed(2) + "%"
                          : data[index].percent.toStringAsFixed(2) + "%",
                      style: TextStyle(
                          color: data[index].percent > 0
                              ? Colors.green
                              : Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
