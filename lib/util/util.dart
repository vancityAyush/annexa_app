import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

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
