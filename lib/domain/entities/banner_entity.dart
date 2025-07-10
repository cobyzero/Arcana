class BannerEntity {
  final int id;
  final String image;
  final String description;

  BannerEntity({
    required this.id,
    required this.image,
    required this.description,
  });

  factory BannerEntity.fromJson(Map<String, dynamic> json) {
    return BannerEntity(
      id: json['id'],
      image: json['image'] ?? '',
      description: json['description'] ?? '',
    );
  }
}
