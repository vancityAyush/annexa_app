import 'dart:async';

import 'package:annexa_app/network/api_client.dart';
import 'package:annexa_app/network/entity/crypto_entity.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

/**
 * Created by : Ayush Kumar
 * Created on : 17-07-2022
 */
class CryptoProvider extends ChangeNotifier {
  final ApiClient _apiClient = ApiClient(Dio());
  List<CryptoEntity> data = <CryptoEntity>[];
  List<CryptoEntity> sortedList = <CryptoEntity>[];
  List<CryptoEntity> watchList = <CryptoEntity>[];

  CryptoProvider({this.data = const []}) {
    if (data.isEmpty) {
      updateData().then((value) => initiate());
    } else {
      initiate();
    }
  }
  void initiate() {
    sortedList = data.toList();
    sortedList.sort((a, b) => b.percent.compareTo(a.percent));
    data.where((element) => element.watchList).forEach((element) {
      watchList.add(element);
    });
    Timer.periodic(
      const Duration(seconds: 5),
      (timer) {
        updateData();
      },
    );
  }

  Future<void> updateData() async {
    List<CryptoEntity> temp = await _apiClient.getCryptoData();
    data.addAll(temp);
    temp.sort((a, b) => b.percent.compareTo(a.percent));
    sortedList.addAll(temp);
    notifyListeners();
  }
}
