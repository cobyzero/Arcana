import 'package:arcana_app/domain/models/response_model.dart';
import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';

class BannerService {
  final Dio dio;

  BannerService(this.dio);

  Future<ResponseModel> getBanners() async {
    try {
      final response = await dio.get('/banner',
          options: Options(
            headers: {"Authorization": "Bearer ${GetStorage().read('token')}"},
          ));
      final data = response.data;
      return ResponseModel.fromJson(data);
    } catch (e) {
      rethrow;
    }
  }
}
