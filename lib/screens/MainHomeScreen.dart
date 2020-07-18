import 'package:flutter/material.dart';
import 'package:myapp1/screens/side_screen_drawer.dart';
import 'package:myapp1/screens/single_trip.dart';
import 'package:myapp1/screens/top_home_screen.dart';

class MainHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title:Text('MyApp',
          style:TextStyle(
            fontSize:15.0
          )
        ),

      ),
      drawer: SideNavigationDrawer(),


      body:SafeArea(
        child:ListView(
          children: <Widget>[
            TopHomeScreen(),
              TopHomeScreen(),
               TopHomeScreen(),
                TopHomeScreen()
            //SingleTrip()
            //AnimationCard()
          ],
        )
      )
    );
  }
}