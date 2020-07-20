import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category {
  final int categoryId;
  final String name;
  final IconData icon;

  Category({this.categoryId, this.name, this.icon});
}

final oneWay = Category(
  categoryId: 0,
  name: "One-Way",
  icon: Icons.flight_takeoff,
);

final twoWay = Category(
  categoryId: 1,
  name: "Return",
  icon: Icons.swap_horiz,
);

final multiCity = Category(
  categoryId: 2,
  name: "Multi City",
  icon: Icons.call_split,
);

final categories = [
  oneWay,
  twoWay,
  multiCity
];
