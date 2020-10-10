import 'package:flutter/material.dart';
import 'package:myapp1/screens/Payment/Payment.dart';
import '../side_screen_drawer.dart';
import '../Search_Flight/widgets/PassengerClassSelection/constants.dart';
import './DateConvertor.dart';

DateConversion dc = new DateConversion();

class BoardingPass extends StatelessWidget {

  BoardingPass(this.firstname,this.lastname);

  final String firstname;
  final String lastname;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boarding Pass',
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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('FLIGHT',
                      style: kBoardingTitleStyle,
                      ),
                      Text('OU4457',
                      style: kBoardingValueStyle,
                      )
                  ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('DATE',
                      style: kBoardingTitleStyle,
                      ),
                      Text(dc.getDate(),
                      style: kBoardingValueStyle,
                    )
                    ],
                  )
                ],
              ),
              Divider(color: Colors.blue[900],),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text('BRUSSELS',
                        style: kBoardingTitleStyle,
                        ),
                        Text('BRU',
                        style: kBoardingCityStyle,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:47.0),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: 80.0,
                          maxHeight:80.0
                        ),
                        child: Image(
                          image: AssetImage('assets/images/plane.png'),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text('ZAGREB',
                        style: kBoardingTitleStyle,
                        ),
                        Text('ZAG',
                        style: kBoardingCityStyle,)
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text('BOARDING',
                        style:kBoardingTitleStyle
                        ),
                        Text('20:00',
                        style: kBoardingValueStyle,
                        ),
                        Text(dc.getDayMonth(),
                        style: kBoardingValueStyle,)
                      ],
                    ),
                    Column(
                      children: [
                        Text('TERMINAL',
                        style: kBoardingTitleStyle,
                        ),
                        Text('3',
                        style: kBoardingValueStyle,)
                      ],
                    ),
                    Column(
                      children: [
                         Text('GATE',
                        style: kBoardingTitleStyle,
                        ),
                        Text('A10',
                        style: kBoardingValueStyle,)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text('CABIN',
                        style: kBoardingTitleStyle,
                        ),
                        Text('ECONOMY',
                        style: kBoardingValueStyle,)
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('PASSENGER',
                        style: kBoardingTitleStyle,
                        ),
                        Text(firstname+' '+lastname,
                        style: kBoardingValueStyle,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('SEAT',
                          style: kBoardingTitleStyle,
                          ),
                          Text('15F',
                          style: kBoardingValueStyle,
                          )
                        ],),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: 150.0,
                    maxWidth: 150.0),
                  child: Image(
                    image: AssetImage('assets/images/qrcode.jpg'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: Container(
                  height: 50.0,
                  margin: EdgeInsets.symmetric(horizontal:25.0),
                  child: RaisedButton(
                    elevation: 10.0,
                    onPressed: (){
                        Navigator.push(
                                                context,
                                                MaterialPageRoute(
    	                                            builder: (context) => Payment()
                                                  //TermsSelectionPage()
                                                )
                                              );
                    },
                    child: Text('PAY',
                    style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}