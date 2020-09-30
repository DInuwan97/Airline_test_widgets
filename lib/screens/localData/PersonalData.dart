import 'package:flutter/material.dart';

class PersonalData extends StatefulWidget {
  @override
  _PersonalDataState createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> {
  String _titleField;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: [
        //       Colors.blue[100],
        //       Colors.green[50],
        //     ],
        //     begin: Alignment.topCenter,
        //     end: Alignment.bottomCenter,
        //     tileMode: TileMode.clamp,
        //   ),
        // ),
        child: Form(
          child: ListView(
            children: [
              DropdownButtonFormField(
                style: TextStyle(
                  color: Colors.indigo[600],
                  fontWeight: FontWeight.bold,
                ),
                autovalidate: true,
                elevation: 4,
                value: _titleField,
                onChanged: (val) {
                  setState(() {
                    _titleField = val;
                  });
                },
                autofocus: false,
                dropdownColor: Colors.blue[50],
                iconEnabledColor: Colors.blue[800],
                decoration: InputDecoration(
                  fillColor: Colors.blue[900],
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelStyle: TextStyle(
                    color: Colors.blue[900],
                    fontWeight: FontWeight.bold,
                  ),
                  hintText: 'Select your name title',
                  hintStyle: TextStyle(
                    color: Colors.blue[300],
                    fontWeight: FontWeight.bold,
                  ),
                  labelText: 'TITLE',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue[900],
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                items: [
                  DropdownMenuItem(
                    child: Text('option1'),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text('option2'),
                    value: 2,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                autocorrect: true,
                style: TextStyle(
                  color: Colors.blue[600],
                  fontWeight: FontWeight.bold,
                ),
                autovalidate: true,
                decoration: InputDecoration(
                  fillColor: Colors.blue[900],
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelStyle: TextStyle(
                    color: Colors.blue[900],
                    fontWeight: FontWeight.bold,
                  ),
                  hintText: 'Enter your first name',
                  hintStyle: TextStyle(
                    color: Colors.blue[300],
                    fontWeight: FontWeight.bold,
                  ),
                  labelText: 'FIRSTNAME',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue[900],
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                autocorrect: true,
                style: TextStyle(
                  color: Colors.blue[600],
                  fontWeight: FontWeight.bold,
                ),
                autovalidate: true,
                decoration: InputDecoration(
                  
                  fillColor: Colors.blue[900],
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelStyle: TextStyle(
                    color: Colors.blue[900],
                    fontWeight: FontWeight.bold,
                  ),
                  hintText: 'Enter your first name',
                  hintStyle: TextStyle(
                    color: Colors.blue[300],
                    fontWeight: FontWeight.bold,
                  ),
                  labelText: 'FIRSTNAME',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue[900],
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ));
  }
}
