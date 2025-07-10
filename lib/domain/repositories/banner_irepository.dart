import 'package:arcana_app/domain/entities/banner_entity.dart';

abstract interface class BannerIRepository {
  Future<List<BannerEntity>> getBanners();
}
