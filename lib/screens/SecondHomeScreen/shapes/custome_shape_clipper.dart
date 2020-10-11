import 'package:flutter/material.dart';

class CustomeShapeClipper extends CustomClipper<Path>{

  @override
  Path getClip(Size size) {

    final Path path = Path();
   path.lineTo(0.0,size.height);


   var firstEndPoint = Offset(size.width * 0.5, size.height - 30.0);
   var firstControlpoint = Offset(size.width * -0.05, size.height - 80.0);
   path.quadraticBezierTo(firstControlpoint.dx,firstControlpoint.dy,firstEndPoint.dx,firstEndPoint.dy);

   var secondEndPoint = Offset(size.width, size.height - 80.0);
   var secondControlpoint = Offset(size.width * 0.75, size.height - 10.0);
   path.quadraticBezierTo(secondControlpoint.dx,secondControlpoint.dy,secondEndPoint.dx,secondEndPoint.dy);


   //path.lineTo(size.width,size.height);
   path.lineTo(size.width,0.0);
   path.close();
   return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
   return true;
  }
  
}