import 'package:flutter/material.dart';

import './ContactMore.dart';
import './Document.dart';
import './PersonalData.dart';

class LocalDataScreen extends StatefulWidget {
  @override
  _LocalDataScreenState createState() => _LocalDataScreenState();
}

class _LocalDataScreenState extends State<LocalDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(),
        ),
        DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                'Edit Your Local Data',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              actions: [
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
              bottom: TabBar(tabs: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text('Personal Data'),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text('Document'),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: FittedBox(
                    child: Text('Contact & More'),
                  ),
                )
              ]),
            ),
            body: TabBarView(children: [
              PersonalData(),
              Document(),
              ContactAndMore(),
            ]),
          ),
        ),
      ],
    );
  }
}
