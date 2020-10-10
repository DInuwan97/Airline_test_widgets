import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp1/widgets/bottom_nav_bar.dart';
import '../side_screen_drawer.dart';
import '../Search_Flight/widgets/PassengerClassSelection/reusable_widget.dart';
import '../Search_Flight/widgets/PassengerClassSelection/constants.dart';
import '../Search_Flight/widgets/PassengerClassSelection/radioButton.dart';
import '../Search_Flight/widgets/PassengerClassSelection/passengerRow.dart';
import '../Search_Flight/search_flight.dart';


CabinClassRadio rad = new CabinClassRadio();



PassengerRowItem ps1 = new PassengerRowItem(
  title: 'Adult',
  description: '+12 years old',
);

PassengerRowItem ps2 = new PassengerRowItem(
  title: 'Child',
  description: '2-11 years old',
);

PassengerRowItem ps3 = new PassengerRowItem(
  title: 'Infant',
  description: '1-23 months old',
);

FlightSearch fs = new FlightSearch();

class ClassSelector extends StatefulWidget {
  @override
  _ClassSelectorState createState() => _ClassSelectorState();
}

class _ClassSelectorState extends State<ClassSelector> {

  String classType = 'Economy';
  String bookType = 'Adult';
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class Selection',
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
          image: new DecorationImage(
          image: new ExactAssetImage(
              'assets/images/cloud6.jpeg'),
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(1), BlendMode.dstATop),
          ),
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0),
          child: Column(
            children: [
              Expanded(
                flex:7,
                child: ReusableGradientwidget(
                  gradient: [Colors.blue[300],Colors.blue[50]],
                  cardChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                          child: Text('Cabin Class',
                          style: kCabinClassTitleStyle,
                          ),
                        ),
                      ),
                      rad
                  ],
                  ),
                ),
              ),
              Expanded(
                flex:7,
                child: ReusableGradientwidget(
                  gradient: [Colors.blue[300],Colors.blue[50]],
                  cardChild: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Passengers',
                        style: kCabinClassTitleStyle
                        ),
                        ps1,
                        ps2,
                        ps3
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex:1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Text('CANCEL',
                       style: kCancelStyle
                      )
                    ),
                    GestureDetector(
                      onTap: (){
                        if(rad.data==CabinClass.Economy){
                          classType = 'Economy';
                        }else if(rad.data == CabinClass.PremiumEconomy){
                          classType = 'Premium Economy';
                        }else if(rad.data == CabinClass.Business){
                          classType = 'Business';
                        }else{
                          classType = 'First Class';
                        }
                        
                        Navigator.push(context,MaterialPageRoute(builder: (context){
                          fs.bookingCount = count.toString();
                          fs.bookingPerson = bookType;
                          fs.bookingType = classType;
                          return fs;
                        }));
                      },
                      child: Text('DONE',
                        style: kDoneStyle
                      ),
                    )
                  ],
                  ),
                )
            ],
          ),
        ),
      )
    );
  }
}

