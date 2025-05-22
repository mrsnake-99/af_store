class ProductAttributeModel {
  String? name;
  final List<String>? values;

  ProductAttributeModel({
    this.name,
    this.values,
  });

  //json format
  toJson() {
    return {
      'Name': name,
      'Values': values,
    };
  }

  //map json data to documnet snapshot from firebase to usermodel
  factory ProductAttributeModel.fromJson(Map<String, dynamic> document) {
    final data = document;
    if (data.isEmpty) {
      return ProductAttributeModel();
    }
    return ProductAttributeModel(
      name: data.containsKey('Name') ? data['Name'] : '',
      values: List<String>.from(data['Values']),
    );
  }
}
// Commit at 2023-01-25 12:09:20
// Commit at 2023-02-10 16:52:00
// Commit at 2024-06-05 09:04:26
// Random commit
// Random commit
