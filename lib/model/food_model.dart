import 'dart:convert';

class FoodModel {
  String image;
  String price;
  String rating;
  FoodModel({
    required this.image,
    required this.price,
    required this.rating,
  });

  FoodModel copyWith({
    String? image,
    String? price,
    String? rating,
  }) {
    return FoodModel(
      image: image ?? this.image,
      price: price ?? this.price,
      rating: rating ?? this.rating,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'image': image});
    result.addAll({'price': price});
    result.addAll({'rating': rating});
  
    return result;
  }

  factory FoodModel.fromMap(Map<String, dynamic> map) {
    return FoodModel(
      image: map['image'] ?? '',
      price: map['price'] ?? '',
      rating: map['rating'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory FoodModel.fromJson(String source) => FoodModel.fromMap(json.decode(source));

  @override
  String toString() => 'FoodModel(image: $image, price: $price, rating: $rating)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is FoodModel &&
      other.image == image &&
      other.price == price &&
      other.rating == rating;
  }

  @override
  int get hashCode => image.hashCode ^ price.hashCode ^ rating.hashCode;
}
