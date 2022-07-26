// import 'dart:async';
//
// import 'package:annexa_app/Widget/graph_widget_list.dart';
// import 'package:annexa_app/models/polygon_data.dart';
// import 'package:annexa_app/network/api_client.dart';
// import 'package:annexa_app/network/response/rate_response.dart';
// import 'package:annexa_app/util/util.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
//
// import '../models/rate_data.dart';
//
// class GraphWidget extends StatefulWidget {
//   final String? ticker;
//   GraphWidget({Key? key, required this.ticker}) : super(key: key);
//
//   @override
//   State<GraphWidget> createState() => _GraphWidgetState();
// }
//
// class _GraphWidgetState extends State<GraphWidget> {
//   List<GraphPoint> graphsPoints = [];
//   final _apiClient = ApiClient(Dio());
//   Dio dio = Dio();
//   final apiKey = "g6PBo3VFCFmWzdiuQ1E8RdQcNytuxHiu";
//
//   DateFormat dateTimeFormat = DateFormat("yyyy-MM-dd");
//   Future<dynamic> getPolygonData(String ticker, timeSpan span) async {
//     final now = DateTime.now();
//     Duration duration;
//     switch (span) {
//       case timeSpan.hour:
//         duration = Duration(hours: 1);
//         break;
//       case timeSpan.day:
//         duration = Duration(days: 1);
//         break;
//       case timeSpan.week:
//         duration = Duration(days: 7);
//         break;
//       case timeSpan.month:
//         duration = Duration(days: 30);
//         break;
//       case timeSpan.year:
//         duration = Duration(days: 365);
//         break;
//     }
//
//     String from = dateTimeFormat.format(now.subtract(Duration(days: 30)));
//     String to = dateTimeFormat.format(now);
//     String url =
//         "https://api.polygon.io/v2/aggs/ticker/$ticker/range/1/${timeSpanMap[span]}/$from/$to?adjusted=true&sort=asc&limit=120&apiKey=$apiKey";
//
//     Response res = await dio.get(url);
//     print(url);
//     return res.data;
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     Timer.periodic(Duration(milliseconds: 5000), (timer) {
//       fetchEnd();
//     });
//   }
//
//   void fetchEnd() async {
//     // final response1 =
//     //     await getPolygonData("C:${widget.ticker ?? "USDEUR"}", timeSpan.hour);
//     // List<CurrencyData> currencyData = response1['results'].map((e) {
//     //   return CurrencyData.fromJson(e);
//     // }).toList();
//     // print(currencyData);
//     RateResponse response = await _apiClient.getRateFluctute();
//     print(response);
//     // if (response.status == 200) {
//     //   GraphPoint? graphPoint;
//     //   response.data.forEach((element) {
//     //     graphPoint = GraphPoint.fromResponse(element);
//     //   });
//     //
//     //   setState(() {
//     //     graphsPoints.add(graphPoint!);
//     //   });
//     // }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SfCartesianChart(primaryXAxis: DateTimeAxis(), series: <ChartSeries>[
//       LineSeries<GraphPoint, DateTime>(
//         dataSource: graphsPoints,
//         xValueMapper: (GraphPoint sales, _) => sales.time,
//         yValueMapper: (GraphPoint sales, _) => sales.value,
//       ),
//     ]);
//   }
// }
