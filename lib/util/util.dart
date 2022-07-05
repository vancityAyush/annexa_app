import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:intl/intl.dart';

enum IMAGE_TYPE { png, jpg }

Image getImage(BuildContext context,
    {required String image,
    IMAGE_TYPE type = IMAGE_TYPE.png,
    double width = 50,
    double height = 50}) {
  return Image.asset(
    "assets/images/${type.name}/$image.${type.name}",
    width: width,
    height: height,
    fit: BoxFit.contain,
  );
}

final emailKey = 'email';
final passwordKey = 'password';
final apiKey = "kVTw4WmEJON8jyV0vczS86FEpTu1Dq3d";
final DateFormat dateFormat = DateFormat("yyyy-MM-dd");

enum timeSpan { minute, hour, day, week, month, year }

Map<timeSpan, String> timeSpanMap = {
  timeSpan.minute: 'minute',
  timeSpan.hour: 'hour',
  timeSpan.day: 'day',
  timeSpan.week: 'week',
  timeSpan.month: 'month',
  timeSpan.year: 'year',
};
