import 'package:flutter/material.dart';

import '../Widget/back_button.dart';

class Crypto extends StatefulWidget {
  const Crypto({Key? key}) : super(key: key);

  @override
  _CryptoState createState() => _CryptoState();
}

class _CryptoState extends State<Crypto> with SingleTickerProviderStateMixin {
  final List<Widget> _tabs = [
    const Center(
      child: Text("All Conins"),
    ),
    const Center(
      child: Text("My Watchlist"),
    )
  ];

  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: _tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: const Color(0xff150c3f),
        appBar: AppBar(
          backgroundColor: const Color(0xff29214d),
          leading: const navBack(),
          title: const Text(
            "Crypto",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(
            controller: _controller,
            tabs: const [
              Text(
                "All Coins",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "My WatchList",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
            onTap: (index) {
              print(index);
            },
          ),
        ),
        body: Container(),
        // FutureBuilder<List<dynamic>>(
        //   // future: _apiClient.getCryptoData(),
        //   builder: (context, snapshots) {
        //     if (!snapshots.hasData) {
        //       return const Center(
        //         child: CircularProgressIndicator(),
        //       );
        //     }
        //     // List<CryptoEntity> data = snapshots.data!;
        //     return DefaultTabController(
        //       length: 2,
        //       child: TabBarView(
        //         children: [
        //           CryptoList(dataSource: data),
        //           CryptoList(dataSource: data, isWatch: true),
        //         ],
        //         controller: _controller,
        //       ),
        //     );
        //   },
        // ),
        /*body: Center(
            child: TabBarView(
              children: _tabs,
              controller: _controller,
            ),
          )*/
      ),
    );
    /*  body: ListView.separated(
            itemBuilder: (context, index) {
              return ReuseAbleCrypto(
                price: 123,
                rate: 90,
                image: 'crypto.png',
                percentageChange: 6.92,
                subtitle: 'btc',
                title: 'Bitcoin',
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: 7)*/
  }
}
/*
class CryptoList extends StatelessWidget {
  final bool isWatch;
  CryptoList({
    Key? key,
    required List<CryptoEntity> dataSource,
    this.isWatch = false,
  }) {
    if (isWatch) {
      dataSource.removeWhere((element) => !element.watchList);
    }
    _dataSource = CryptoDataSource(cryptos: dataSource, isWatch: isWatch);
  }

  late final CryptoDataSource? _dataSource;

  @override
  Widget build(BuildContext context) {
    return SfDataGridTheme(
      data: SfDataGridThemeData(sortIconColor: Colors.white),
      child: SfDataGrid(
        allowPullToRefresh: true,
        allowSorting: true,
        source: _dataSource!,
        columnWidthMode: ColumnWidthMode.fill,
        rowHeight: 80,
        onCellTap: (cellData) {
          if (cellData.rowColumnIndex.rowIndex == 0) return;
          String symbol =
              _dataSource!._list[cellData.rowColumnIndex.rowIndex - 1].symbol;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Bitcoin(symbol: symbol),
            ),
          );
        },
        columns: [
          GridColumn(
            columnWidthMode: ColumnWidthMode.fill,
            columnName: 'name',
            label: Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              child: const ReuseableText(
                  text: " Coins Name",
                  size: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  wordSpacing: 0),
            ),
          ),
          GridColumn(
            columnName: 'price',
            label: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8),
              child: const ReuseableText(
                  text: " Price",
                  size: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  wordSpacing: 0),
            ),
          ),
          GridColumn(
            columnName: '24h',
            label: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8),
              child: const ReuseableText(
                  text: "24H Change",
                  size: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  wordSpacing: 0),
            ),
          ),
        ],
      ),
    );
  }
}

class CryptoDataSource extends DataGridSource {
  bool isWatch;
  CryptoDataSource(
      {required List<CryptoEntity> cryptos, this.isWatch = false}) {
    mapData(cryptos);
    // Timer.periodic(
    //   const Duration(
    //     seconds: 5,
    //   ),
    //   (timer) {
    //     handleRefresh();
    //   },
    // );
  }

  void mapData(List<CryptoEntity> data) {
    _list = data;
    _cryptos = data
        .map<DataGridRow>(
          (e) => DataGridRow(
            cells: [
              DataGridCell<String>(
                columnName: 'name',
                value: e.baseAsset,
              ),
              DataGridCell<double>(
                columnName: 'price',
                value: e.price,
              ),
              DataGridCell<double>(
                columnName: '24h',
                value: e.percent,
              ),
            ],
          ),
        )
        .toList();
  }

  @override
  Future<void> handleRefresh() async {
    ApiClient api = getIt<ApiClient>();
    List<CryptoEntity> newList = await api.getCryptoData();
    mapData(_list);
    notifyListeners();
  }

  List<DataGridRow> _cryptos = [];

  List<CryptoEntity> _list = [];

  @override
  List<DataGridRow> get rows => _cryptos;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>(
      (dataGridCell) {
        switch (dataGridCell.columnName) {
          case 'name':
            return Row(
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
                    text: dataGridCell.value.toUpperCase(),
                    size: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    wordSpacing: 0,
                  ),
                ),
              ],
            );
          case 'price':
            return Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16),
              child: ReuseableText(
                  text: "₹${dataGridCell.value}",
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
                  color: dataGridCell.value < 0 ? Colors.red : Colors.green,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ReuseableText(
                  text: dataGridCell.value > 0
                      ? '+${dataGridCell.value.toStringAsFixed(2)}%'
                      : '${dataGridCell.value.toStringAsFixed(2)}%',
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
*/
