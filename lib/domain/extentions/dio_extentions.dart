part of '../repository/dio_repository.dart';

class _TimeOutInterseptor extends Interceptor {
  final Ref ref;

  _TimeOutInterseptor(this.ref);

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.type == DioErrorType.connectTimeout) {
      showSnackBar(ref, 'Responce timeout, try to change IP');
      return handler.resolve(Response(requestOptions: err.requestOptions));
    }
    super.onError(err, handler);
  }
}

class _ServerErrorInterseptor extends Interceptor{
  final Ref ref;

  _ServerErrorInterseptor(this.ref);

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 500) {
      showSnackBar(ref, 'Programmer dolbaeb and something broken');
      return handler.resolve(Response(requestOptions: err.requestOptions));
    }
    super.onError(err, handler);
  }
}