// /**
//  * Created by : Ayush Kumar
//  * Created on : 19-06-2022
//  */
// import 'package:flutter/material.dart';
// import 'package:json_annotation/json_annotation.dart';
//
// part 'crypto_entity.g.dart';
//
// @JsonSerializable()
// class CryptoEntity {
//   final String symbol;
//   final String baseAsset;
//   final String quoteAsset;
//   final String openPrice;
//   final String lowPrice;
//   final String highPrice;
//   final String lastPrice;
//   final String volume;
//   final String bidPrice;
//   final String askPrice;
//   final int at;
//
//   bool watchList = false;
//   CryptoEntity({
//     required this.symbol,
//     required this.baseAsset,
//     required this.quoteAsset,
//     required this.openPrice,
//     required this.lowPrice,
//     required this.highPrice,
//     required this.lastPrice,
//     required this.volume,
//     required this.bidPrice,
//     required this.askPrice,
//     required this.at,
//   }) {
//     isWatchList().then((value) => watchList = value);
//   }
//
//   double get price => double.parse(lastPrice);
//   double get percent {
//     return (double.parse(lastPrice) - double.parse(openPrice)) /
//         double.parse(openPrice) *
//         100;
//   }
//
//   String get percentString {
//     return percent > 0
//         ? '+${percent.toStringAsFixed(2)}%'
//         : percent.toStringAsFixed(2) + '%';
//   }
//
//   Color get color {
//     if (percent > 0) {
//       return Colors.green;
//     } else if (percent < 0) {
//       return Colors.red;
//     } else {
//       return Colors.grey;
//     }
//   }
//
//   factory CryptoEntity.fromJson(Map<String, dynamic> json) =>
//       _$CryptoEntityFromJson(json);
//   Map<String, dynamic> toJson() => _$CryptoEntityToJson(this);
// }
