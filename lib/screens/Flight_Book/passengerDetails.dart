import 'package:flutter/material.dart';
import 'package:myapp1/screens/Search_Flight/widgets/PassengerClassSelection/reusable_widget.dart';
import '../side_screen_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Search_Flight/widgets/PassengerClassSelection/constants.dart';
import '../Search_Flight/widgets/PassengerForm/myCustomFormWidget.dart';

class PassengerDetailPage extends StatefulWidget {
  @override
  _PassengerDetailPageState createState() => _PassengerDetailPageState();
}

class _PassengerDetailPageState extends State<PassengerDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passenger Detail',
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
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: new DecorationImage(
          image: new ExactAssetImage(
              'assets/images/cloud6.jpeg'),
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
          ),
        ),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.fileInvoiceDollar),
                        SizedBox(width: 5.0,),
                        Text('Total fare',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                      ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('1 Adult',
                          style: TextStyle(
                            fontSize: 18.0
                          ),),
                        Text('HRK 690.50',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 0.6,
                indent: 8.0,
                endIndent: 8.0,
                color: Colors.blue[800],
              ),
              MyCustomForm()
            ],
          ),
        ),
      ),
    );
  }
}

