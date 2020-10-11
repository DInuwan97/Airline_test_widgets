import 'package:flutter/material.dart';
import 'package:myapp1/models/country_cities.dart';

class Country {
  final int countryId;
  final String name;
  final String flag;
  final String offices;
  final List<CityOffice> cityOffices;

  Country({this.countryId, this.name, this.flag, this.offices,this.cityOffices});

}



List<CityOffice> cityOffices_c1 = [
  CityOffice(
    officeId:0,
    name:'San Fran Sico',
    address:'Down Town,South,San Fran Sisco',
    openHours:['08:30 HH' , '17:30 HH'],
    contactNumber:'+498753210973',
    email:'ussfchq@aircroatia.lk'
  ),

  CityOffice(
    officeId:1,
    name:'Los Angelees',
    address:'456/B,NewYork,West Wing',
    openHours:['10:30 HH' , '15:30 HH'],
    contactNumber:'+498737683709',
    email:'uslosahq@aircroatia.lk'
  ),
];



final c1 = Country(
  countryId : 0,
  name:'United States',
  flag:'flags/us.png',
  offices:'San Fran Sico,Chicago,New York,Los Angeles',
  cityOffices:cityOffices_c1
);

final c2 = Country(
  countryId : 1,
  name:'Brazil',
  flag:'flags/to.png',
  offices:'Rio De Genairo,Sao Paulo',
  cityOffices:cityOffices_c1
);

final c3 = Country(
  countryId : 2,
  name:'Telesvania',
  flag:'flags/tl.png',
  offices:'Chnnayi,Mumbayi,Bombe'
);

final c4 = Country(
  countryId : 3,
  name:'Australia',
  flag:'flags/au.png',
  offices:'Melborne,Brisbane,Canbera,Perth'
);



final c5 = Country(
  countryId : 4,
  name:'Great Britain',
  flag:'flags/gb.png',
  offices:'Melborne,Brisbane,Canbera,Perth'
);



final countries = [
  c1,
  c2,
  c3,
  c4,
  c5
];