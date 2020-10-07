import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'City2.dart';





class Country2 extends StatefulWidget {
  @override
  _Country2State createState() => _Country2State();
}

class _Country2State extends State<Country2> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) => Drawer(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/contact.jpg"), fit: BoxFit.cover),
            gradient: LinearGradient(
              colors: [Colors.lightBlue, Colors.blue[900]],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              tileMode: TileMode.clamp,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 10, right: 50, left:120),
                      child: Text(
                        "Contact Us",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize:35
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 35, bottom: 10),
                      child: Text(
                        "C",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        
                      },
                      title: Text(
                        "Croatia",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:20,
                        ),
                      ),
                      leading: Icon(
                        Icons.flag,
                        color: Colors.white,
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
                          builder: (context) => City2()
                        ),
                        );
                      },
                      leading: Icon(
                        Icons.flight_takeoff,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Dubrovnik",
                        style: TextStyle(color: Colors.white,fontSize:15),
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
                        "Franjo Tuđman",
                        style: TextStyle(color: Colors.white,fontSize:15),
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
                        "Split",
                        style: TextStyle(color: Colors.white,fontSize:15),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 0.35,
                      height: 1,
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


