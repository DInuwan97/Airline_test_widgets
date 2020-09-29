import 'package:flutter/material.dart';

class PersonalData extends StatefulWidget {
  @override
  _PersonalDataState createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      // decoration: BoxDecoration(
      //   gradient: LinearGradient(
      //     colors: [Colors.cyan[50], Colors.cyan[100]],
      //     begin: Alignment.topLeft,
      //     end: Alignment.bottomRight,
      //     tileMode: TileMode.clamp,
      //   ),
      // ),
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.red),
          child: Text('data'),
        ),
      ),
    );
  }
}
