import 'package:arcana_app/domain/entities/banner_entity.dart';
import 'package:arcana_app/domain/repositories/banner_irepository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'banner_event.dart';
part 'banner_state.dart';

class BannerBloc extends Bloc<BannerEvent, BannerState> {
  final BannerIRepository bannerRepository;

  BannerBloc(this.bannerRepository) : super(BannerInitial()) {
    on<BannerGetBannersEvent>(_getBanners);
  }

  Future<void> _getBanners(
      BannerGetBannersEvent event, Emitter<BannerState> emit) async {
    emit(BannerLoading());
    try {
      final banners = await bannerRepository.getBanners();
      emit(BannerLoaded(banners));
    } catch (e) {
      emit(BannerError(e.toString()));
    }
  }
}
