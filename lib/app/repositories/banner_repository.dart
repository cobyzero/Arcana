import 'package:arcana_app/app/services/banner_service.dart';
import 'package:arcana_app/domain/entities/banner_entity.dart';
import 'package:arcana_app/domain/repositories/banner_irepository.dart';

class BannerRepository implements BannerIRepository {
  final BannerService bannerService;

  BannerRepository(this.bannerService);

  @override
  Future<List<BannerEntity>> getBanners() async {
    try {
      final response = await bannerService.getBanners();
      final data = response.data;
      return (data as List).map((e) => BannerEntity.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
