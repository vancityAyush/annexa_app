/**
 * Created by : Ayush Kumar
 * Created on : 19-06-2022
 */
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

enum Timespan {
  minute,
  hour,
  day,
  week,
  month,
  quarter,
  year,
}

class PolygonApiService {
  Dio dio = Dio();
  DateFormat dateFormat = DateFormat('yyyy-MM-dd');
  String apiKey = "g6PBo3VFCFmWzdiuQ1E8RdQcNytuxHiu";
  Future<dynamic> getData(
      String ticker, Timespan timespan, DateTime from, DateTime to,
      {int multiplier = 1, int limit = 100}) async {
    String fromDate = dateFormat.format(from);
    String toDate = dateFormat.format(to);
    String timespanString = timespan.toString().split('.')[1];
    String url =
        "https://api.polygon.io/v2/aggs/ticker/$ticker/range/$multiplier/$timespanString/$fromDate/$toDate?adjusted=true&sort=asc&limit=$limit&apiKey=$apiKey";
    dynamic res = await dio.get(url);
    return res.data;
  }
}
