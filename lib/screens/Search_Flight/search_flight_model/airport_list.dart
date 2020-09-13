class AirportList{
  
  final int airportId;
  final String shortName;
  final String longName;

  AirportList({this.airportId, this.shortName, this.longName});
}


final List<AirportList> airportListDetails =[
  AirportList(
    airportId:1,
    shortName:"SGN",
    longName:"Changi,Singapore"
  ),
  AirportList(
    airportId:2,
    shortName:"JKF",
    longName:"New York City,USA"
  ),
  AirportList(
    airportId:2,
    shortName:"CHN",
    longName:"Chennai,India"
  ),
  AirportList(
    airportId:2,
    shortName:"MTL",
    longName:"Mattala,Sri Lanka"
  )
];