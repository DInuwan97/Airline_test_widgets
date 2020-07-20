class AirportDetailContainer {
  final String originShort,destinationShort,originLong,destinationLong,departureDate,arrivalDate,bookingClass;
  final int noOfAdults,noOfChildren,noOfInfants;

  final List containerIds;

 AirportDetailContainer({
   this.originShort, 
   this.destinationShort, 
   this.originLong, 
   this.destinationLong, 
   this.departureDate, 
   this.arrivalDate, 
   this.bookingClass, 
   this.noOfAdults, 
   this.noOfChildren, 
   this.noOfInfants, 
   this.containerIds
  });

}

final airportSelectorContainer = AirportDetailContainer(
   originShort:"CMB", 
   destinationShort:"", 
   originLong:"Colombo,Sri Lanka", 
   destinationLong:"", 
   departureDate:"Jul 20 MON", 
   arrivalDate:"",
   bookingClass:"Economy",
   noOfAdults:1, 
   noOfChildren:0, 
   noOfInfants:0, 
   containerIds:[0,1]
);



final airportDetail = [
  airportSelectorContainer,
  
];





  
