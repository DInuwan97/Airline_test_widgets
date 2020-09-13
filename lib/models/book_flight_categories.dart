import 'package:flutter/material.dart';

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'One Way', icon: Icons.flight_takeoff),
  const Choice(title: 'Return', icon: Icons.swap_horizontal_circle),
  const Choice(title: 'Multi City', icon: Icons.call_split),
   //const Choice(title: 'Multi City', icon: Icons.call_split),
];