import 'package:arcana_app/domain/models/response_model.dart';

abstract class AuthIRepository {
  Future<ResponseModel> login({
    required String email,
    required String password,
  });
}
