import 'dart:developer';
import 'dart:io';
import 'package:bond_trade_demo/services/news_api/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class NewsApiClient {
  static NewsApiClient? _instance;
  static Dio? _dio;

  NewsApiClient._();

  static NewsApiClient get instance {
    _dio ??= Dio()..options.baseUrl = NpsApiConstants.baseUrl;
    _dio!.options.connectTimeout = const Duration(minutes: 1);
    _dio!.options.receiveTimeout = const Duration(minutes: 1);
    _dio!.interceptors[1] = PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      logPrint: (object) {
        log(object.toString());
      },
    );
    _instance ??= NewsApiClient._();
    return _instance!;
  }

  Future<Response<T>> get<T>(String path,
      {Object? data, Map<String, dynamic>? queryParameters, Options? options}) {
    options?.copyWith(
      headers: {
        'Content-Type': 'application/json',
      },
    );
    try {
      return _dio!.get<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options ??
            Options(
              headers: {'Content-Type': 'application/json'},
            ),
      );
    } on SocketException {
      throw const SocketException('No internet, Check your connection');
    } on FormatException catch (_) {
      throw const FormatException('Unable to process the data');
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<T>> post<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) {
    try {
      return _dio!.post<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options ??
            Options(
              headers: {
                'Content-Type': 'application/json',
              },
            ),
      );
    } on SocketException {
      throw const SocketException('No internet, Check your connection');
    } on FormatException catch (_) {
      throw const FormatException('Unable to process the data');
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<T>> put<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) {
    try {
      return _dio!.put<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
    } on SocketException {
      throw const SocketException('No internet, Check your connection');
    } on FormatException catch (_) {
      throw const FormatException('Unable to process the data');
    } catch (e) {
      rethrow;
    }
  }
}
