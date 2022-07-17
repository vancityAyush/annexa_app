import 'package:annexa_app/main.dart';
import 'package:annexa_app/network/api_client.dart';
import 'package:annexa_app/network/response/login_response.dart';
import 'package:annexa_app/util/util.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class User {
  final String id;
  final String name;
  final String email;
  final String password;
  final String phone;
  String? wallet_balance;

  final storage = getIt<FlutterSecureStorage>();

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.wallet_balance,
  });

  Future<User?> checkLogin() async {
    String? email = await storage.read(key: emailKey);
    String? password = await storage.read(key: passwordKey);
    if (email != null && password != null) {
      return User(
        id: '',
        name: '',
        email: email,
        password: password,
        phone: '',
        wallet_balance: '',
      );
    }
  }

  static loginCheck() async {
    final storage = getIt<FlutterSecureStorage>();
    String? email = await storage.read(key: emailKey);
    String? password = await storage.read(key: passwordKey);
    print('email: $email');
    print('password: $password');
    if (email != null && password != null) {
      await login(email, password);
      return true;
    }
    return false;
  }

  static Future<LoginResponse> login(String email, String password) async {
    final storage = getIt<FlutterSecureStorage>();
    final api = getIt<ApiClient>();
    LoginResponse res = await api.login(email, password);
    if (res.status == 200) {
      User user = User(
          id: res.data.id,
          name: res.data.name,
          email: res.data.emailid,
          password: res.data.password,
          phone: res.data.mobileno,
          wallet_balance: res.Wallet_Balance);
      getIt.registerSingleton<User>(user);
      await storage.write(key: emailKey, value: email);
      await storage.write(key: passwordKey, value: password);
    }
    return res;
  }

  void logout() async {
    await storage.delete(key: emailKey);
    await storage.delete(key: passwordKey);
  }

  double get walletBalance {
    return wallet_balance == null ? 0.0 : double.parse(wallet_balance!);
  }
}
