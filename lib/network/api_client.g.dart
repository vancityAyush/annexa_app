// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _ApiClient implements ApiClient {
  _ApiClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://annexa.frantic.in/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<LoginResponse> login(emailid, password) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'emailid': emailid, 'password': password};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<LoginResponse>(Options(
                method: 'POST',
                headers: _headers,
                extra: _extra,
                contentType: 'application/x-www-form-urlencoded')
            .compose(_dio.options, '/login',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = LoginResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ApiResponse> register(name, emailid, password, phone) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'name': name,
      'emailid': emailid,
      'password': password,
      'mobile': phone
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/savecustomer',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ApiResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CurrencyResponse> getForexCurrency() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CurrencyResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/getforex_currency',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CurrencyResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ApiResponse> getRateFluctute() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/ratefluctute',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ApiResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ApiResponse> saveOrder(
      customerid, amount, stock_id, type, bid_price, bid_time) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'customerid': customerid,
      'amount': amount,
      'stock_id': stock_id,
      'type': type,
      'bid_price': bid_price,
      'bid_time': bid_time
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse>(Options(
                method: 'POST',
                headers: _headers,
                extra: _extra,
                contentType: 'application/x-www-form-urlencoded')
            .compose(_dio.options, '/save_order',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ApiResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ApiResponse> savePayment(
      customerid, amount, orderid, refrence_id, status) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'customerid': customerid,
      'amount': amount,
      'orderid': orderid,
      'refrence_id': refrence_id,
      'status': status
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse>(Options(
                method: 'POST',
                headers: _headers,
                extra: _extra,
                contentType: 'application/x-www-form-urlencoded')
            .compose(_dio.options, '/save_payment',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ApiResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
