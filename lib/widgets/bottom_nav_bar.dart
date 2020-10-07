import 'package:flutter/material.dart';
import 'package:myapp1/screens/Flight_Book/flight_book.dart';
import 'package:myapp1/screens/HomeScreen/HomePage.dart';
import 'package:myapp1/screens/Search_Flight/search_flight.dart';
import 'package:myapp1/screens/sheduled_flight_list.dart';
import 'package:myapp1/screens/Offers/AirlineOffers.dart';

class BottomNavBar extends StatefulWidget {
  @override
  BottomNavBar({Key key}) : super(key: key);
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontFamily: "Oxygen",
  );

  final List<Widget> _widgetOptions = [
    HomePage(
      key: PageStorageKey('Homepage'),
    ),
    FlightSearch(
      key: PageStorageKey('Page1'),
    ),
    SheduledFlightsList(
      key: PageStorageKey('Page3'),
    ),
    AirlineOffers(
      key: PageStorageKey('Page2'),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(240, 245, 248, 1),
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home',
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Seach Flights',
                  style:
                      TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold)),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.airplanemode_active),
              title: Text('Flight Status',
                  style:
                      TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold)),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer),
              title: Text('Offers',
                  style:
                      TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold)),
            ),
          ],
          currentIndex: _selectedIndex,
         // backgroundColor: Colors.red,
          selectedItemColor: Colors.blue[900],
          onTap: _onItemTapped,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}
