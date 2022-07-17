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

Widget getAssetImage(BuildContext context,
    {required String base, required String main, double radius = 50}) {
  return CircleAvatar(
    backgroundColor: Colors.transparent,
    radius: radius,
    child: Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Image.network(
            base,
            height: radius + 5,
            width: radius + 5,
            fit: BoxFit.contain,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Image.network(
            main,
            height: radius + 5,
            width: radius + 5,
            fit: BoxFit.contain,
          ),
        ),
      ],
    ),
  );
}

const IconData eye = IconData(
  0xf424,
);
const IconData eye_solid = IconData(0xf425);
final emailKey = 'email';
final passwordKey = 'password';
final apiKey = "kVTw4WmEJON8jyV0vczS86FEpTu1Dq3d";
final DateFormat dateFormat = DateFormat("yyyy-MM-dd");

DateFormat trDateFormat = DateFormat('EEE, MMM d, yyyy');

enum timeSpan { minute, hour, day, week, month, year }

Map<timeSpan, String> timeSpanMap = {
  timeSpan.minute: 'minute',
  timeSpan.hour: 'hour',
  timeSpan.day: 'day',
  timeSpan.week: 'week',
  timeSpan.month: 'month',
  timeSpan.year: 'year',
};
