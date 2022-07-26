import 'package:annexa_app/network/response/currency_response.dart';
import 'package:annexa_app/network/response/login_response.dart';
import 'package:annexa_app/network/response/order_history_response.dart';
import 'package:annexa_app/network/response/rate_response.dart';
import 'package:annexa_app/network/response/response.dart';
import 'package:annexa_app/network/response/save_order_response.dart';
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
  Future<RateResponse> getForexRate();

  @POST("https://annexa.frantic.in/Api/save_order")
  @FormUrlEncoded()
  Future<SaveOrderResponse> saveOrder(
    @Field() String customerid,
    @Field() String amount,
    @Field() String stock_id,
    @Field() String type,
    @Field() String bid_price,
    @Field() String bid_time,
  );

  @POST("https://annexa.frantic.in/Api/savepayment")
  @FormUrlEncoded()
  Future<ApiResponse> savePayment(
    @Field() String customerid,
    @Field() String amount,
    @Field() String orderid,
    @Field() String refrence_id,
    @Field() String status,
  );

  @GET('/getwallet')
  Future<WalletResponse> getWallet(@Query('customerid') String customerid);

  @GET('/getorder_history')
  Future<OrderHistoryResponse> getOrderHistory(
      @Query('customerid') String customerid);

  @GET('https://annexa.frantic.in/Api/orderdetails')
  Future<OrderHistoryResponse> getOrderDetails(
      @Query('orderid') String orderid);

  @GET(
      "https://api.polygon.io/v2/aggs/ticker/{tick}/range/{ran}/minute/{from}/{to}?adjusted=true&sort=asc&limit=999999999&apiKey={apiKey}")
  Future<dynamic> getPolygonData(
      @Path("tick") String tick,
      @Path("ran") String range,
      @Path("from") String from,
      @Path("to") String to,
      @Path("apiKey") String apiKey);
  // @GET('https://api.wazirx.com/sapi/v1/tickers/24hr')
  // Future<List<CryptoEntity>> getCryptoData();
  //
  // @GET("https://api.wazirx.com/sapi/v1/ticker/24hr")
  // Future<CryptoEntity> getCrypto(@Query('symbol') String symbol);
}
