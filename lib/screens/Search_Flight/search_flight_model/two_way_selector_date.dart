class ReturnDateContainer {
  final String departureDate,arrivalDate;
  
  final List containerIds;

  ReturnDateContainer({
   this.departureDate, 
   this.arrivalDate,
   this.containerIds
  });

}

final twoWayDateSelectorContainer = ReturnDateContainer(
   departureDate:"Jul 20 MON", 
   arrivalDate:"",
   containerIds:[1]
);



final twoWayDepartureDetail = [
  twoWayDateSelectorContainer,
];