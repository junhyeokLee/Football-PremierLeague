import 'package:dio/dio.dart';
import 'package:football_premier_league/env.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'logger_interceptor.dart';

part 'dio_provider.g.dart';

@riverpod
Dio dio(DioRef ref) {
  final dio = Dio();
  // 기본 헤더에 'X-Auth-Token'을 추가.
  dio.options.headers['X-Auth-Token'] = Env.footBallApiKey;
  // LoggerInterceptor를 추가하여 요청과 응답을 로깅.
  dio.interceptors.add(LoggerInterceptor());
  return dio;
}
