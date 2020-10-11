import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../side_screen_drawer.dart';
import '../Search_Flight/widgets/PassengerClassSelection/reusable_widget.dart';
import './passengerDetails.dart';

class TermsSelectionPage extends StatefulWidget {
  TermsSelectionPage({this.firstName});
  String firstName;

  @override
  _TermsSelectionPageState createState() => _TermsSelectionPageState();
}

class _TermsSelectionPageState extends State<TermsSelectionPage> {

  bool checkedBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passenger Selection',
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
      body:Container(
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
              Container(
                height: 470.0,
                child: ListView(
                  children: [
                    Container(
                      height: 180.0,
                      child: ReusableGradientwidget(
                        gradient: [Colors.blue[300],Colors.blue[50]],
                        cardChild: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30.0, 20.0, 0.0, 10.0),
                              child: Text('All Passengers',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30.0, 10.0, 20.0, 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('1. Adult',
                                  style: TextStyle(
                                    fontSize: 18.0
                                  ),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context)=> PassengerDetailPage()
                                      ),
                                    );
                                    },
                                    child: Text(
                                      widget.firstName != null ? widget.firstName : 'Add',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold ,
                                      color: Colors.blue[900]
                                      ),
                                    ),
                                  )
                                ],)
                            ),
                            Divider(
                              color: Colors.blue[900],
                              indent: 20.0,
                              endIndent: 20.0,
                              )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 350.0,
                      child: ReusableGradientwidget(
                        gradient: [Colors.blue[300],Colors.blue[50]],
                        cardChild: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  new Transform.scale(
                                    scale: 2.0,
                                    child: Checkbox(
                                      value: checkedBoxValue,
                                      onChanged: (bool value){
                                        print(value);
                                        setState(() {
                                          checkedBoxValue=value;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(width: 50.0),
                                  Flexible(
                                    child: Text('I have read, understood and accept the Croatian Airlines Privacy Policy Terms.\n\nI confirm that all passenger details are correct and that at least one adult is 18 years old or above.\n\nPassenger details and email address cannot be edited once I submit this page.\nPlease confrim by checking the box.',
                                    style: TextStyle(
                                      fontSize: 13.0
                                    ),
                                  )
                                  )
                                ],
                              ),
                              Divider(
                              color: Colors.blue[900],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                                child: Text('View Privacy policy >',
                                style: TextStyle(
                                  color: Colors.blue[900],
                                  fontWeight: FontWeight.bold
                                ),
                                textAlign: TextAlign.justify,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
              // Expanded(
              //   child: ReusableGradientwidget(
              //     gradient: [Colors.blue[300],Colors.blue[50]],
              //   ),
              // ),
              // Expanded(
              //   child: ReusableGradientwidget(
              //     gradient: [Colors.blue[300],Colors.blue[50]],
              //   ),
              // )
              
            ],
          ),
        ),
      )
    );
  }
}