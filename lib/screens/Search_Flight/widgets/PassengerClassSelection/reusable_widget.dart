import 'package:flutter/material.dart';


class ReusableGradientwidget extends StatelessWidget {
  
  ReusableGradientwidget({this.cardChild,this.gradient});
  
  final Widget cardChild;
  final List<Color>gradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(9.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:gradient,
        ),
        borderRadius: BorderRadius.circular(10.0)
      )
      );
  }
}