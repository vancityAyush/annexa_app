import 'package:annexa_app/Widget/graph_widget_list.dart';
import 'package:annexa_app/main.dart';
import 'package:annexa_app/models/currency_data.dart';
import 'package:annexa_app/services/api_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/order_data.dart';

class TradingHomepage extends StatefulWidget {
  const TradingHomepage({Key? key}) : super(key: key);

  @override
  _TradingHomepageState createState() => _TradingHomepageState();
}

class _TradingHomepageState extends State<TradingHomepage> {
  int currentSelect = 0;
  List<CurrencyData> items = [];
  double currentPrice = 0.0;
  List<int> timeFrame = [5, 10, 15, 30, 60];
  int currentTimeFrame = 5;
  int currentTimeIndex = 0;
  int bid_time = 3;
  TextEditingController amount = TextEditingController();
  OrderData? currentOrder;
  final apiService = getIt<ApiService>();
  //
  // Future<void> getCurrentPrice() async {
  //   // RateResponse res = await _apiClient.getRateFluctute();
  //   String s = res.gerRate(items[currentSelect].ticker).o;
  //   currentPrice = double.parse(s);
  // }

  // Future<void> fetchData() async {
  //   CurrencyResponse cr = await _apiClient.getForexCurrency();
  //   items = cr.data;
  //   await getCurrentPrice();
  //   var res = await getPolygonData(
  //       "C:${items[currentSelect].ticker}", currentTimeFrame);
  //   PolygonResponse pr = PolygonResponse.fromJson(res);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff150c3f),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color(0xff29214d),
        title: Image.asset(
          "assets/images/png/Annexlogo.png",
          height: 60,
          width: 120,
          fit: BoxFit.cover,
        ),
        actions: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.wallet,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ],
          )
        ],
      ),
      body: FutureBuilder(
          // future: fetchData(),
          builder: (context, snapshots) {
        if (snapshots.connectionState == ConnectionState.done) {
          return SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                // Center(
                //   child: Padding(
                //     padding: const EdgeInsets.all(20.0),
                //     child: ReuseableText(
                //         text:
                //             "$currentPrice ${items[currentSelect].base_currency}",
                //         size: 16,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.white,
                //         wordSpacing: 0),
                //   ),
                // ),

                ///mainrow
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 25,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Image.network(
                              items[currentSelect].baseImg,
                              height: 30,
                              width: 30,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.network(
                              items[currentSelect].mainImg,
                              height: 30,
                              width: 30,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                    title: Text(
                      items[currentSelect].text,
                      style: const TextStyle(
                          color: Colors.white60,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      items[currentSelect].percentage + "%",
                      style: const TextStyle(
                          color: Colors.green,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GraphWidgetList(
                    ticker: "C:EURUSD",
                    timeframe: currentTimeFrame,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 15,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      for (int item in timeFrame)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: ActionChip(
                            labelPadding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            backgroundColor: item == currentTimeFrame
                                ? Colors.white10
                                : Color(0xff29214d),
                            label: Text(
                              "${item} m",
                              style: TextStyle(
                                  color: item == currentTimeFrame
                                      ? Colors.black
                                      : Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              setState(
                                () {
                                  currentTimeFrame = item;
                                },
                              );
                            },
                          ),
                        )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              top: 20,
                            ),
                            height: MediaQuery.of(context).size.height / 18,
                            width: MediaQuery.of(context).size.width / 3,
                            child: TextField(
                              controller: amount,
                              keyboardType: TextInputType.number,
                              style: const TextStyle(
                                  color: Colors.white60,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                labelStyle: const TextStyle(
                                    color: Colors.white60,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                hintText: 'Enter Amount',
                                hintStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              top: 20,
                            ),
                            height: MediaQuery.of(context).size.height / 20,
                            width: MediaQuery.of(context).size.width / 3,
                            child: MaterialButton(
                              elevation: 0,
                              onPressed: () {
                                // saveOrder("2");
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: Colors.amber[800],
                              child: const Text("PUT",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              top: 20,
                            ),
                            height: MediaQuery.of(context).size.height / 18,
                            width: MediaQuery.of(context).size.width / 3,
                            child: StatefulBuilder(builder: (context, setS) {
                              return DropdownButton<int>(
                                value: bid_time,
                                dropdownColor: Color(0xff29214d),
                                items: [3, 5, 10, 15]
                                    .map((int dropDownStringItem) {
                                  return DropdownMenuItem<int>(
                                    value: dropDownStringItem,
                                    child: Text("$dropDownStringItem Minutes",
                                        style: const TextStyle(
                                            color: Colors.white60,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                  );
                                }).toList(),
                                onChanged: (int? newValue) {
                                  setS(() {
                                    bid_time = newValue!;
                                  });
                                },
                              );
                            }),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              top: 20,
                            ),
                            height: MediaQuery.of(context).size.height / 20,
                            width: MediaQuery.of(context).size.width / 3,
                            child: MaterialButton(
                              elevation: 0,
                              onPressed: () {
                                // saveOrder("1");
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: Colors.green,
                              child: const Text("CALL",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      }),
    );
  }

  // Future<void> saveOrder(String type) async {
  //   SaveOrderResponse res = await _apiClient.saveOrder(
  //       _user.id,
  //       amount.text,
  //       items[currentSelect].id,
  //       type,
  //       currentPrice.toString(),
  //       "$bid_time Minutes");
  //   if (res.status == 200) {
  //     currentOrder = OrderData(
  //         orderid: res.orderid ?? "",
  //         datetime: res.datetime ?? "",
  //         bind_price: currentPrice.toString(),
  //         bid_time: bid_time,
  //         amount: amount.text);
  //
  //     showMaterialModalBottomSheet(
  //       context: context,
  //       builder: (context) => Container(
  //         height: MediaQuery.of(context).size.height / 7,
  //         color: const Color(0xff29214d),
  //         child: Column(
  //           children: [
  //             const Padding(
  //               padding: EdgeInsets.only(top: 20),
  //               child: Text(
  //                 "Order Placed",
  //                 style: TextStyle(
  //                     color: Colors.yellow,
  //                     fontSize: 20,
  //                     fontWeight: FontWeight.bold),
  //               ),
  //             ),
  //             Container(
  //               margin: const EdgeInsets.only(
  //                 top: 20,
  //               ),
  //               child: CountdownTimer(
  //                 endTime: DateTime.now().millisecondsSinceEpoch +
  //                     (bid_time * 60 * 1000),
  //                 textStyle: const TextStyle(
  //                     color: Colors.white60,
  //                     fontSize: 20,
  //                     fontWeight: FontWeight.bold),
  //                 onEnd: () async {
  //                   ApiResponse res =
  //                       await _apiClient.getOrderDetails(currentOrder!.orderid);
  //                   Navigator.pop(context);
  //                 },
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     );
  //   } else {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text(
  //           res.messages,
  //           style: const TextStyle(
  //               color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
  //         ),
  //         backgroundColor: Colors.red,
  //       ),
  //     );
  //   }
  // }
}

class VerticalDividerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 1,
      color: Colors.white60,
    );
  }
}

// class OrderData {
//   final String orderid;
//   final String datetime;
//   final String bind_price;
//   final int bid_time;
//   final String amount;
//
//   OrderData(
//       {required this.orderid,
//       required this.datetime,
//       required this.bind_price,
//       required this.bid_time,
//       required this.amount});
// }
