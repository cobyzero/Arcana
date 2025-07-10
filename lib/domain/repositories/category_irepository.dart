import 'package:arcana_app/domain/entities/category_entity.dart';

abstract class CategoryIRepository {
  Future<List<CategoryEntity>> getCategories();
}
