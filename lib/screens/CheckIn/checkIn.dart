import 'package:flutter/material.dart';
import '../side_screen_drawer.dart';
import '../Search_Flight/widgets/PassengerClassSelection/reusable_widget.dart';
import './DateConvertor.dart';
import './Widgets/checkInForm.dart';


class CheckIn extends StatefulWidget {
  final PageStorageKey key;

  CheckIn({this.key}) : super(key: key);
  @override
  _CheckInState createState() => _CheckInState();
}

class _CheckInState extends State<CheckIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Check In',
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
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent,Colors.blue[600],Colors.blue[300]],
            ),
        ),
        child: SingleChildScrollView(
            child: Container(
              height: 500.0,
              child: Column(
              children: [
                Container(
                  child: Image(
                    image: AssetImage('assets/images/banner2.jpg'),
                  ),
                ),
                checkInFormWidget()
              ],
          ),
            ),
        ),
      ),
    );
  }
}



