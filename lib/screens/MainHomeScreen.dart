import 'package:flutter/material.dart';
import 'package:myapp1/app_state.dart';
import 'package:myapp1/models/flight_details.dart';
import 'package:myapp1/screens/sheduled_flight_list.dart';
import 'package:myapp1/screens/side_screen_drawer.dart';
import 'package:myapp1/screens/single_trip.dart';
import 'package:myapp1/screens/top_home_screen.dart';
import 'package:myapp1/widgets/bottom_nav_bar.dart';
import 'package:provider/provider.dart';

class MainHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideNavigationDrawer(),
      body: BottomNavBar(),
    );
  }
}
