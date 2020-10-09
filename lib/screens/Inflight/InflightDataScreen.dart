import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import 'Inf1.dart';
import 'Inf2.dart';






class InflightDataScreen extends StatefulWidget {
  @override
  _InflightDataScreenState createState() => _InflightDataScreenState();
}

class _InflightDataScreenState extends State<InflightDataScreen> {
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
            padding: EdgeInsets.only(top: 50, left: 20, right: 20,bottom:150),
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 10, right: 50, left:80),
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
                    
                    Card(
                      color: Colors.blue[900],
                      margin: EdgeInsets.only(top: 25, bottom: 80, right: 20, left:20),
                      child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Inf1()
                        ),
                        );
                      },
                      title: Text(
                        "Meals",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:20,
                        ),
                      ),
                      leading: Icon(
                        Icons.food_bank,
                        color: Colors.white,
                      ),
                    ),
                    ),
                    
                    
                    Card(
                      color: Colors.blue[900],
                      margin: EdgeInsets.only(top: 25, bottom: 80, right: 20, left:20),
                      child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Inf1()
                        ),
                        );
                      },
                      title: Text(
                        "Beverages",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:20,
                        ),
                      ),
                      leading: Icon(
                        Icons.food_bank,
                        color: Colors.white,
                      ),
                    ),
                    ),
                    Card(
                      color: Colors.blue[900],
                      margin: EdgeInsets.only(top: 25, bottom: 80, right: 20, left:20),
                      child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Inf2()
                        ),
                        );
                        
                      },
                      title: Text(
                        "Inflight Services",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:20,
                        ),
                      ),
                      leading: Icon(
                        Icons.inbox_outlined,
                        color: Colors.white,
                      ),
                    ),
                    ),
                    Card(
                      color: Colors.blue[900],
                      margin: EdgeInsets.only(top: 25, bottom: 80, right: 20, left:20),
                      child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Inf2()
                        ),
                        );
                      },
                      title: Text(
                        "Others",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:20,
                        ),
                      ),
                      leading: Icon(
                        Icons.inbox_outlined,
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


