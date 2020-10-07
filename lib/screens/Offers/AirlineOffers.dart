
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp1/screens/side_screen_drawer.dart';
import 'package:provider/provider.dart';
import 'package:myapp1/screens/Offers/OffersCarousel.dart';
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
    //const Color selectedIconColor = Colors.red;
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
          color:_selectedIndex == index ? Colors.white : Color(0xFFB4C1C4)
        )
      ),
    );
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
                 appBar: AppBar(
            title: Text('Offers',
              style:TextStyle(
                fontSize:18
              )
            ),
            elevation: 0.0,
            flexibleSpace: Container(
            decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent,Colors.blue[600],Colors.blue[300]],
            ),
          ),
            )
          ),
      drawer: SideNavigationDrawer(),
      body:SafeArea(
        child:ListView(
          padding:EdgeInsets.symmetric(vertical:20.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:20.0,right:30.0),
              child: Text('Where would you like to fly with Croatian Airlines?',
                style:TextStyle(
                  fontSize:23.0,
                  fontWeight: FontWeight.bold
                )
              ),
            ),

          SizedBox(height: 20.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:_icons
            .asMap()
            .entries
            .map(
              (MapEntry map) => _buildIcon(map.key),
            ).toList()
          ),
          SizedBox(height:20.0),
          OffersCarousel(),
          SizedBox(height: 20.0,)

          ],
        )




      )
    );
  }
}