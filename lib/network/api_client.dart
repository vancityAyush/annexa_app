import 'package:annexa_app/network/response/currency_response.dart';
import 'package:annexa_app/network/response/login_response.dart';
import 'package:annexa_app/network/response/rate_response.dart';
import 'package:annexa_app/network/response/response.dart';
import 'package:annexa_app/network/response/wallet_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://annexa.frantic.in/api/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST("/login")
  @FormUrlEncoded()
  Future<LoginResponse> login(
      @Field() String emailid, @Field() String password);

  @POST("/savecustomer")
  Future<ApiResponse> register(@Field() String name, @Field() String emailid,
      @Field() String password, @Field('mobile') String phone);

  @GET("/getforex_currency")
  Future<CurrencyResponse> getForexCurrency();
  @GET("/ratefluctute")
  Future<RateResponse> getRateFluctute();

  @POST("https://annexa.frantic.in/Api/save_order")
  @FormUrlEncoded()
  Future<ApiResponse> saveOrder(
    @Field() String customerid,
    @Field() String amount,
    @Field() String stock_id,
    @Field() String type,
    @Field() String bid_price,
    @Field() String bid_time,
  );

  @POST("https://annexa.frantic.in/Api/save_payment")
  @FormUrlEncoded()
  Future<ApiResponse> savePayment(
    @Field() String customerid,
    @Field() String amount,
    @Field() String orderid,
    @Field() String refrence_id,
    @Field() String status,
  );

  @POST('/getwallet')
  Future<WalletResponse> getWallet(@Query('customerid') String customerid);
}
