import 'package:annexa_app/Widget/graph_widget_list.dart';
import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:annexa_app/main.dart';
import 'package:annexa_app/models/OAuthUser.dart';
import 'package:annexa_app/models/currency_data.dart';
import 'package:annexa_app/network/api_client.dart';
import 'package:annexa_app/network/response/currency_response.dart';
import 'package:annexa_app/network/response/polygon_response.dart';
import 'package:annexa_app/network/response/rate_response.dart';
import 'package:annexa_app/network/response/response.dart';
import 'package:annexa_app/util/util.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class TradingHomepage extends StatefulWidget {
  const TradingHomepage({Key? key}) : super(key: key);

  @override
  _TradingHomepageState createState() => _TradingHomepageState();
}

class _TradingHomepageState extends State<TradingHomepage> {
  int currentSelect = 0;
  List<CurrencyData> items = [];
  List<GraphPoint> list = [];
  double currentPrice = 0.0;
  List<String> timeFrame = ["1h", "1d", "1w", "1m", "1y"];
  String currentTimeFrame = "1h";

  final _user = getIt<User>();
  final _apiClient = getIt<ApiClient>();
  final dio = getIt<Dio>();
  bool status1 = false;

  Future<void> getCurrentPrice() async {
    RateResponse res = await _apiClient.getRateFluctute();
    String s = res.gerRate(items[currentSelect].ticker).o;
    currentPrice = double.parse(s);
  }

  Future<dynamic> getPolygonData(String ticker, timeSpan span) async {
    final now = DateTime.now();
    Duration duration;
    switch (span) {
      case timeSpan.minute:
        duration = const Duration(days: 1);
        break;
      case timeSpan.hour:
        duration = const Duration(days: 1);
        break;
      case timeSpan.day:
        duration = const Duration(days: 7);
        break;
      case timeSpan.week:
        duration = const Duration(days: 30);
        break;
      case timeSpan.month:
        duration = const Duration(days: 365);
        break;
      case timeSpan.year:
        duration = const Duration(days: 365);
        break;
    }

    String from = dateFormat.format(now.subtract(duration));
    String to = dateFormat.format(now);
    String url =
        "https://api.polygon.io/v2/aggs/ticker/$ticker/range/1/${timeSpanMap[span]}/$from/$to?adjusted=true&sort=asc&limit=300&apiKey=$apiKey";

    Response res = await dio.get(url);
    return res.data;
  }

  void startStream() {}

