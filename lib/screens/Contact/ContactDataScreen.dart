import 'package:flutter/material.dart';
//import 'package:flag/flag.dart';

import 'Country1.dart';
import 'Country2.dart';
import 'Country3.dart';





class ContactDataScreen extends StatefulWidget {
  @override
  _ContactDataScreenState createState() => _ContactDataScreenState();
}

class _ContactDataScreenState extends State<ContactDataScreen> {
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
                        "A",
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
                        "Afghanistan",
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
                      onTap: () {},
                      leading: Icon(
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Argentina",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                          builder: (context) => Country1()
                        ),
                        );
                      },
                      leading: Icon(
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Australia",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Austria",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                        "B",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize:20,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Bangladesh",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Belarus",
                        style: TextStyle(color: Colors.white,fontSize:20),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 0.35,
                      height: 1,
                    ),
                    
					
                    Divider(
                      color: Colors.white,
                      thickness: 0.35,
                      height: 1,
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Belgium",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Bolivia",
                        style: TextStyle(color: Colors.white,fontSize:20),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 0.35,
                      height: 1,
                    ),
                    
                    Divider(
                      color: Colors.white,
                      thickness: 0.35,
                      height: 1,
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Brazil",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Bulgaria",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                      onTap: () {},
                      leading: Icon(
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Canada",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "China",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                          builder: (context) => Country2()
                        ),
                        );
                      },
                      leading: Icon(
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Croatia",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Cuba",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                        "D",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Denmark",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                        "E",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Egypt",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                        "F",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Fiji",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Finland",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "France",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                        "G",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                       Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Germany",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Greenland",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                        "H",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Hong Kong",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Hungary",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                        "I",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Iceland",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                          builder: (context) => Country3()
                        ),
                        );
                      },
                      leading: Icon(
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "India",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                        "J",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Japan",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                        "K",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Kenya",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                        "M",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Malaysia",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                        "N",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Netherlands",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                        "O",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Oman",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                        "P",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Portugal",
                        style: TextStyle(color: Colors.white,fontSize:20),
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
                        "R",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.flag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Russian Federation",
                        style: TextStyle(color: Colors.white,fontSize:20),
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


