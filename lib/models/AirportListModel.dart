import 'package:flutter/material.dart';

class AirportListModel{
  
  final String airportId;
  final String shortName;
  final String longName;

  AirportListModel({this.airportId, this.shortName, this.longName});

  @override
  String toString() => longName;

  @override
  operator ==(o) => o is AirportListModel && o.airportId == airportId;

  @override
  int get hashCode => airportId.hashCode^longName.hashCode^shortName.hashCode;
}


final List<AirportListModel> airportListDetails =[
 AirportListModel(
    airportId:"1",
    shortName:"SGN",
    longName:"Changi,Singapore"
  ),
  AirportListModel(
    airportId:"2",
    shortName:"JKF",
    longName:"New York City,USA"
  ),
   AirportListModel(
    airportId:"3",
    shortName:"MTL",
    longName:"Mattala,Sri Lanka"
  ),
   AirportListModel(
    airportId:"4",
    shortName:"CNB",
    longName:"Canbera,Australia"
  )
];