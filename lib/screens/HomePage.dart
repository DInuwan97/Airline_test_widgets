import 'package:flutter/material.dart';

import './side_screen_drawer.dart';

class HomePage extends StatelessWidget {
  final PageStorageKey key;

  HomePage({this.key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
            title: Text('Home',
              style:TextStyle(
                fontSize:18
              )
            ),
            elevation: 0.0,
            flexibleSpace: Container(
            decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent,Colors.blue[600],Colors.blue[300]],
            ),
          ),
            )
          ),
      drawer: SideNavigationDrawer(),
    );
  }
}
