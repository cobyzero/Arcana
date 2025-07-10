class CategoryEntity {
  final int id;
  final String name;
  final String? image;

  CategoryEntity({
    required this.id,
    required this.name,
    this.image,
  });

  factory CategoryEntity.fromJson(Map<String, dynamic> json) {
    return CategoryEntity(
      id: json['id'],
      name: json['name'],
      image: json['image'],
    );
  }
}
