import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';







class City1 extends StatefulWidget {
  @override
  _City1State createState() => _City1State();
}

class _City1State extends State<City1> {
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
                        "Contact Details",
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
                        "Melbourne",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:20,
                        ),
                      ),
                      leading: Icon(
                        Icons.airplanemode_active,
                        color: Colors.white,
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
                        "City : Melbourne ",
                        style: TextStyle(color: Colors.white,fontSize:15),
                      ),
                    ),
                    
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.flight_takeoff,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Office : Melbourne City Office",
                        style: TextStyle(color: Colors.white,fontSize:15),
                      ),
                    ),
                    
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      title: Text(
                        "+61 3 7010 5678",
                        style: TextStyle(color: Colors.white,fontSize:15),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.book,
                        color: Colors.white,
                      ),
                      title: Text(
                        "+61 3 7010 5678",
                        style: TextStyle(color: Colors.white,fontSize:15),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      title: Text(
                        "airnorth.com.au",
                        style: TextStyle(color: Colors.white,fontSize:15),
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


