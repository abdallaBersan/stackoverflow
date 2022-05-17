import 'package:flutter/material.dart';

class Category {
  int id;
  String title;
  Color color;

  Category({required this.id, required this.title, required this.color});

  @override
  String toString() {
    return '$id - $title';
  }
}

List<Category> categories = [
  Category(id: 1, title: 'Tacos', color: Colors.green),
  Category(id: 2, title: 'Burger', color: Colors.white),
  Category(id: 3, title: 'Boissons', color: Colors.red),
];
