import 'package:arcana_app/domain/models/response_model.dart';
import 'package:dio/dio.dart';

class AuthService {
  final Dio dio;

  AuthService(this.dio);

  Future<ResponseModel> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await dio.post('auth/login', data: {
        'email': email,
        'password': password,
      });

      final data = response.data;
      return ResponseModel.fromJson(data);
    } catch (e) {
      rethrow;
    }
  }

  Future<ResponseModel> register({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final response = await dio.post('auth/register', data: {
        'name': name,
        'email': email,
        'password': password,
      });

      final data = response.data;
      return ResponseModel.fromJson(data);
    } catch (e) {
      rethrow;
    }
  }
}
