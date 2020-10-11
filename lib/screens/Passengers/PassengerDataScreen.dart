import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Pas1.dart';
import 'Pas2.dart';
import 'Pas3.dart';
import 'Pas4.dart';






class PassengerDataScreen extends StatefulWidget {
  @override
  _PassengerDataScreenState createState() => _PassengerDataScreenState();
}

class _PassengerDataScreenState extends State<PassengerDataScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) => Drawer(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/passenger1.jpg"), fit: BoxFit.cover),
            gradient: LinearGradient(
              colors: [Colors.lightBlue, Colors.blue[900]],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              tileMode: TileMode.clamp,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 50, left: 20, right: 20,bottom:150),
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 10, right: 50, left:120),
                      child: Text(
                        "Passengers",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize:35
                        ),
                      ),
                    ),
                    
                    Card(
                      color: Colors.lightBlue[200],
                      margin: EdgeInsets.only(top: 25, bottom: 80, right: 20, left:20),
                      child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Pas1()
                        ),
                        );
                      },
                      title: Text(
                        "Disabled Persons",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize:20,
                        ),
                      ),
                      leading: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    ),
                    
                    
                    Card(
                      color: Colors.lightBlue[200],
                      margin: EdgeInsets.only(top: 25, bottom: 80, right: 20, left:20),
                      child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Pas2()
                        ),
                        );
                        
                      },
                      title: Text(
                        "Pregnant Women",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize:20,
                        ),
                      ),
                      leading: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    ),
                    Card(
                      color: Colors.lightBlue[200],
                      margin: EdgeInsets.only(top: 25, bottom: 80, right: 20, left:20),
                      child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Pas3()
                        ),
                        );
                      },
                      title: Text(
                        "Children",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize:20,
                        ),
                      ),
                      leading: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    ),
                    Card(
                      color: Colors.lightBlue[200],
                      margin: EdgeInsets.only(top: 25, bottom: 80, right: 20, left:20),
                      child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Pas4()
                        ),
                        );
                      },
                      title: Text(
                        "Others",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize:20,
                        ),
                      ),
                      leading: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    ),
                    

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


