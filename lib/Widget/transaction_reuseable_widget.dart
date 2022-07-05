import 'package:annexa_app/models/order_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../util/util.dart';

class TransactionWidget extends StatelessWidget {
  final OrderData data;

  TransactionWidget({
    required this.data,
  });

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
                child: getAssetImage(context,
                    base: data.baseImg, main: data.mainImg, radius: 25),
              ),
              Column(
                children: [
                  Text(
                    data.ticker,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    data.traid_time,
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
                  " ₹" + data.amount,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 18),
                ),
                Text(
                  " ↑" + data.profit_perc + "%",
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
                " ₹ ${data.profit}",
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    data.orderType,
                    style: TextStyle(
                        color: Colors.yellow,
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
