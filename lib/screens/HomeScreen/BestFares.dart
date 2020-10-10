import 'package:flutter/material.dart';
import 'package:myapp1/models/offered_trips.dart';
import 'package:myapp1/screens/HomeScreen/FareItem.dart';

class BestFares extends StatelessWidget {
  final double faresHeight;
  final double windowHeight;
  final double windowWidth;

  final List<FareItem> fares = [
    new FareItem(
        isFeatured: true,
        city: 'New York',
        fareClass: 'Economy',
        imagePath: './assets/images/newyork.jpg'),
    new FareItem(
        isFeatured: true,
        city: 'Sydney',
        fareClass: 'Economy',
        imagePath: './assets/images/sydney.jpeg'),
    new FareItem(
        isFeatured: false,
        city: 'Murano',
        fareClass: 'Economy',
        imagePath: './assets/images/murano.jpg'),
    new FareItem(
        isFeatured: true,
        city: 'Paris',
        fareClass: null,
        imagePath: './assets/images/paris.jpg'),
    new FareItem(
        isFeatured: true,
        city: 'New Delhi',
        fareClass: 'Economy',
        imagePath: './assets/images/newdelhi.jpg'),
  ];

  BestFares({
    @required this.faresHeight,
    @required this.windowHeight,
    @required this.windowWidth,
  });

  @override
  Widget build(BuildContext context) {
    final itemH = faresHeight * 0.7;

    return Container(
      height: faresHeight,
      margin: EdgeInsets.only(top: windowHeight * 0.09),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(80),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, -4),
          ),
        ],
      ),
      child: Container(
        height: faresHeight,
        width: windowWidth,
        padding: EdgeInsets.only(top: 10, left: 5, right: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: faresHeight * 0.2,
              child: Text(
                'Best Fares from Croatia',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
            ),
            Container(
              height: itemH,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: sheduledOffers.length,
                itemBuilder: (context, index) => FareItem(
                  isFeatured: sheduledOffers[index].isFeatured,
                  city: sheduledOffers[index].city,
                  fareClass: sheduledOffers[index].travelClass,
                  imagePath: sheduledOffers[index].imageUrl,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
