import 'package:flutter/material.dart';


class navBack extends StatelessWidget {
  const navBack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back, color: Colors.white,size:35,)
    );
  }
}
