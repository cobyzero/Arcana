import 'package:arcana_app/domain/models/response_model.dart';

abstract class AuthIRepository {
  Future<ResponseModel> login({
    required String email,
    required String password,
  });

  Future<ResponseModel> register({
    required String name,
    required String email,
    required String password,
  });
}
