class DepartureDateContainer {
  final String departureDate;
  
  final List containerIds;

  DepartureDateContainer({
   this.departureDate, 
   this.containerIds
  });

}

final oneWayDateSelectorContainer = DepartureDateContainer(
   departureDate:"Jul 20 MON", 
   containerIds:[0,1]
);



final oneWayDepartureDetail = [
  oneWayDateSelectorContainer,
];





  
