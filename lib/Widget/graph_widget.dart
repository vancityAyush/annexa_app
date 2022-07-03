import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraphWidget extends StatefulWidget {
  const GraphWidget({Key? key}) : super(key: key);

  @override
  State<GraphWidget> createState() => _GraphWidgetState();
}

class _GraphWidgetState extends State<GraphWidget> {
  @override
  Widget build(BuildContext context) {
    final List<SalesData> chartData = [
      SalesData(DateTime(2010), 35),
      SalesData(DateTime(2011), 28),
      SalesData(DateTime(2012), 34),
      SalesData(DateTime(2013), 32),
      SalesData(DateTime(2014), 40)
    ];

    return SfCartesianChart(primaryXAxis: DateTimeAxis(), series: <ChartSeries>[
      // Renders line chart
      LineSeries<SalesData, DateTime>(
          dataSource: chartData,
          xValueMapper: (SalesData sales, _) => sales.year,
          yValueMapper: (SalesData sales, _) => sales.sales)
    ]);
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final DateTime year;
  final double sales;
}
