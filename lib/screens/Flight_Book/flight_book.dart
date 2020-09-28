import 'package:flutter/material.dart';
import 'package:myapp1/models/book_flight_categories.dart';
import 'package:myapp1/screens/Flight_Book/return_flight_book.dart';

import '../side_screen_drawer.dart';
import 'one_Way_flight.dart';

class SearchFlight extends StatelessWidget {
  const SearchFlight({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: choices.length,
      child: Scaffold(
        drawerEnableOpenDragGesture: true,
        bottomSheet: Container(
            alignment: Alignment.topCenter,
            // width:MediaQuery.of(context).size.width * 0.94,
            height: 90.0,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(14)),
            )),
        endDrawerEnableOpenDragGesture: true,
        backgroundColor: Colors.blue[900],
        appBar: AppBar(
          bottom: TabBar(
              tabs: choices.map((Choice choice) {
            return Tab(
              text: choice.title,
              icon: Icon(choice.icon),
            );
          }).toList()),
          title: Text('Flight Booking'),
        ),
        drawer: SideNavigationDrawer(),
        body: TabBarView(children: [
          BookOneWayFlight(),
          BookOneWayFlight(),
          BookTwoWayFlight()
        ]),
      ),
    );
  }
}
