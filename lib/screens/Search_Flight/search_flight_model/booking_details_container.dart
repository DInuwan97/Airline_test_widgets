class BookingDetailContainer {
  final String bookingClass;
  final int noOfAdults,noOfChildren,noOfInfants;

  final List containerIds;

 BookingDetailContainer({ 
   this.bookingClass, 
   this.noOfAdults, 
   this.noOfChildren, 
   this.noOfInfants, 
   this.containerIds
  });

}

final bookingtSelectorContainer = BookingDetailContainer(
   bookingClass:"Economy",
   noOfAdults:1, 
   noOfChildren:0, 
   noOfInfants:0, 
   containerIds:[0,1]
);



final bookingDetail = [
  bookingtSelectorContainer 
];





  
