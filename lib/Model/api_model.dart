class ApiModel {
  var id;
  var price;
  var stock;
  String title;
  String description;
  var rating;
  String brand;
  String category;
  var discountPercentage;
  var thumbnail;

  ApiModel({
    required this.id,
    required this.category,
    required this.brand,
    required this.description,
    required this.price,
    required this.rating,
    required this.stock,
    required this.title,
    required this.discountPercentage,
    required this.thumbnail,
  });

  factory ApiModel.fromJson({required Map data}) {
    return ApiModel(
      id: data['id'],
      category: data['category'],
      brand: data['brand'],
      description: data['description'],
      price: data['price'],
      rating: data['rating'],
      stock: data['stock'],
      title: data['title'],
      thumbnail: data['thumbnail'],
      discountPercentage: data['discountPercentage'],
    );
  }
}
