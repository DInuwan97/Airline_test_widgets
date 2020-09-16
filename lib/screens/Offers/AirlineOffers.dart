
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp1/screens/side_screen_drawer.dart';
import 'package:provider/provider.dart';

import '../../app_state.dart';


class AirlineOffers extends StatefulWidget {
  const AirlineOffers({Key key}) : super(key: key);
  @override
  _AirlineOffersState createState() => _AirlineOffersState();
}

class _AirlineOffersState extends State<AirlineOffers> {

  int _selectedIndex = 0;
int _currentTab = 0;

  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,

  ];

  Widget _buildIcon(int index){
    return GestureDetector(
      onTap:(){
        setState((){
          _selectedIndex = index;
        });
        print(_selectedIndex);
      },
      child: Container(
        height: 60.0,
        width:60.0,
        decoration:BoxDecoration(
          color:_selectedIndex == index ?  Theme.of(context).accentColor : Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0)
        ),
        child:Icon(
          _icons[index],
          size:25.0,
          color:_selectedIndex == index ? Theme.of(context).primaryColor : Color(0xFFB4C1C4)
        )
      ),
    );
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:ListView(
          padding:EdgeInsets.symmetric(vertical:30.0),
          children: <Widget>[

          ],
        )
      )
    );
  }
}