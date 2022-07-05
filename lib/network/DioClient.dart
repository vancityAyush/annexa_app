import 'package:annexa_app/main.dart';
import 'package:annexa_app/network/response/wallet_response.dart';
import 'package:dio/dio.dart';

/**
 * Created by : Ayush Kumar
 * Created on : 05-07-2022
 */
class DioClient {
  final dio = getIt<Dio>();

  Future<WalletResponse> getWallet(String customerid) async {
    Response res = await dio
        .post('getwallet', queryParameters: {'customerid': customerid});
    WalletResponse r = WalletResponse.fromJson(res.data);
    print(r);
    return r;
  }
}
