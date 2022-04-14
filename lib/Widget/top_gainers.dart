import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopGainers extends StatelessWidget {
  final Widget icon;
  final String name;
  final String price;
  final String percentage;

  const TopGainers(
      {required this.icon,
      required this.price,
      required this.name,
      required this.percentage});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height:160.0,
      child: ListView.builder(
        itemCount: 5,

          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
              height: 10,
            width: 140,
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: icon,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        name,style: const TextStyle(
                        color: Colors.black,fontWeight: FontWeight.bold,
                        fontSize: 14
                      ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        price,style: const TextStyle(
                          color: Colors.black,fontWeight: FontWeight.bold,
                          fontSize: 14
                      ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        percentage,style: const TextStyle(
                          color: Colors.black,fontWeight: FontWeight.bold,
                          fontSize: 14
                      ),
                      ),
                    )
                  ],
                ),
            ),

            ),
          ));

  }
}