  Future<void> fetchData() async {
    CurrencyResponse cr = await _apiClient.getForexCurrency();
    items = cr.data;
    await getCurrentPrice();
    timeSpan span = timeSpan.hour;
    switch (currentTimeFrame) {
      case "1h":
        span = timeSpan.minute;
        break;
      case "1d":
        span = timeSpan.hour;
        break;
      case "1w":
        span = timeSpan.day;
        break;
      case "1m":
        span = timeSpan.week;
        break;
      case "1y":
        span = timeSpan.month;
        break;
    }
    var res = await getPolygonData("C:${items[currentSelect].ticker}", span);
    PolygonResponse pr = PolygonResponse.fromJson(res);
    list = [];
    pr.results?.map((e) => list.add(GraphPoint.fromResponse(e))).toList();
    list.add(GraphPoint(
        list.last.time.add(const Duration(minutes: 1)), currentPrice));
  }

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
      body: FutureBuilder(
          future: fetchData(),
          builder: (context, snapshots) {
            if (snapshots.connectionState == ConnectionState.done) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ReuseableText(
                            text:
                                "$currentPrice ${items[currentSelect].base_currency}",
                            size: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            wordSpacing: 0),
                      ),
                    ),

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
                                child: DropdownButton<int>(
                                  // Initial Value
                                  value: currentSelect,
                                  dropdownColor: const Color(0xff29214d),

                                  // Down Arrow Icon
                                  icon: const Icon(Icons.keyboard_arrow_down),

                                  // Array list of items
                                  items: [
                                    for (int i = 0; i < items.length; i++)
                                      DropdownMenuItem(
                                        value: i,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5,
                                                      vertical: 2),
                                              child: CircleAvatar(
                                                backgroundColor:
                                                    Colors.transparent,
                                                radius: 25,
                                                child: Stack(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Image.network(
                                                        items[i].baseImg,
                                                        height: 30,
                                                        width: 30,
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Image.network(
                                                        items[i].mainImg,
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
                                              items[i].text,
                                              style: const TextStyle(
                                                  color: Colors.white60,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      )
                                  ],
                                  // After selecting the desired option,it will
                                  // change button value to selected value
                                  onChanged: (int? newValue) {
                                    setState(() {
                                      currentSelect = newValue!;
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
                                  children: const [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 15, left: 10),
                                      child: ReuseableText(
                                          text: '60 min',
                                          size: 12,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white60,
                                          wordSpacing: 0),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 15, left: 10),
                                      child: ReuseableText(
                                          text: '30 min',
                                          size: 12,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white60,
                                          wordSpacing: 0),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 15, left: 10),
                                      child: ReuseableText(
                                          text: '3 min',
                                          size: 12,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white60,
                                          wordSpacing: 0),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 15, left: 10),
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
                      child: GraphWidgetList(
                        lst: list,
                      ),
                    ),
                    Row(
                      children: [
                        for (String item in timeFrame)
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: ActionChip(
                              labelPadding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              backgroundColor: item == currentTimeFrame
                                  ? Colors.white10
                                  : Color(0xff29214d),
                              label: Text(
                                item,
                                style: TextStyle(
                                    color: item == currentTimeFrame
                                        ? Colors.black
                                        : Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                setState(() {
                                  currentTimeFrame = item;
                                });
                              },
                            ),
                          )
                      ],
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
                                    saveOrderDialog("2");
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
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: ReuseableText(
                                    text: "Profit",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    wordSpacing: 0),
                              ),
                              ReuseableText(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                    saveOrderDialog("1");
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
              );
            }
            return const Center(child: CircularProgressIndicator());
          }),
    );
  }

  Future<void> saveOrderDialog(String type) async {
    String amount = "";
    String bid_time = "3 Minutes";
    List<String> lst = ["3", "5", "10", "15"];
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color(0xff29214d),
          title: Text(type == "1" ? "Call" : "Put",
              style: TextStyle(
                  color: Colors.white60,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 18,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Image.network(
                              items[currentSelect].baseImg,
                              height: 25,
                              width: 25,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.network(
                              items[currentSelect].mainImg,
                              height: 25,
                              width: 25,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    items[currentSelect].text,
                    style: const TextStyle(
                        color: Colors.white60,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  amount = value;
                },
                style: const TextStyle(
                    color: Colors.white60,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                decoration: const InputDecoration(
                  labelText: 'Amount',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white60,
                    ),
                  ),
                  labelStyle: TextStyle(
                      color: Colors.white60,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              StatefulBuilder(
                  builder: (BuildContext context, StateSetter setS) {
                return DropdownButton(
                    value: bid_time,
                    dropdownColor: Color(0xff29214d),
                    items: lst.map((String dropDownStringItem) {
                      return DropdownMenuItem<String>(
                        value: "$dropDownStringItem Minutes",
                        child: Text("$dropDownStringItem Minutes",
                            style: const TextStyle(
                                color: Colors.white60,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setS(() {
                        bid_time = newValue!;
                      });
                    });
              }),
            ],
          ),
          actions: <Widget>[
            TextButton(
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
            TextButton(
              child: const Text('Confirm'),
              onPressed: () async {
                ApiResponse res = await _apiClient.saveOrder(
                    _user.id,
                    amount,
                    items[currentSelect].id,
                    type,
                    currentPrice.toString(),
                    bid_time);
                if (res.status == 200) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        res.messages,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      backgroundColor: Colors.green,
                    ),
                  );
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      },
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
