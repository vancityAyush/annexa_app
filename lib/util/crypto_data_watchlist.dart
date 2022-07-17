import 'package:annexa_app/util/crypto_data.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../provider/crypto_provider.dart';

/**
 * Created by : Ayush Kumar
 * Created on : 18-07-2022
 */
class CryptoWatchDataSource extends CryptoDataSource {
  CryptoWatchDataSource({required CryptoProvider provider})
      : super(provider: provider);
  @override
  List<DataGridRow> get rows =>
      provider.watchList.map<DataGridRow>((e) => getRow(e)).toList();
}
