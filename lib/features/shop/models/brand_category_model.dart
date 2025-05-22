import 'package:cloud_firestore/cloud_firestore.dart';

class BrandCategoryModel {
  final String brandId;
  final String categoryId;

  BrandCategoryModel({
    required this.brandId,
    required this.categoryId,
  });

  Map<String, dynamic> toJson() {
    return {
      'brandId': brandId,
      'categoryId': categoryId,
    };
  }

  factory BrandCategoryModel.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return BrandCategoryModel(
      brandId: data['brandId'] as String,
      categoryId: data['categoryId'] as String,
    );
  }
}
// Commit at 2022-04-07 16:14:12
// Commit at 2023-12-14 15:23:11
// Commit at 2023-01-05 15:25:01
// Commit at 2024-02-15 18:32:21
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
