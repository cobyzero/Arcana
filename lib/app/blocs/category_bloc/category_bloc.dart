import 'package:arcana_app/domain/entities/category_entity.dart';
import 'package:arcana_app/domain/repositories/category_irepository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryIRepository categoryIRepository;

  CategoryBloc(this.categoryIRepository) : super(CategoryInitial()) {
    on<CategoryGetCategoriesEvent>(_getCategories);
  }

  Future<void> _getCategories(
      CategoryGetCategoriesEvent event, Emitter<CategoryState> emit) async {
    try {
      emit(CategoryLoading());
      final categories = await categoryIRepository.getCategories();
      emit(CategoryLoaded(categories: categories));
    } catch (e) {
      emit(CategoryError(message: e.toString()));
    }
  }
}
