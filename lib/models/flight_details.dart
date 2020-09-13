class SheduledOnewayFlight {
  final String flightNum,originShort,destinationShort,originLong,destinationLong,arrivalTime,arrivalDate,depatureTime,departureDate,arrivalTerminal,arrivalGate,depatureTerminal,depatureGate;
  final List fligtItemId;

  SheduledOnewayFlight({
        this.fligtItemId,
        this.flightNum, 
        this.originShort, 
        this.destinationShort,
        this.originLong, 
        this.destinationLong,
        this.arrivalTime, 
        this.arrivalDate, 
        this.depatureTime,
        this.departureDate,
        this.arrivalTerminal, 
        this.arrivalGate, 
        this.depatureTerminal, 
        this.depatureGate
  });

}

final sheduledOnwayFlight1 = SheduledOnewayFlight(
  fligtItemId:[0,1,2],
  flightNum:"UL-3026",
  originShort:"CMB",
  destinationShort:"SFO",
  originLong:"Colombo,Sri Lanka",
  destinationLong:"San Frans Cisco,USA",
  arrivalTime:"23:30",
  arrivalDate:"Jul 20 MON",
  depatureTime:"08:30",
  departureDate:"Jul 20 MON",
  arrivalTerminal:"09",
  arrivalGate:"09-C/12",
  depatureTerminal:"06",
  depatureGate:"06-A/17"
);

final sheduledOnwayFlight2 = SheduledOnewayFlight(
  fligtItemId:[0,1,2],
  flightNum:"UL-309",
  originShort:"CMB",
  destinationShort:"SGN",
  originLong:"Colombo,Sri Lanka",
  destinationLong:"Changi,Singapore",
  arrivalTime:"07:30",
  arrivalDate:"Jul 21 TUE",
  depatureTime:"02:30",
  departureDate:"Jul 20 MON",
  arrivalTerminal:"07",
  arrivalGate:"07-A/8",
  depatureTerminal:"06",
  depatureGate:"06-B/9"
);


final sheduledOnwayFlight3 = SheduledOnewayFlight(
  fligtItemId:[0,1,2],
  flightNum:"UL-306",
  originShort:"SGN",
  destinationShort:"CNB",
  originLong:"Changi,Singapore",
  destinationLong:"Canbera,Australia",
  arrivalTime:"09:30",
  arrivalDate:"Jul 21 TUE",
  depatureTime:"02:30",
  departureDate:"Jul 20 MON",
  arrivalTerminal:"07",
  arrivalGate:"07-A/8",
  depatureTerminal:"06",
  depatureGate:"06-B/9"
);


final sheduledFlights = [
  sheduledOnwayFlight1,
  sheduledOnwayFlight2,
  sheduledOnwayFlight3

];

