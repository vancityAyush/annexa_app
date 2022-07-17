import 'package:annexa_app/Screen/mainpage.dart';
import 'package:annexa_app/main.dart';
import 'package:annexa_app/network/api_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../models/OAuthUser.dart';
import 'loginpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          "assets/images/jpg/main.jpg",
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    startHome();
  }

  Future<void> startHome() async {
    Dio dio = Dio(
      BaseOptions(
        connectTimeout: 5000,
        receiveTimeout: 5000,
      ),
    );

    final flutterStorage = FlutterSecureStorage();
    getIt.registerLazySingleton<Dio>(() => dio);
    getIt.registerSingleton<ApiClient>(ApiClient(dio));
    getIt.registerSingleton<FlutterSecureStorage>(flutterStorage);

    if (await User.loginCheck()) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MainPage()));
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
    await Future.delayed(Duration(milliseconds: 2000));
  }
}
