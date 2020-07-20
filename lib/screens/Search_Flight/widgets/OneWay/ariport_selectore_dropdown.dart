import 'dart:math';

import 'package:fancy_alert_dialog/fancy_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:myapp1/screens/Search_Flight/search_flight_model/airport_list.dart';

import 'airports.dart';

class OneWayAirportSelector extends StatelessWidget {
 
final String placeWhere,airportShort,airportLong;

  const OneWayAirportSelector({Key key, this.placeWhere, this.airportShort, this.airportLong}) : super(key: key); 
 //const OneWayAirportSelector(String placeWhere,String airportShort,String airportLong, this.placeWhere, this.airportShort, this.airportLong);

  @override
  Widget build(BuildContext context) {

     return Container(

       child: _origin(placeWhere,airportShort,airportLong),

     );
  }


}



  
Widget _origin(String placeWhere,String airportShort,String airportLong){
  return Column(
    //crossAxisAlignment:CrossAxisAlignment.start,
    //mainAxisAlignment:MainAxisAlignment.spaceBetween,
    children: <Widget>[

      Text(
        placeWhere,
        style:TextStyle(
          color:Colors.black,
          fontFamily:'Arial',
          fontSize:15.0,
          fontWeight:FontWeight.bold
        )
      ),

      Text(airportShort,
      textAlign:TextAlign.center,
          style:TextStyle(
          fontSize:25,
          color:Colors.blue[900],
          fontWeight:FontWeight.bold
        )
      ),

      Text(
        airportLong,
        style:TextStyle(
          color:Colors.blue[900],
          fontFamily:'Oxygen',
          fontSize:10.0,
          fontWeight:FontWeight.bold
        )
      )
    ],
  );
}



Widget _destination(){
  return Column(
    //crossAxisAlignment:CrossAxisAlignment.start,
   // mainAxisAlignment:MainAxisAlignment.spaceBetween,
    children: <Widget>[

      Text("CMB",
      textAlign:TextAlign.center,
        style:TextStyle(
          fontSize:25,
          color:Colors.blue[900],
          fontWeight:FontWeight.bold
        )
      ),

          Text(
        "colombo,Sri Lanka",
         textAlign:TextAlign.center,
        style:TextStyle(
           color:Colors.blue[900],
          fontFamily:'Oxygen',
          fontSize:10.0,
          fontWeight:FontWeight.bold
        )
      )
    ],
  );
}



Widget _flightRouteConection(){
  return Column(
//SizedBox(height:10.0),
    children: <Widget>[

      

Transform.rotate(
  angle: 90 * pi / 180,
  child: IconButton(
    icon: Icon(
      Icons.flight,
       color:Colors.blue[900],
      size:35
    ),
    onPressed: null,
  ),
  
)

    ]

  );
}