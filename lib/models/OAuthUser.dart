import 'package:annexa_app/main.dart';
import 'package:annexa_app/network/response/login_response.dart';
import 'package:annexa_app/util/util.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../network/response/login_response.dart';

class OAuthUser {
  static const storage = FlutterSecureStorage();
  late final String id;
  late final String name;
  final String email;
  final String password;
  late final String phone;
  String? walletBalance;

  void setWalletBalance(String balance) {
    walletBalance = balance;
  }

  OAuthUser({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.walletBalance,
  }) {
    getIt.registerSingleton<OAuthUser>(this);
    saveLogin(this);
  }

  OAuthUser.fromLoginResponse(LoginResponse response)
      : this(
          id: response.data!.id,
          name: response.data!.name,
          email: response.data!.emailid,
          password: response.data!.password,
          phone: response.data!.mobileno,
          walletBalance: response.walletBalance,
        );

  static Future<OAuthUser?> checkLogin() async {
    String? email = await storage.read(key: emailKey);
    String? password = await storage.read(key: passwordKey);
    print('email: $email, password: $password');
    if (email != null && password != null) {
      return OAuthUser(
        id: '',
        name: '',
        email: email,
        password: password,
        phone: '',
        walletBalance: '',
      );
    }
    return null;
  }

  static Future<void> saveLogin(OAuthUser user) async {
    await storage.write(key: emailKey, value: user.email);
    await storage.write(key: passwordKey, value: user.password);
  }

  void logout() async {
    await storage.delete(key: emailKey);
    await storage.delete(key: passwordKey);
  }

  double get walletBalanceNumber {
    return walletBalance == null ? 0.0 : double.parse(walletBalance!);
  }
}
