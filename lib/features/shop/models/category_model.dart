import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryModel {
  String id;
  String name;
  String image;
  String parentId;
  bool isFeatured;

  CategoryModel({
    required this.id,
    required this.name,
    required this.image,
    required this.isFeatured,
    required this.parentId,
  });

  //empty constructor
  static CategoryModel empty() => CategoryModel(
        id: '',
        name: '',
        image: '',
        isFeatured: false,
        parentId: '',
      );

  //convert model to json to store in firestore
  Map<String, dynamic> toJson() => {
        'Name': name,
        'Image': image,
        'ParentId': parentId,
        'isFeatured': isFeatured,
      };

  //map json oriented document snapshot from frerbase to usermodel
  factory CategoryModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;

      // map json record to the model
      return CategoryModel(
        id: document.id,
        name: data['Name'] ?? '',
        image: data['Image'] ?? '',
        parentId: data['ParentId'] ?? '',
        isFeatured: data['isFeatured'] ?? false,
      );
    } else {
      return CategoryModel.empty();
    }
  }
}
// Commit at 2024-12-24 16:39:08
// Commit at 2024-07-28 10:12:22
// Commit at 2024-02-12 13:07:14
// Random commit
// Random commit
// Random commit
Random commit
Random commit
