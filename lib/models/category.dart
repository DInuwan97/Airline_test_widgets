import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category {
  final int categoryId;
  final String name;
  final IconData icon;

  Category({this.categoryId, this.name, this.icon});
}

final sheduledFlights = Category(
  categoryId: 0,
  name: "Sheduled",
  icon: Icons.search,
);

final previousFlights = Category(
  categoryId: 1,
  name: "Previous",
  icon: Icons.music_note,
);

final categories = [
  sheduledFlights,
  previousFlights,
];
