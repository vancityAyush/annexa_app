import 'dart:async';

import 'package:annexa_app/main.dart';
import 'package:annexa_app/models/polygon_data.dart';
import 'package:annexa_app/network/api_client.dart';
import 'package:annexa_app/network/response/polygon_response.dart';
import 'package:annexa_app/util/util.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraphWidgetList extends StatefulWidget {
  final String ticker;
  final int timeframe;

  GraphWidgetList({Key? key, required this.ticker, required this.timeframe})
      : super(key: key);

  @override
  State<GraphWidgetList> createState() => _GraphWidgetListState();
}

class _GraphWidgetListState extends State<GraphWidgetList> {
  List<GraphPoint> lst = [];

  TextEditingController _editingController = TextEditingController();

  Timer? timer;

  ChartSeriesController? controller;

  final dio = Dio(
    BaseOptions(
      connectTimeout: 5000,
      receiveTimeout: 5000,
    ),
  );

  final ApiClient apiClient = getIt<ApiClient>();

  Future<dynamic> getPolygonData(String ticker, int range) async {
    final now = DateTime.now();
    String from = dateFormat.format(now.subtract(const Duration(days: 1)));
    String to = dateFormat.format(now);
    String url =
        "https://api.polygon.io/v2/aggs/ticker/$ticker/range/$range/minute/$from/$to?adjusted=true&sort=asc&limit=9999&apiKey=$apiKey";
    Response res = await dio.get(url);
    return res.data;
  }

  Future<dynamic> getPrevious(String from, String to) async {
    String url =
        "https://api.polygon.io/v1/last_quote/currencies/$from/$to?apiKey=$apiKey";
    Response res = await dio.get(url);
    return res.data;
  }

  Future<GraphPoint> getLastPoint() async {
    var res = await getPrevious("EUR", "USD");
    // var res = await getPolygonData(widget.ticker, 1);
    double price = res["last"]['ask'];
    int time = res["last"]['timestamp'];
    // List<GraphPoint> newLst = [];
    // data.results?.map((e) => newLst.add(GraphPoint.fromResponse(e))).toList();
    GraphPoint g = GraphPoint.fromData(price, time);
    return g;
  }

  Future<void> fetchData({int limit = 50}) async {
    var res = await getPolygonData(widget.ticker, widget.timeframe);
    PolygonResponse pr = PolygonResponse.fromJson(res);
    pr.results?.map((e) => lst.add(GraphPoint.fromResponse(e))).toList();
    // lst = lst.sublist(lst.length > limit ? lst.length - limit : 0, lst.length);
    return;
  }

  int add(GraphPoint point) {
    for (var i = 0; i < lst.length; i++) {
      if (lst[i].time == point.time) {
        lst[i] = point;
        return i;
      }
    }
    lst.add(point);
    lst.removeAt(0);
    return -1;
  }

  void _updateDataSource(Timer timer) {
    getLastPoint().then(
      (value) {
        _editingController.text = value.value!.toStringAsFixed(5);
        int res = add(value);
        if (res != -1) {
          controller?.updateDataSource(
            updatedDataIndex: res,
          );
        } else {
          // Here calling updateDataSource method with addedDataIndexes to add data in last index and removedDataIndexes to remove data from the last.
          controller?.updateDataSource(
              addedDataIndexes: <int>[lst.length - 1],
              removedDataIndexes: <int>[0]);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: fetchData(),
      builder: (context, snapshots) {
        if (snapshots.connectionState != ConnectionState.done) {
          timer = Timer.periodic(
              const Duration(milliseconds: 500), _updateDataSource);
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SfCartesianChart(
              trackballBehavior: TrackballBehavior(
                enable: true,
                activationMode: ActivationMode.singleTap,
                tooltipDisplayMode: TrackballDisplayMode.groupAllPoints,
              ),
              primaryXAxis: DateTimeAxis(),
              primaryYAxis: NumericAxis(
                decimalPlaces: 5,
              ),
              zoomPanBehavior: ZoomPanBehavior(
                enablePinching: true,
                enablePanning: true,
              ),
              series: <ChartSeries>[
                FastLineSeries<GraphPoint, DateTime>(
                  onRendererCreated: (ChartSeriesController c) {
                    // Assigning the controller to the _chartSeriesController.
                    controller = c;
                  },
                  dataLabelMapper: (GraphPoint point, _) =>
                      point.value!.toStringAsFixed(5),
                  dataSource: lst,
                  xValueMapper: (GraphPoint sales, _) => sales.time,
                  yValueMapper: (GraphPoint sales, _) => sales.value,
                ),
              ],
            ),
            TextField(
              textAlign: TextAlign.end,
              controller: _editingController,
              enabled: false,
              expands: false,
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
                suffixText: "USD",
                suffixStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    // Cancelling the timer.
    super.dispose();
    timer?.cancel();
  }
}

class GraphPoint {
  GraphPoint(this.time, this.value);

  GraphPoint.fromData(this.value, int time) {
    this.time = DateTime.fromMillisecondsSinceEpoch(time);
  }

  GraphPoint.fromResponse(PolygonData response) {
    this.time = response.time;
    this.value = response.c;
  }

  late final DateTime? time;
  late double? value;
}
