import 'package:annexa_app/Screen/bitcoin.dart';
import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:annexa_app/network/entity/crypto_entity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../provider/crypto_provider.dart';

/**
 * Created by : Ayush Kumar
 * Created on : 18-07-2022
 */
class CryptoDataSource extends DataGridSource {
  CryptoProvider provider;
  CryptoDataSource({required this.provider});

  DataGridRow getRow(CryptoEntity e) {
    return DataGridRow(
      cells: [
        DataGridCell<CryptoEntity>(
          columnName: 'name',
          value: e,
        ),
        DataGridCell<CryptoEntity>(
          columnName: 'price',
          value: e,
        ),
        DataGridCell<CryptoEntity>(
          columnName: '24h',
          value: e,
        ),
      ],
    );
  }

  @override
  List<DataGridRow> get rows =>
      provider.sortedList.map<DataGridRow>((e) => getRow(e)).toList();

  @override
  Future<void> handleRefresh() async {
    provider.updateData();
    notifyListeners();
  }

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>(
      (dataGridCell) {
        CryptoEntity e = dataGridCell.value;
        switch (dataGridCell.columnName) {
          case 'name':
            return GestureDetector(
              onTap: () {
                Get.to(Bitcoin(symbol: dataGridCell.value.symbol));
              },
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/images/png/bitcoin.png',
                    color: Colors.white,
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    alignment: Alignment.centerLeft,
                    child: ReuseableText(
                      text: e.baseAsset.toUpperCase(),
                      size: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      wordSpacing: 0,
                    ),
                  ),
                ],
              ),
            );
          case 'price':
            return Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16),
              child: ReuseableText(
                  text: "₹${e.price.toStringAsFixed(2)}",
                  size: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  wordSpacing: 0),
            );
          case '24h':
            return Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: e.percent < 0 ? Colors.red : Colors.green,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ReuseableText(
                  text: e.percentString,
                  size: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  wordSpacing: 0,
                ),
              ),
            );
        }
        return Container();
      },
    ).toList());
  }
}
