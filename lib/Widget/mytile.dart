import 'package:flutter/material.dart';

class mytile extends StatelessWidget {
  final String text1, text2;
  const mytile({
    required this.text1,
    required this.text2,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text1,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.normal)),
          Text(text2,
              style:
                  const TextStyle(fontWeight: FontWeight.normal, fontSize: 16)),
        ],
      ),
    );
  }
}
