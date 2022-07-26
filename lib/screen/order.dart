import 'package:annexa_app/Screen/pricealert.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../Widget/reuseablecard.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff150d40),
      appBar: AppBar(
        backgroundColor: Color(0xff150d40),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: const Text(
          "Order",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => PriceAlert()));
          },
          child: Column(
            children: [
              ReuseAbleCard(
                  totalAmount: 10234.78,
                  price: '123.4',
                  subtitle: 'Fantom',
                  title: 'SELL',
                  image: 'bitcoin',
                  quantity: 84,
                  date: date),
              Divider(
                thickness: 0.5,
                color: Colors.white60,
              ),
              ReuseAbleCard(
                  totalAmount: 10234.78,
                  price: '123.4',
                  subtitle: 'Fantom',
                  title: 'SELL',
                  image: 'bitcoin',
                  quantity: 84,
                  date: date),
              Divider(
                thickness: 0.5,
                color: Colors.white60,
              ),
              ReuseAbleCard(
                  totalAmount: 10234.78,
                  price: '123.4',
                  subtitle: 'Fantom',
                  title: 'SELL',
                  image: 'bitcoin',
                  quantity: 84,
                  date: date),
              Divider(
                thickness: 0.5,
                color: Colors.white60,
              ),
              ReuseAbleCard(
                  totalAmount: 10234.78,
                  price: '123.4',
                  subtitle: 'Fantom',
                  title: 'SELL',
                  image: 'bitcoin',
                  quantity: 84,
                  date: date),
              const Divider(
                thickness: 0.5,
                color: Colors.white60,
              ),
              ReuseAbleCard(
                  totalAmount: 10234.78,
                  price: '123.4',
                  subtitle: 'Fantom',
                  title: 'SELL',
                  image: 'bitcoin',
                  quantity: 84,
                  date: date),
              Divider(
                thickness: 0.5,
                color: Colors.white60,
              ),
              ReuseAbleCard(
                  totalAmount: 10234.78,
                  price: '123.4',
                  subtitle: 'Fantom',
                  title: 'SELL',
                  image: 'bitcoin',
                  quantity: 84,
                  date: date),
              Divider(
                thickness: 0.5,
                color: Colors.white60,
              ),
              ReuseAbleCard(
                  totalAmount: 10234.78,
                  price: '123.4',
                  subtitle: 'Fantom',
                  title: 'SELL',
                  image: 'bitcoin',
                  quantity: 84,
                  date: date),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildDashedLine() => Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: DottedLine(
          dashColor: Colors.white,
          lineThickness: 1,
          dashLength: 4,
          dashGapLength: 5,
        ),
      ),
    );
