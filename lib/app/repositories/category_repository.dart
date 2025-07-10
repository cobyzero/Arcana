import 'package:arcana_app/app/services/category_service.dart';
import 'package:arcana_app/domain/entities/category_entity.dart';
import 'package:arcana_app/domain/repositories/category_irepository.dart';

class CategoryRepository implements CategoryIRepository {
  final CategoryService categoryService;

  CategoryRepository(this.categoryService);

  @override
  Future<List<CategoryEntity>> getCategories() async {
    try {
      final response = await categoryService.getCategories();
      final data = response.data;
      return (data as List).map((e) => CategoryEntity.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
