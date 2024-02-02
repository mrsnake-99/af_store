class CartItemModel {
  String productId;
  String title;
  double price;
  String? image;
  int quantity;
  String variationId;
  String? brandName;
  Map<String, String>? selectedVariation;

  CartItemModel({
    required this.productId,
    required this.quantity,
    this.variationId = '',
    this.image,
    this.price = 0.0,
    this.title = '',
    this.brandName,
    this.selectedVariation,
  });

  //empty cart
  static CartItemModel empty() => CartItemModel(productId: '', quantity: 0);

  //convert a cartitem to json
  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'title': title,
      'price': price,
      'image': image,
      'quantity': quantity,
      'variationId': variationId,
      'brandName': brandName,
      'selectedVariation': selectedVariation,
    };
  }

  //create a cartitem from json map
  factory CartItemModel.fromJson(Map<String, dynamic> json) {
    return CartItemModel(
      productId: json['productId'],
      title: json['title'],
      price: json['price']?.toDouble(),
      image: json['image'],
      quantity: json['quantity'],
      variationId: json['variationId'],
      brandName: json['brandName'],
      selectedVariation: json['selectedVariation'] != null
          ? Map<String, String>.from(json['selectedVariation'])
          : null,
    );
  }
}
// Commit at 2022-08-19 14:55:34
// Commit at 2023-10-03 13:03:20
// Commit at 2023-03-27 09:50:33
// Commit at 2023-10-14 09:40:05
// Commit at 2024-06-19 15:04:19
// Commit at 2024-07-02 13:26:14
// Commit at 2024-09-17 12:28:42
// Commit at 2024-12-16 11:26:18
// Random commit
// Random commit
Random commit
Random commit
Random commit
Random commit
Random commit
