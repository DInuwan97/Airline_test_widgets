import 'package:flutter/material.dart';

import './side_screen_drawer.dart';

class HomePage extends StatelessWidget {
  final PageStorageKey key;

  HomePage({this.key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
      ),
      drawer: SideNavigationDrawer(),
    );
  }
}
