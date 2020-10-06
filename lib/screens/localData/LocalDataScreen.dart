import 'package:flutter/material.dart';

import './ContactMore.dart';
import './DocumentData.dart';
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
                  fontWeight: FontWeight.bold,
                ),
              ),
              bottom: TabBar(tabs: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Personal Data',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Document',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: FittedBox(
                    child: Text(
                      'Contact & More',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ]),
            ),
            body: TabBarView(children: [
              PersonalData(),
              DocumentData(),
              ContactAndMore(),
            ]),
          ),
        ),
      ],
    );
  }
}
