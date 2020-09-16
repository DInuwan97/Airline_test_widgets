class OfferedTrips{
  String imageUrl;
  String name;
  String type;
  List<String> startTimes;
  int rating;
  int price;

  OfferedTrips({
    this.imageUrl,
    this.name,
    this.type,
    this.startTimes,
    this.rating,
    this.price,
  });
}

List<OfferedTrips> offeredTrips = [

   OfferedTrips(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
   ),
   OfferedTrips(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'Gonadola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
   ),
   OfferedTrips(
    imageUrl: 'assets/images/murano.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
   )

];