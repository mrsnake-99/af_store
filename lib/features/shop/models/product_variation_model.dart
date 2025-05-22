class ProductVariationModel {
  final String id;
  String sku;
  double price;
  double salePrice;
  int stock;
  String image;
  String? description;
  Map<String, String> attributeValues;

  ProductVariationModel({
    required this.id,
    this.image = '',
    this.sku = '',
    this.price = 0.0,
    this.salePrice = 0.0,
    this.stock = 0,
    this.description = '',
    required this.attributeValues,
  });

  //empty helper function
  static ProductVariationModel empty() =>
      ProductVariationModel(id: '', attributeValues: {});

  //json format
  toJson() {
    return {
      'Id': id,
      'Image': image,
      'SKU': sku,
      'Price': price,
      'SalePrice': salePrice,
      'Stock': stock,
      'Description': description,
      'AttributesValues': attributeValues,
    };
  }

  //map json data to documnet snapshot from firebase to usermodel
  factory ProductVariationModel.fromJson(Map<String, dynamic> document) {
    final data = document;
    if (data.isEmpty) {
      return ProductVariationModel.empty();
    }
    return ProductVariationModel(
      id: data['Id'] ?? '',
      price: double.parse((data['Price'] ?? 0.0).toString()),
      salePrice: double.parse((data['SalePrice'] ?? 0.0).toString()),
      image: data['Image'] ?? '',
      sku: data['SKU'] ?? '',
      description: data['Description'] ?? '',
      stock: int.tryParse(data['Stock'].toString()) ?? 0,
      attributeValues: Map<String, String>.from(data['AttributesValues']),
    );
  }
}
// Commit at 2022-12-20 11:18:30
// Commit at 2022-06-10 11:31:15
// Commit at 2023-01-27 14:31:11
// Commit at 2024-07-09 09:41:50
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
