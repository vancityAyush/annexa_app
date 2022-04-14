import 'package:flutter/material.dart';
class ReusableIcon extends StatelessWidget {
  final Widget icon;
  final double size;
  final Color color;

  const ReusableIcon({

 required this.icon, required this.size, required this.color}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:icon,color: color,
    );
  }
}
