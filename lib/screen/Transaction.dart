import 'package:annexa_app/Widget/back_button.dart';
import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:flutter/material.dart';

class Transaction extends StatefulWidget {
  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  Map<String, double> data = {
    'Flutter': 37136,
    'React Native': 69687,
    'Native Android': 40609,
    'ioS': 42544
  };

  // final _user = getIt<OAuthUser>();
  List<Color> _colors = [
    Colors.teal,
    Colors.blueAccent,
    Colors.amberAccent,
    Colors.redAccent
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff150c3f),
      appBar: AppBar(
        backgroundColor: const Color(0xff29214d),
        leading: const navBack(),
        title: const Text('Transaction'),
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width / 1,
            child: Card(
              color: const Color(0xff29214d),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 30, left: 15),
                            child: const ReuseableText(
                                text: 'Current Balance',
                                size: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                wordSpacing: 0),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.business_center_outlined,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                const ReuseableText(
                                    text: '₹ ${""}',
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    wordSpacing: 0),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: const ReuseableText(
                                text: '+2485.40(24)',
                                size: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white70,
                                wordSpacing: 0),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      )
                      /* Container(child: SfCircularChart())*/
                    ],
                  ),
                  // PieChart(
                  //   dataMap: data,
                  //   colorList:
                  //       _colors, // if not declared, random colors will be chosen
                  //   animationDuration: const Duration(milliseconds: 1500),
                  //   chartLegendSpacing: 32.0,
                  //   chartRadius: MediaQuery.of(context).size.width /
                  //       4.5, //determines the size of the chart
                  //
                  //   /*showChartValuesInPercentage: true,
                  //   showChartValues: true,
                  //
                  //   showChartValuesOutside: false,
                  //   chartValueBackgroundColor: Colors.grey[200],
                  //   showLegends: true,
                  //   legendPosition: LegendPosition
                  //       .right, //can be changed to top, left, bottom
                  //   decimalPlaces: 1,
                  //   showChartValueLabel: true,
                  //   initialAngle: 0,
                  //   chartValueStyle: defaultChartValueStyle.copyWith(
                  //     color: Colors.blueGrey[900]?.withOpacity(0.9),
                  //   ),*/
                  //   /*  chartType:
                  //       ChartType.disc, */ //can be changed to ChartType.ring
                  // )
                ],
              ),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.all(12.0),
            child: ReuseableText(
                text: "Your Assest",
                size: 16,
                fontWeight: FontWeight.normal,
                color: Colors.white60,
                wordSpacing: 0),
          ),
          const Divider(
            color: Colors.white60,
            thickness: 0.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: ReuseableText(
                    text: " Assests",
                    size: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    wordSpacing: 0),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: ReuseableText(
                    text: "Price",
                    size: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    wordSpacing: 0),
              ),
              Padding(
                padding: EdgeInsets.all(13.0),
                child: ReuseableText(
                    text: "Holding",
                    size: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    wordSpacing: 0),
              ),
            ],
          ),
          const Divider(
            color: Colors.white60,
            thickness: 0.5,
          ),
          // FutureBuiOrderResponseponse>(
          //   future: apiClient.getOrderHistory(_user.id),
          //   builder: (BuildContext context,
          //       AsyncSnapOrderResponseponse> snapshot) {
          //     if (snapshot.hasData) {
          //       List<OrderData> orderData = snapshot.data!.data;
          //       return ListView.separated(
          //           shrinkWrap: true,
          //           physics: NeverScrollableScrollPhysics(),
          //           itemBuilder: (context, index) =>
          //               TransactionWidget(data: orderData[index]),
          //           separatorBuilder: (_, __) => Divider(
          //                 color: Colors.white60,
          //                 thickness: 0.5,
          //               ),
          //           itemCount: orderData.length);
          //     } else
          //       return Center(
          //         child: CircularProgressIndicator(),
          //       );
          //   },
          // )
        ],
      ),
    );
  }
}

class PriceData {
  final double price;
  final String currency;

  PriceData(this.price, this.currency);
}
