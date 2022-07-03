import 'package:annexa_app/Widget/graph_widget.dart';
import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:annexa_app/models/currency_data.dart';
import 'package:annexa_app/network/api_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class TradingHomepage extends StatefulWidget {
  @override
  _TradingHomepageState createState() => _TradingHomepageState();
}

class _TradingHomepageState extends State<TradingHomepage> {
  String? dropdownvalue;
  List<CurrencyData> items = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _apiClient.getForexCurrency().then((value) {
      setState(() {
        items = value.data;
        dropdownvalue = value.data[0].ticker;
      });
    });
  }

  // final _user = getIt<User>();
  // final _apiClient = getIt<ApiClient>();
  final _apiClient = ApiClient(Dio());
  bool status1 = false;
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
                  Icons.doorbell_sharp,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.account_balance_wallet,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: const ReuseableText(
                    text: "₹8,9810.00",
                    size: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    wordSpacing: 0),
              ),
            ),
            /*   Container(
              height: MediaQuery.of(context).size.height / 17,
              width: MediaQuery.of(context).size.width / 3,
              child: MaterialButton(
                elevation: 0,
                onPressed: () {
                  */ /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SuccessfulScreen()),
                    );*/ /*
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.green,
                child: const Text('Deposite',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
*/
            ///mainrow
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width / 2,
                      color: const Color(0xff29214d),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          // Initial Value
                          value: dropdownvalue,
                          dropdownColor: Color(0xff29214d),

                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),

                          // Array list of items
                          items: items.map((CurrencyData items) {
                            return DropdownMenuItem(
                              value: items.ticker,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 2),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      radius: 25,
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Image.network(
                                              items.baseImg,
                                              height: 30,
                                              width: 30,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Image.network(
                                              items.mainImg,
                                              height: 30,
                                              width: 30,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Text(
                                    items.base_currency +
                                        "/" +
                                        items.mian_currency,
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                        color: Colors.white60,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      )),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.width / 2,
                    color: const Color(0xff29214d),
                    child: Column(
                      children: [
                        const ReuseableText(
                            text: 'Graph Time Frame',
                            size: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.white60,
                            wordSpacing: 0),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 15, left: 10),
                              child: ReuseableText(
                                  text: '60 min',
                                  size: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white60,
                                  wordSpacing: 0),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 15, left: 10),
                              child: ReuseableText(
                                  text: '30 min',
                                  size: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white60,
                                  wordSpacing: 0),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 15, left: 10),
                              child: ReuseableText(
                                  text: '3 min',
                                  size: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white60,
                                  wordSpacing: 0),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 15, left: 10),
                              child: ReuseableText(
                                  text: '1min ',
                                  size: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white60,
                                  wordSpacing: 0),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GraphWidget(),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 5),
                            height: 35,
                            width: 28,
                            child: MaterialButton(
                              elevation: 0,
                              onPressed: () {
                                /*Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SuccessfulScreen()),
                      );*/
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(1),
                              ),
                              color: const Color(0xff29214d),
                              child: const Text('-',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: VerticalDividerWidget(),
                          ),
                          const ReuseableText(
                              text: "Invest- ₹20.00",
                              size: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              wordSpacing: 0),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: VerticalDividerWidget(),
                          ),
                          Container(
                            height: 35,
                            width: 28,
                            child: MaterialButton(
                              elevation: 0,
                              onPressed: () {
                                /*Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SuccessfulScreen()),
                      );*/
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(1),
                              ),
                              color: const Color(0xff29214d),
                              child: const Text('-',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
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
                            /*Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SuccessfulScreen()),
                      );*/
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          color: Colors.amber[800],
                          child: const Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                            ),
                            child: Text("PUT",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    right: 6,
                    top: 10,
                  ),
                  height: MediaQuery.of(context).size.height / 8,
                  width: MediaQuery.of(context).size.width / 4.5,
                  decoration: BoxDecoration(
                      color: const Color(0xff29214d),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: ReuseableText(
                            text: "Profit",
                            size: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            wordSpacing: 0),
                      ),
                      const ReuseableText(
                          text: "89%",
                          size: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          wordSpacing: 0),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 2),
                        height: MediaQuery.of(context).size.height / 17,
                        width: MediaQuery.of(context).size.width / 3,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: ReuseableText(
                                  text: "Multi Click",
                                  size: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  wordSpacing: 0),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: FlutterSwitch(
                                width: 30.0,
                                height: 20.0,
                                value: status1,
                                onToggle: (val) {
                                  setState(() {
                                    status1 = val;
                                  });
                                },
                              ),
                            ),
                          ],
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
                            /*Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SuccessfulScreen()),
                      );*/
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          color: Colors.green,
                          child: const Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                            ),
                            child: Text("CALL",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
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
