import 'package:annexa_app/models/wallet_data.dart';
import 'package:flutter/material.dart';

class ReuseableMoneyCard extends StatelessWidget {
  WalletData data;

  ReuseableMoneyCard({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      height: MediaQuery.of(context).size.height / 7,
      width: MediaQuery.of(context).size.width / 1.5,
      child: Card(
        color: Color(0xff29214d),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: ListTile(
          title: Padding(
            padding: EdgeInsets.only(right: 15, top: 20),
            child: Text(
              data.amount,
              style: TextStyle(
                color: data.type == "Dr" ? Colors.red : Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          subtitle: Text(
            data.date,
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.normal),
          ),
          trailing: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 18, right: 25),
                child: Text(
                  "₹ " + data.balance,
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 18,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 25,
                ),
                child: Text(
                  data.transactionType,
                  style: TextStyle(
                      color: data.type == "Dr" ? Colors.red : Colors.green,
                      fontWeight: FontWeight.normal,
                      fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
