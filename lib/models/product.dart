import 'dart:convert';

class Product {
  final String name;
  final String description;
  final double quantity;
  final List<String> images;
  final String category;
  final double price;
<<<<<<< HEAD
  final String? id;
=======
  String? id;
 

>>>>>>> 77cec44db4499a9bd057cf0dea2f7378041c7cbf
  Product({
    required this.name,
    required this.description,
    required this.quantity,
    required this.images,
    required this.category,
    required this.price,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'quantity': quantity,
      'images': images,
      'category': category,
      'price': price,
      'id': id,
<<<<<<< HEAD
=======
      //'rating': rating,
>>>>>>> 77cec44db4499a9bd057cf0dea2f7378041c7cbf
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      quantity: map['quantity']?.toDouble() ?? 0.0,
      images: List<String>.from(map['images']),
      category: map['category'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      id: map['_id'],
<<<<<<< HEAD
=======
      // rating: map['ratings'] != null
      //     ? List<Rating>.from(
      //         map['ratings']?.map(
      //           (x) => Rating.fromMap(x),
      //         ),
      //       )
      //     : null,
>>>>>>> 77cec44db4499a9bd057cf0dea2f7378041c7cbf
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));
}
