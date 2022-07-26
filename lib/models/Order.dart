/**
 * Created by : Ayush Kumar
 * Created on : 21-07-2022
 */
enum OrderType { call, put }

class Order {
  double amount;
  String stockId;
  OrderType orderType;
  double bidPrice;
  String orderId;
  DateTime orderTime;
  Duration bidTime;

  String? baseImg;
  String? mainImg;
  String? ticker;
  String? profit;
  String? profitPercentage;

  Order({
    required this.orderType,
    required this.amount,
    required this.stockId,
    required this.bidPrice,
    required this.bidTime,
    required this.orderId,
    required this.orderTime,
  });
}
