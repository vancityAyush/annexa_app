import 'dart:math';

import 'package:annexa_app/Screen/mainpage.dart';
import 'package:annexa_app/main.dart';
import 'package:annexa_app/models/OAuthUser.dart';
import 'package:annexa_app/models/Order.dart';
import 'package:annexa_app/models/currency_data.dart';
import 'package:annexa_app/models/order_data.dart';
import 'package:annexa_app/models/rate_data.dart';
import 'package:annexa_app/models/wallet_data.dart';
import 'package:annexa_app/network/api_client.dart';
import 'package:annexa_app/util/util.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

/**
 * Created by : Ayush Kumar
 * Created on : 21-07-2022
 */
class ApiService {
  final ApiClient apiClient = ApiClient(Dio());

  ApiService() {
    getIt.registerSingleton<ApiService>(this);
  }

  Future<bool> loginCheck() async {
    OAuthUser? user = await OAuthUser.checkLogin();
    if (user != null) {
      final response = await apiClient.login(user.email, user.password);
      OAuthUser.fromLoginResponse(response);
      return true;
    } else {
      return false;
    }
  }

  Future<void> login(
      BuildContext context, String email, String password) async {
    final response = await apiClient.login(email, password);
    if (response.status == 200) {
      OAuthUser.fromLoginResponse(response);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Login Successful'),
        duration: Duration(seconds: 1),
        backgroundColor: Colors.green,
      ));
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const MainPage();
          },
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text(response.messages),
        ),
      );
    }
  }

  Future<void> register(BuildContext context, String name, String email,
      String password, String phone) async {
    final response = await apiClient.register(name, email, password, phone);
    if (response.status == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.green,
          content: Text('Successfully registered'),
        ),
      );
      login(context, email, password);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text(response.messages),
        ),
      );
    }
  }

  Future<List<CurrencyData>> getForexList() async {
    final res = await apiClient.getForexCurrency();
    if (res.status == 200) {
      return res.data;
    } else {
      throw Exception(res.messages);
    }
  }

  Future<List<RateData>> getForexRates() async {
    final res = await apiClient.getForexRate();
    if (res.status == 200) {
      return res.data;
    } else {
      throw Exception(res.messages);
    }
  }

  Future<Order> placeOrder(
      {required String customerId,
      required String amount,
      required String stockId,
      required String type,
      required String bidPrice,
      required String bidTime}) async {
    final res = await apiClient.saveOrder(
        customerId, amount, stockId, type, bidPrice, bidTime);
    if (res.status == 200) {
      return Order(
        orderType: type == "1" ? OrderType.call : OrderType.put,
        amount: double.parse(amount),
        stockId: stockId,
        bidPrice: double.parse(bidPrice),
        bidTime: Duration(minutes: int.parse(bidTime)),
        orderId: res.orderid!,
        orderTime: DateTime.parse(res.datetime!),
      );
    } else {
      throw Exception(res.messages);
    }
  }

  Future<bool> walletRecharge(BuildContext context, String amount) async {
    final res = await apiClient.savePayment(getIt<OAuthUser>().id, amount,
        Random().nextInt(999999999).toString(), "11", "Success");
    if (res.status == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.green,
          content: Text('Wallet Recharged'),
        ),
      );
      return true;
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text(res.messages),
        ),
      );
      return false;
    }
  }

  Future<List<WalletData>> getWalletData() async {
    OAuthUser user = getIt<OAuthUser>();
    final res = await apiClient.getWallet(user.id);
    if (res.status == 200) {
      user.setWalletBalance(res.Wallet_Balance);
      return res.data;
    } else {
      throw Exception(res.messages);
    }
  }

  Future<List<OrderData>> getOrderHistory() async {
    OAuthUser user = getIt<OAuthUser>();
    final res = await apiClient.getOrderHistory(user.id);
    if (res.status == 200) {
      return res.data;
    } else {
      throw Exception(res.messages);
    }
  }

  Future<OrderData> getOrderDetails(String orderId) async {
    final res = await apiClient.getOrderDetails(orderId);
    if (res.status == 200) {
      return res.data.first;
    } else {
      throw Exception(res.messages);
    }
  }

  Future<dynamic> getForexHistory(String ticker, {int range = 1}) async {
    final now = DateTime.now();
    String from = dateFormat.format(now.subtract(const Duration(days: 1)));
    String to = dateFormat.format(now);
    final res = await apiClient.getPolygonData(
        ticker, range.toString(), from, to, apiKey);
    if (res.status == 200) {
      return res.data;
    } else {
      throw Exception(res.messages);
    }
  }
}
