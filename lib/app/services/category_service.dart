import 'package:arcana_app/domain/models/response_model.dart';
import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';

class CategoryService {
  final Dio dio;

  CategoryService(this.dio);

  Future<ResponseModel> getCategories() async {
    try {
      final response = await dio.get(
        'category',
        options: Options(
          headers: {"Authorization": "Bearer ${GetStorage().read('token')}"},
        ),
      );
      final data = response.data;
      return ResponseModel.fromJson(data);
    } catch (e) {
      rethrow;
    }
  }
}
