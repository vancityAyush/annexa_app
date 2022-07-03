import 'package:annexa_app/main.dart';
import 'package:annexa_app/network/api_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

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
    Dio dio = Dio();
    getIt.registerLazySingleton<Dio>(() => dio);
    getIt.registerSingleton<ApiClient>(ApiClient(dio));
    await Future.delayed(Duration(milliseconds: 2000));

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (Context) => LoginPage()));
  }
}
