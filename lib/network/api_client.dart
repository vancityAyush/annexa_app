import 'package:annexa_app/models/response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://annexa.frantic.in/api/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST("/login")
  @FormUrlEncoded()
  Future<ApiResponse> login(@Field() String emailid, @Field() String password);

  @POST("/savecustomer")
  Future<ApiResponse> register(@Field() String name, @Field() String emailid,
      @Field() String password, @Field('mobile') String phone);

  @GET("/getforex_currency")
  Future<ApiResponse> getForexCurrency();
  @GET("/ratefluctute")
  Future<ApiResponse> getRateFluctute();

  @POST("/save_order")
  @FormUrlEncoded()
  Future<ApiResponse> saveOrder(
    @Field() String customerid,
    @Field() String amount,
    @Field() String stock_id,
    @Field() String type,
    @Field() String bid_price,
    @Field() String bid_time,
  );

  @POST("/save_payment")
  @FormUrlEncoded()
  Future<ApiResponse> savePayment(
    @Field() String customerid,
    @Field() String amount,
    @Field() String orderid,
    @Field() String refrence_id,
    @Field() String status,
  );
}
