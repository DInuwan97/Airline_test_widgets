import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';







class Inf1 extends StatefulWidget {
  @override
  _Inf1State createState() => _Inf1State();
}

class _Inf1State extends State<Inf1> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) => Drawer(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/inflight.jpg"), fit: BoxFit.cover),
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
                      margin: EdgeInsets.only(top: 5, bottom: 10, right: 20, left:80),
                      child: Text(
                        "Inflight Services",
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
                        "Services Details",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize:20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      
                    ),
                    
                    Divider(
                      color: Colors.black,
                      thickness: 0.35,
                      height: 1,
                    ),
                    ListTile(
                      onTap: () {},
                      
                      title: Text(
                        "On all Croatia Airlines flights our passengers are offered free food and beverages which vary depending on the class of travel, the flight duration and the part of the day.",
                        style: TextStyle(color: Colors.black,fontSize:15),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.food_bank,
                        color: Colors.black,
                      ),
                      
                      title: Text(
                        "Business Class",
                        style: TextStyle(color: Colors.black,fontSize:20,fontStyle: FontStyle.italic),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      
                      title: Text(
                        "On our domestic and international flights we serve snacks and a cold or a warm meal."
"The service depends on the time of day and the flight duration."
"A large selection of drinks is offered: juices, wine, beer, coffee, tea.",
                        style: TextStyle(color: Colors.black,fontSize:15),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.food_bank,
                        color: Colors.black,
                      ),
                      
                      title: Text(
                        "Economy Class",
                        style: TextStyle(color: Colors.black,fontSize:20,fontStyle: FontStyle.italic),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      
                      title: Text(
                        "On our international flights we serve different snacks, depending on the flight duration. You can choose something from our selection of beverages with your meal.",
                        style: TextStyle(color: Colors.black,fontSize:15),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.food_bank,
                        color: Colors.black,
                      ),
                      
                      title: Text(
                        "Special meals",
                        style: TextStyle(color: Colors.black,fontSize:20,fontStyle: FontStyle.italic),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      
                      title: Text(
                        "Special meals are offered on all flights in Business Class. You can order a special meal while purchasing your ticket but it has to be done at least 24 hour prior to the flight. Please contact your nearest Croatia Airlines office for more information.",
                        style: TextStyle(color: Colors.black,fontSize:15),
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


