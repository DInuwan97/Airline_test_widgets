class OfferedTrips{
  String imageUrl;
  String name;
  String type;
  List<String> startTimes;
  int rating;
  int price;
  String city;
  String country;
  List offerItemId;

  OfferedTrips({
    this.offerItemId,
    this.imageUrl,
    this.name,
    this.type,
    this.startTimes,
    this.rating,
    this.price,
    this.city,
    this.country,
  });
}


final offer_01 = OfferedTrips(
    offerItemId:[0,1,2],
    imageUrl: 'assets/images/venice.jpg',
    name: 'Venice Park,Italy',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
    city:'Venice',
    country:'Italy'
);


final offer_02 = OfferedTrips(
    offerItemId:[0,1,2],
    imageUrl: 'assets/images/paris.jpg',
    name: 'Paris Aifel,France',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
    city:'Paris',
    country:'France'
);

final offer_03 = OfferedTrips(
    offerItemId:[0,1,2],
    imageUrl: 'assets/images/newdelhi.jpg',
    name: 'Akiyato,New Dhelhi, India',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
    city:'New Delhi',
    country:'India'
);

final sheduledOffers = [
  offer_01,
  offer_02,
  offer_03
];

