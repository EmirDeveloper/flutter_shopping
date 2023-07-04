import 'package:flutter/foundation.dart';

class Sneaker {
  final String id;
  final String categories;
  final String name;
  final String image;
  final int size;
  final double price;
  final int delivery;
  final String gender;
  final String color;

  const Sneaker({
    required this.id,
    required this.categories,
    required this.name,
    required this.image,
    required this.size,
    required this.price,
    required this.delivery,
    required this.color,
    required this.gender,
  });
}
