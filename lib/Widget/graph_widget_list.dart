import 'package:annexa_app/models/polygon_data.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraphWidgetList extends StatelessWidget {
  final List<GraphPoint> lst;
  const GraphWidgetList({Key? key, required this.lst}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      trackballBehavior: TrackballBehavior(
        enable: true,
        activationMode: ActivationMode.singleTap,
        tooltipDisplayMode: TrackballDisplayMode.groupAllPoints,
      ),
      primaryXAxis: DateTimeAxis(),
      series: <ChartSeries>[
        LineSeries<GraphPoint, DateTime>(
          dataSource: lst,
          xValueMapper: (GraphPoint sales, _) => sales.time,
          yValueMapper: (GraphPoint sales, _) => sales.value,
        ),
      ],
    );
  }
}

class GraphPoint {
  GraphPoint(this.time, this.value) {}

  GraphPoint.fromResponse(PolygonData response) {
    this.time = response.time;
    this.value = response.c;
  }
  late final DateTime time;
  late final double value;
}
