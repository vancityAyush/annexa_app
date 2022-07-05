// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderData _$OrderDataFromJson(Map<String, dynamic> json) => OrderData(
      customerid: json['customerid'] as String,
      type: json['type'] as String,
      bid_price: json['bid_price'] as String,
      amount: json['amount'] as String,
      traid_time: json['traid_time'] as String,
      profit_perc: json['profit_perc'] as String,
      profit: json['profit'] as String,
      end_traid: json['end_traid'] as String,
      orderid: json['orderid'] as String,
      close_price: json['close_price'] as String,
      status: json['status'] as String,
      ticker: json['ticker'] as String,
      base_imgurl: json['base_imgurl'] as String,
      main_imgurl: json['main_imgurl'] as String,
    );

Map<String, dynamic> _$OrderDataToJson(OrderData instance) => <String, dynamic>{
      'customerid': instance.customerid,
      'type': instance.type,
      'bid_price': instance.bid_price,
      'amount': instance.amount,
      'traid_time': instance.traid_time,
      'profit_perc': instance.profit_perc,
      'profit': instance.profit,
      'end_traid': instance.end_traid,
      'orderid': instance.orderid,
      'close_price': instance.close_price,
      'status': instance.status,
      'ticker': instance.ticker,
      'base_imgurl': instance.base_imgurl,
      'main_imgurl': instance.main_imgurl,
    };
