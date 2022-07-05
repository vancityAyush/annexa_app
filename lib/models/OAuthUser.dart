import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class User {
  final String id;
  final String name;
  final String email;
  final String password;
  final String phone;
  String? wallet_balance;

  final storage = FlutterSecureStorage();
  final emailKey = 'email';
  final passwordKey = 'password';

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.wallet_balance,
  });

  void login(String email, String password) async {
    await storage.write(key: emailKey, value: email);
    await storage.write(key: passwordKey, value: password);
  }

  double get walletBalance {
    return wallet_balance == null ? 0.0 : double.parse(wallet_balance!);
  }
}
