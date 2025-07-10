import 'package:arcana_app/app/repositories/auth_repository.dart';
import 'package:arcana_app/app/repositories/banner_repository.dart';
import 'package:arcana_app/app/services/auth_service.dart';
import 'package:arcana_app/app/repositories/category_repository.dart';
import 'package:arcana_app/app/services/banner_service.dart';
import 'package:arcana_app/app/services/category_service.dart';
import 'package:arcana_app/core/network/dio.dart';
import 'package:arcana_app/domain/repositories/auth_irepository.dart';
import 'package:arcana_app/domain/repositories/banner_irepository.dart';
import 'package:arcana_app/domain/repositories/category_irepository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton(() => dio);
  getIt.registerLazySingleton(() => AuthService(getIt.get<Dio>()));
  getIt.registerLazySingleton<AuthIRepository>(
      () => AuthRepository(getIt.get<AuthService>()));

  getIt.registerLazySingleton(() => CategoryService(getIt.get<Dio>()));
  getIt.registerLazySingleton<CategoryIRepository>(
      () => CategoryRepository(getIt.get<CategoryService>()));

  getIt.registerLazySingleton(() => BannerService(getIt.get<Dio>()));
  getIt.registerLazySingleton<BannerIRepository>(
      () => BannerRepository(getIt.get<BannerService>()));
}
