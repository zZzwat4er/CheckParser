import 'package:check_parser/ui/widgets/snack_bar.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../data/models/ip/ip.dart';

part '../extentions/dio_extentions.dart';

class DioRepository {
  final Dio _dio = Dio();

  Dio get dio => _dio;

  DioRepository(IP ip, Ref ref) {
    _dio.options.baseUrl = 'http://${ip.ip}:8000/';
    _dio.options.receiveTimeout = 10000;
    _dio.options.connectTimeout = 10000;
    _dio.options.headers['Content-Type'] = 'application/json';

    _dio.interceptors.add(PrettyDioLogger());
    _dio.interceptors.add(_TimeOutInterseptor(ref));
    _dio.interceptors.add(_ServerErrorInterseptor(ref));
  }

  Future<Response<T>> sendRequest<T>({
    String? method,
    required String path,
    Map<String, dynamic>? headers = const <String, dynamic>{},
    Map<String, dynamic>? extra = const <String, dynamic>{},
    Map<String, dynamic>? queryParameters = const <String, dynamic>{},
    dynamic data,
    void Function(int, int)? onSendProgress,
  }) async {
    Response<T> res = await _dio.fetch<T>(_setStreamType<dynamic>(
        Options(method: method, headers: headers, extra: extra)
            .compose(_dio.options, path,
                queryParameters: queryParameters,
                data: data,
                onSendProgress: onSendProgress)
            .copyWith(baseUrl: _dio.options.baseUrl)));

    return res;
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
