import 'package:flutter/material.dart';

void main() {
  List<String> notes = [
    "Afghanistan",
    "Argentina",
    "Australia",
    "Austria",
    "Bangladesh",
    "Belarus",
    "Belgium",
    "Bolivia",
    "Brazil",
    "Bulgaria",
    "Canada",
    "China",
    "Croatia",
    "Cuba",
    "Denmark",
    "Egypt",
    "Fiji",
    "Finland",
    "France",
    "Germany",
    "Greenland",
    "Hong Kong",
    "Hungary",
    "Iceland",
    "India",
    "Japan",
    "Kenya",
    "Malaysia",
    "Netherlands",
    "Oman",
    "Portugal",
    "Russian Federation",
    
    
  ];

  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
      ),
      body: Container(
        color: Colors.white10,
        padding: EdgeInsets.all(20.0),
        child: ContactDetails1(notes)
      ),
    ),
  ));
}

class ContactDetails1 extends StatelessWidget {
  final List<String> notes;

  ContactDetails1(this.notes);

  @override
  Widget build(BuildContext context) {
    //TODO build ListView here
    return ListView.builder(
      itemCount: notes.length,
      itemBuilder: (context, pos) {
        return Padding(
          padding: EdgeInsets.only(bottom: 16.0),
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
              child: Text(notes[pos], style: TextStyle(
                fontSize: 18.0,
                height: 1.6,
              ),),
            ),
          
          )
        );
      },
    );
  }
}