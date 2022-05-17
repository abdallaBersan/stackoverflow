import 'package:flutter/material.dart';

class Product {
  int id;
  String title;
  double price;
  Color color;
  int categoryId;
  String? image;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.color,
    required this.categoryId,
    this.image,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: 'Tacos classic',
      price: 6.5,
      color: Colors.red,
      categoryId: 1),
  Product(
      id: 2,
      title: 'Tacos double',
      price: 7.5,
      color: Colors.red,
      categoryId: 1),
  Product(
      id: 3,
      title: 'Burger vegan',
      price: 5,
      color: Colors.green,
      categoryId: 2),
  Product(
      id: 4,
      title: 'Burger steak',
      price: 7.5,
      color: Colors.blue,
      categoryId: 2),
  Product(
      id: 5, title: 'Coca', price: 1.5, color: Colors.orange, categoryId: 3),
  Product(
      id: 6,
      title: 'Fanta',
      price: 1.5,
      color: Colors.orangeAccent,
      categoryId: 3),
  Product(
      id: 7,
      title: 'Oasis',
      price: 1.0,
      color: Colors.deepOrange,
      categoryId: 3),
];
