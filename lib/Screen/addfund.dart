import 'dart:math';

import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:annexa_app/main.dart';
import 'package:annexa_app/models/OAuthUser.dart';
import 'package:annexa_app/models/wallet_data.dart';
import 'package:annexa_app/network/api_client.dart';
import 'package:annexa_app/network/response/response.dart';
import 'package:annexa_app/network/response/wallet_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widget/back_button.dart';
import '../Widget/reuseable_moneycard.dart';
import 'addmoney.dart';

class AddFund extends StatefulWidget {
  @override
  _AddFundState createState() => _AddFundState();
}

class _AddFundState extends State<AddFund> {
  final _user = getIt<User>();
  final apiClient = getIt<ApiClient>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff150c3f),
      appBar: AppBar(
        leading: const navBack(),
        backgroundColor: const Color(0xff29214d),
        title: const Text("Indian Rupee"),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                height: MediaQuery.of(context).size.height / 8,
                width: MediaQuery.of(context).size.height / 1.5,
                child: Card(
                    color: const Color(0xff29214d),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const Padding(
                                padding: EdgeInsets.only(left: 8, top: 30),
                                child: ReuseableText(
                                  color: Colors.white,
                                  wordSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  size: 16,
                                  text: 'Available Balance',
                                )),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 5),
                              child: Text(
                                ' \u{20B9}${_user.wallet_balance ?? 0.0}',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Image.asset(
                            "assets/images/jpg/bitcoin.jpg",
                            height: 50,
                            width: 50,
                            fit: BoxFit.contain,
                          ),
                        )
                      ],
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: MediaQuery.of(context).size.height / 22,
                    width: MediaQuery.of(context).size.width / 3,
                    child: MaterialButton(
                      elevation: 0,
                      onPressed: () {
                        /* Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SuccessfulScreen()),
                    );*/
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: const Color(0xff29214d),
                      child: const Text('Withdraw Funds',
                          style: const TextStyle(
                              color: Colors.white60,
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddMoney()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: MediaQuery.of(context).size.height / 22,
                      width: MediaQuery.of(context).size.width / 3,
                      child: MaterialButton(
                        elevation: 0,
                        onPressed: () {
                          showDialog<void>(
                            context: context,
                            barrierDismissible: true,
                            // false = user must tap button, true = tap outside dialog
                            builder: (BuildContext dialogContext) {
                              String amount = "";
                              return AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                backgroundColor: const Color(0xff29214d),
                                title: const Text('Add Money to Wallet',
                                    style: const TextStyle(
                                        color: Colors.white60,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                content: TextField(
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  decoration: InputDecoration(
                                    labelText: 'Amount',
                                    hintText: 'Enter Amount',
                                    labelStyle: const TextStyle(
                                        color: Colors.white60,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                    hintStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color: Colors.white60, width: 1),
                                    ),
                                  ),
                                  onChanged: (value) {
                                    amount = value!;
                                  },
                                  keyboardType: TextInputType.number,
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text('Cancel'),
                                    onPressed: () {
                                      Navigator.of(dialogContext)
                                          .pop(); // Dismiss alert dialog
                                    },
                                  ),
                                  TextButton(
                                    child: const Text('Add'),
                                    onPressed: () async {
                                      ApiResponse res =
                                          await apiClient.savePayment(
                                              _user.id,
                                              amount,
                                              Random()
                                                  .nextInt(999999999)
                                                  .toString(),
                                              "11",
                                              "Success");
                                      if (res.status == 200) {
                                        Navigator.of(dialogContext).pop();
                                      }
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(res.messages),
                                          backgroundColor: Colors.green,
                                          duration: Duration(seconds: 2),
                                        ),
                                      );
                                    },
                                  )
                                ],
                              );
                            },
                          );
                          /*Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SuccessfulScreen()),
                      );*/
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.green,
                        child: const Text('Add Funds',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  )
                ],
              ),
              const Padding(
                padding: const EdgeInsets.only(left: 16, top: 10),
                child: const ReuseableText(
                    text: "PAST TRANSACTION",
                    size: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white60,
                    wordSpacing: 0),
              ),
              const Divider(
                indent: 5,
                endIndent: 5,
                thickness: 1,
                color: Colors.white60,
              ),
              /*Container(
                  height: 100,
                  child: ReuseableMoneyCard(
                      result: 'COMPLETED',
                      date: DateTime.now(),
                      title: 'Withdraw',
                      image: 'currency',
                      price: 123445))*/
            ],
          ),
          FutureBuilder<WalletResponse>(
            future: apiClient.getWallet(_user.id),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.hasData) {
                WalletResponse res = snapshot.data;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    for (WalletData item in res.data)
                      ReuseableMoneyCard(data: item)
                  ],
                );
              } else
                return const Center(child: CircularProgressIndicator());
            },
          ),
        ],
      ),
    );
  }
}
