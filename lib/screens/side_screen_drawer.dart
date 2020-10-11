import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp1/screens/ContryList/country_list.dart';

import 'Contact/ContactDataScreen.dart';
import './localData/LocalDataScreen.dart';


void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: SideNavigationDrawer(),
  ));
}

class SideNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) => Drawer(
        child: Container(
             decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent,Colors.blue[600],Colors.blue[300]],
            ),

            //  image: DecorationImage(
            //   image: AssetImage('./assets/images/cloud1.jpg'),
            //   colorFilter: new ColorFilter.mode(
            //       Colors.black.withOpacity(0.2), BlendMode.dstATop),
            //   fit: BoxFit.cover,
            //  )





          ),
          child: Padding(
            padding: EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 10),
                      child: Text(
                        "INFO AND SERVICES",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.airplanemode_active,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Book a Flight",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 0.35,
                      height: 1,
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Timetable",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 0.35,
                      height: 1,
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.work,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Baggage",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 0.35,
                      height: 1,
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.airline_seat_recline_extra,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Passengers",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 0.35,
                      height: 1,
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.flight_takeoff,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Inflight Services",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 0.35,
                      height: 1,
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.restore,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Flight Status",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 0.35,
                      height: 1,
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => CountryList() ,
                          ),
                        );
                      },
                      leading: Icon(
                        Icons.account_balance,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Offices",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
					
                    Divider(
                      color: Colors.white,
                      thickness: 0.35,
                      height: 1,
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Contact Center",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 0.35,
                      height: 1,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 35, bottom: 10),
                      child: Text(
                        "GENERAL",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Settings",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 0.35,
                      height: 1,
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => LocalDataScreen(),
                          ),
                        );
                      },
                      leading: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Local Data",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 0.35,
                      height: 1,
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.info_outline,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Legal Information",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 0.35,
                      height: 1,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 45,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            FontAwesomeIcons.facebookSquare,
                            color: Colors.white,
                          ),
                          Icon(
                            FontAwesomeIcons.instagramSquare,
                            color: Colors.white,
                          ),
                          Icon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.white,
                          ),
                          Icon(
                            FontAwesomeIcons.twitterSquare,
                            color: Colors.white,
                          ),
                          Icon(
                            FontAwesomeIcons.youtubeSquare,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


