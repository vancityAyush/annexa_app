import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget implements
 PreferredSizeWidget{
  final String title;
  final Color backgroundColor;
  const CustomAppBar({
    required this.title, required this.backgroundColor}) ;
  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_back,color: Colors.white,),
      ),
      backgroundColor: backgroundColor,
      title: Text(title),
    );
  }


}
