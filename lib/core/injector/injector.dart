import 'package:arcana_app/app/repositories/auth_repository.dart';
import 'package:arcana_app/app/services/auth_service.dart';
import 'package:arcana_app/core/network/dio.dart';
import 'package:arcana_app/domain/repositories/auth_irepository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton(() => dio);
  getIt.registerLazySingleton(() => AuthService(getIt.get<Dio>()));
  getIt.registerLazySingleton<AuthIRepository>(
      () => AuthRepository(getIt.get<AuthService>()));
}
