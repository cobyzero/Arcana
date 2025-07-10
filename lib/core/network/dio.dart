import 'package:arcana_app/core/utils/constants.dart';
import 'package:dio/dio.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: baseUrl,
    receiveDataWhenStatusError: true,
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
    validateStatus: (status) {
      return status! < 500;
    },
    headers: {
      'Content-Type': 'application/json',
    },
  ),
);
