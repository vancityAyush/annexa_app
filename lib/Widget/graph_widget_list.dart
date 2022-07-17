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
    String from = dateFormat.format(now.subtract(const Duration(days: 2)));
    String to = dateFormat.format(now);
    String url =
        "https://api.polygon.io/v2/aggs/ticker/$ticker/range/$range/minute/$from/$to?adjusted=true&sort=asc&limit=999999999&apiKey=$apiKey";
    Response res = await dio.get(url);
    return res.data;
  }

  Future<dynamic> getPervious(String ticker) async {
    String url =
        "https://api.polygon.io/v2/aggs/ticker/$ticker/prev?adjusted=true&apiKey=$apiKey";
    Response res = await dio.get(url);
    return res.data;
  }

  Future<GraphPoint> getLastPoint() async {
    // var res = await getPervious("C:$ticker");
    var res = await getPolygonData("C:${widget.ticker}", 1);
    var data = PolygonResponse.fromJson(res);
    List<GraphPoint> newLst = [];
    data.results?.map((e) => newLst.add(GraphPoint.fromResponse(e))).toList();
    return newLst.last;
  }

  Future<void> fetchData() async {
    var res = await getPolygonData("C:${widget.ticker}", 1);
    PolygonResponse pr = PolygonResponse.fromJson(res);
    pr.results?.map((e) => lst.add(GraphPoint.fromResponse(e))).toList();
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
    timer =
        Timer.periodic(const Duration(milliseconds: 1000), _updateDataSource);
    return FutureBuilder<void>(
        future: fetchData(),
        builder: (context, snapshots) {
          return SfCartesianChart(
            trackballBehavior: TrackballBehavior(
              enable: true,
              activationMode: ActivationMode.singleTap,
              tooltipDisplayMode: TrackballDisplayMode.groupAllPoints,
            ),
            primaryXAxis: DateTimeAxis(),
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
                dataSource: lst,
                xValueMapper: (GraphPoint sales, _) => sales.time,
                yValueMapper: (GraphPoint sales, _) => sales.value,
              ),
            ],
          );
        });
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

  GraphPoint.fromResponse(PolygonData response) {
    this.time = response.time;
    this.value = response.c;
  }

  late final DateTime? time;
  late double? value;
}
