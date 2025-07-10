import 'package:arcana_app/app/services/auth_service.dart';
import 'package:arcana_app/domain/models/response_model.dart';
import 'package:arcana_app/domain/repositories/auth_irepository.dart';

class AuthRepository implements AuthIRepository {
  final AuthService authService;

  AuthRepository(this.authService);

  @override
  Future<ResponseModel> login({
    required String email,
    required String password,
  }) {
    try {
      final response = authService.login(email: email, password: password);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
