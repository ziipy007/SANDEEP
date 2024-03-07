// ignore_for_file: sort_constructors_first, lines_longer_than_80_chars, type_annotate_public_apis, prefer_constructors_over_static_methods

class CategoryList {
  String categoryName;
  String categoryImage;

  CategoryList({required this.categoryName, required this.categoryImage});

  static CategoryList fromJson(json) => CategoryList(
        categoryName: json['categoryName'],
        categoryImage: json['categoryImage'],
      );
}
