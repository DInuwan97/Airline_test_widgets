class OfferedTrips{
  String imageUrl;
  String name;
  String type;
  int rating;
  int price;
  String city;
  String country;
  List offerItemId;
  String travelClass;
  List<String> outBoundPeriod;
  String travelCompletionPeriod;
  String bookingDeadline;
  int maxPassengers;
  String itineraryChange;
  String cancellation;
  String minStay;
  String maxStay;
  String advancePurchase;

  OfferedTrips({
    this.offerItemId,
    this.imageUrl,
    this.name,
    this.type,
    this.rating,
    this.price,
    this.city,
    this.country,
    this.travelClass,
    this.outBoundPeriod,
    this.travelCompletionPeriod,
    this.bookingDeadline,
    this.maxPassengers,
    this.itineraryChange,
    this.cancellation,
    this.minStay,
    this.maxStay,
    this.advancePurchase
  });
}


final offer_01 = OfferedTrips(
    offerItemId:[0,1,2,3],
    imageUrl: 'assets/images/venice.jpg',
    name: 'Venice Park,Italy',
    type: 'Sigh tseeing Tour',
    rating: 5,
    price: 30,
    city:'Venice',
    country:'Italy',
    travelClass:'BUSINESS',
    outBoundPeriod:['05 Aug 2020','10 Oct 2020'],
    travelCompletionPeriod:'21 Apr 2021,Friday',
    bookingDeadline:'05 Oct 2021',
    maxPassengers:1,
    itineraryChange:'YES',
    cancellation:'NO',
    minStay:'O5 Days',
    maxStay:'06 Months',
    advancePurchase:'03 Days'

);


final offer_02 = OfferedTrips(
    offerItemId:[0,1,2,3],
    imageUrl: 'assets/images/paris.jpg',
    name: 'Paris Aifel,France',
    type: 'Sightseeing Tour',
    rating: 4,
    price: 210,
    city:'Paris',
    country:'France',
    travelClass:'ECONOMY',
    outBoundPeriod:['09 Sep 2020','17 Nov 2020'],
    travelCompletionPeriod:'04 May 2021,Wednesday',
    bookingDeadline:'17 Nov 2021',
    maxPassengers:2,
    itineraryChange:'NO',
    cancellation:'YES',
    minStay:'O7 Days',
    maxStay:'03 Months',
    advancePurchase:'05 Days'

);

final offer_03 = OfferedTrips(
    offerItemId:[0,1,2,3],
    imageUrl: 'assets/images/newdelhi.jpg',
    name: 'Akiyato,New Dhelhi, India',
    type: 'Sightseeing Tour',  
    rating: 3,
    price: 125,
    city:'New Delhi',
    country:'India',
    travelClass:'ECONOMY',
    outBoundPeriod:['22 Aug 2020','04 Oct 2020'],
    travelCompletionPeriod:'17 Mar 2021,Monday',
    bookingDeadline:'29 Aug 2021',
    maxPassengers:1,
    itineraryChange:'YES',
    cancellation:'YES',
    minStay:'04 Days',
    maxStay:'02 Months',
    advancePurchase:'03 Days'
);


final offer_04 = OfferedTrips(
    offerItemId:[0,1,2,3],
    imageUrl: 'assets/images/londonbridge.jpg',
    name: 'Bridge Town,London',
    type: 'Themes Tour',  
    rating: 3,
    price: 150,
    city:'London',
    country:'United Kingdom',
    travelClass:'ECONOMY',
    outBoundPeriod:['22 Aug 2020','04 Oct 2020'],
    travelCompletionPeriod:'17 Mar 2021,Monday',
    bookingDeadline:'29 Aug 2021',
    maxPassengers:1,
    itineraryChange:'YES',
    cancellation:'YES',
    minStay:'04 Days',
    maxStay:'02 Months',
    advancePurchase:'03 Days'
);

final sheduledOffers = [
  offer_04,
  offer_01,
  offer_02,
  offer_03
];

