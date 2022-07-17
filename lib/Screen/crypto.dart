import 'package:annexa_app/main.dart';
import 'package:annexa_app/network/api_client.dart';
import 'package:annexa_app/network/entity/crypto_entity.dart';
import 'package:annexa_app/provider/crypto_provider.dart';
import 'package:annexa_app/util/crypto_data_watchlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../Widget/back_button.dart';
import '../Widget/reuseable_text.dart';
import '../util/crypto_data.dart';

class Crypto extends StatefulWidget {
  const Crypto({Key? key}) : super(key: key);

  @override
  _CryptoState createState() => _CryptoState();
}

class _CryptoState extends State<Crypto> with SingleTickerProviderStateMixin {
  final List<Widget> _tabs = [
    const Center(
      child: Text(
        "All Coins",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          height: 1.5,
        ),
      ),
    ),
    const Center(
      child: Text(
        "My Watchlist",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          height: 1.5,
        ),
      ),
    )
  ];

  late TabController _controller;
  final _apiClient = getIt<ApiClient>();
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
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            bottom: TabBar(
              controller: _controller,
              tabs: _tabs,
            ),
          ),
          body: FutureBuilder<List<CryptoEntity>>(
              future: _apiClient.getCryptoData(),
              builder: (context, snapshots) {
                if (!snapshots.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return DefaultTabController(
                  length: _tabs.length,
                  child: ChangeNotifierProvider(
                    create: (context) => CryptoProvider(data: snapshots.data!),
                    child: Consumer<CryptoProvider>(
                      builder: (context, provider, _) {
                        CryptoDataSource dataSource = CryptoDataSource(
                          provider: provider,
                        );
                        CryptoWatchDataSource watchDataSource =
                            CryptoWatchDataSource(
                          provider: provider,
                        );
                        return TabBarView(
                          controller: _controller,
                          children: [
                            CryptoList(dataSource: dataSource),
                            CryptoList(dataSource: watchDataSource),
                          ],
                        );
                      },
                    ),
                  ),
                );
              })),
    );
  }
}

class CryptoList extends StatelessWidget {
  const CryptoList({Key? key, required this.dataSource}) : super(key: key);

  final CryptoDataSource dataSource;

  @override
  Widget build(BuildContext context) {
    return SfDataGridTheme(
      data: SfDataGridThemeData(sortIconColor: Colors.white),
      child: SfDataGrid(
        allowPullToRefresh: true,
        allowSorting: true,
        source: dataSource,
        columnWidthMode: ColumnWidthMode.fill,
        rowHeight: 80,
        // onCellTap: (cellData) {
        //   if (cellData.rowColumnIndex.rowIndex == 0) return;
        //   String symbol =
        //       _dataSource!._list[cellData.rowColumnIndex.rowIndex - 1].symbol;
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) => Bitcoin(symbol: symbol),
        //     ),
        //   );
        // },
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
            allowSorting: true,
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

// class CryptoListWatch extends StatelessWidget {
//   const CryptoListWatch({
//     Key? key,
//     required CryptoDataSource? dataSource,
//   })  : _dataSource = dataSource,
//         super(key: key);
//
//   final CryptoDataSource? _dataSource;
//
//   @override
//   Widget build(BuildContext context) {
//     return SfDataGridTheme(
//       data: SfDataGridThemeData(sortIconColor: Colors.white),
//       child: SfDataGrid(
//         allowPullToRefresh: true,
//         allowSorting: true,
//         source: _dataSource!,
//         columnWidthMode: ColumnWidthMode.fill,
//         rowHeight: 80,
//         onCellTap: (cellData) {
//           if (cellData.rowColumnIndex.rowIndex == 0) return;
//           String symbol =
//               _dataSource!._list[cellData.rowColumnIndex.rowIndex - 1].symbol;
//           Navigator.push(context,
//               MaterialPageRoute(builder: (context) => Bitcoin(symbol: symbol)));
//         },
//         columns: [
//           GridColumn(
//             columnWidthMode: ColumnWidthMode.fill,
//             columnName: 'name',
//             label: Container(
//               padding: const EdgeInsets.all(8),
//               alignment: Alignment.center,
//               child: const ReuseableText(
//                   text: " Coins Name",
//                   size: 16,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                   wordSpacing: 0),
//             ),
//           ),
//           GridColumn(
//             columnName: 'price',
//             label: Container(
//               alignment: Alignment.center,
//               padding: const EdgeInsets.all(8),
//               child: const ReuseableText(
//                   text: " Price",
//                   size: 16,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                   wordSpacing: 0),
//             ),
//           ),
//           GridColumn(
//             columnName: '24h',
//             label: Container(
//               alignment: Alignment.center,
//               padding: const EdgeInsets.all(8),
//               child: const ReuseableText(
//                   text: "24H Change",
//                   size: 16,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                   wordSpacing: 0),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
