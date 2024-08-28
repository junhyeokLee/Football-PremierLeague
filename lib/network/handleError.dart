// error_handler.dart

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:football_premier_league/network/dio_error.dart';

/// 예외를 처리하고 예외 메시지를 반환하는 함수
Future<T> handleError<T>(Future<T> Function() request) async {
  try {
    return await request();
  } on DioError catch (e) {
    final errorMessage = getErrorMessage(e);
    debugPrint('DioError: $errorMessage');
    throw Exception(errorMessage);
  } catch (e) {
    final errorMessage = getErrorMessage(e);
    debugPrint('General Error: $errorMessage');
    throw Exception(errorMessage);
  }
}