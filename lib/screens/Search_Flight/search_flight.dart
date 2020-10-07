import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myapp1/screens/Search_Flight/search_flight_model/airport_list.dart';
import 'package:myapp1/screens/Search_Flight/search_flight_model/booking_details_container.dart';
import 'package:myapp1/screens/Search_Flight/search_flight_model/one_Way_search.dart';
import 'package:myapp1/screens/Search_Flight/search_flight_model/search_category.dart';
import 'package:myapp1/screens/Search_Flight/search_flight_model/search_flight_container_data.dart';
import 'package:myapp1/screens/Search_Flight/search_flight_model/two_way_selector_date.dart';
import 'package:myapp1/screens/Search_Flight/widgets/CalenderPopup/calender_pop_up.dart';
import 'package:myapp1/screens/Search_Flight/widgets/OneWay/ariport_selectore_dropdown.dart';
import 'package:myapp1/screens/Search_Flight/widgets/PassengerClassSelection/PassengersClassSelection.dart';
import 'package:myapp1/screens/Search_Flight/widgets/SearchedFlightData/screen/search_flight_lists_screen.dart';
import 'package:myapp1/screens/Search_Flight/widgets/search_flight_categories.dart';
import 'package:provider/provider.dart';

import '../../app_state.dart';
import '../side_screen_drawer.dart';
import 'background_ui/search_flight_background.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_rounded_date_picker/rounded_picker.dart';

import 'package:myapp1/screens/Search_Flight/search_flight_model/search_category.dart';

class FlightSearch extends StatelessWidget {
    


final Category category;   
const FlightSearch({Key key, this.category}) : super(key: key);


  @override
  Widget build(BuildContext context) {



final TextStyle fadedTextStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
  color: Color(0x99FFFFFF),
); 


final TextStyle whiteHeadingTextStyle = TextStyle(
  fontSize: 35.0,
  fontWeight: FontWeight.bold,
  color: Color(0xFFFFFFFF),
);



    return Scaffold(
          appBar: AppBar(
            title: Text('Search Flights',
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
            height:MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.lightBlue, Colors.blue[900],Colors.blue[800],Colors.blueAccent,Colors.blue[500]],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.clamp,
            ),
          ),

                child: ChangeNotifierProvider<AppState>(
                create:(_) => AppState(),
                child:Stack(
                  children: <Widget>[
                    SearchFlightBackground(screenHeight:MediaQuery.of(context).size.height * 0.6),

                    SafeArea(
                       child:SingleChildScrollView(
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[

         
                          
                          Padding(
                            //padding: EdgeInsets.symmetric(vertical:24.0,horizontal:MediaQuery.of(context).size.height * 0.04),
                             padding: EdgeInsets.symmetric(vertical:0.0,horizontal:10),
                            child: Consumer<AppState>(
                              builder:(context,appState,_)=>

                               SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                
                                child:Row(
                                 
                                  children: <Widget>[
                                      //SizedBox(width:MediaQuery.of(context).size.height * 0.5),
                                      for(final category in categories) SearchFlightCategory(category:category)
                                  ],
                                )
                               ),


                            ),
                          ),


                            Padding(
                            padding:const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Consumer<AppState>(
                              builder:(context, appState,_) =>  Column(
                               
                                children: <Widget>[
                                  
                                       
                                         GestureDetector(
                                            onTap:(){
                                              print(appState.selectedCategoryId);
                                            },
                                            child:_airpotDetailsContainer(context)
                                         ),


                                         GestureDetector(
                                          child: (appState.selectedCategoryId == 0) ? _oneDateResevation(context,appState) : _twoDateResevation(context,appState)
                                         ),


                                         GestureDetector(   
                                            onTap:(){},                                
                                            child:_bookingClassReservation(context)                                        
                                         ),



                                      Padding(
                                        padding:EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height * 0.04,horizontal:MediaQuery.of(context).size.width * 0.025),
                                        child: Row(
                                          
                                          children: <Widget>[
                                          
                                                 Column(
                                                  
                                                  children: <Widget>[ 
                                                     _resetButton(Icons.restore,context,"Reset")
                                                   ],
                                                 ),

                                                 
                                                  Spacer(),
                                                  
                                                 Column(
                                                   children: <Widget>[
                                                     _resetButton(Icons.search,context,"Search")
                                                   ],
                                                 )


                                          ],
                                        ),
                                      )
                                     
                                    
                                ],
                              ),
                                                  
                            ),
                          )
                          
                        ]
                       )
                     )
                    )
                  ]
                )
            ),
          )

    );
  }



Widget _airpotDetailsContainer(BuildContext context){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal:5.0),
    child: Column(
      children: <Widget>[
      SizedBox(height:50),
      Container(
                        
        alignment: Alignment.center,
        width:MediaQuery.of(context).size.width * 0.9,
        height:125.0,

          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white70,Colors.white],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              tileMode: TileMode.clamp,
            ),
            borderRadius: BorderRadius.all(
                Radius.circular(20)
            ),
          ),

        child:Column(
          children: <Widget>[
            
              Row(
                children: <Widget>[
           
                    OneWayAirportSelector(placeWhere:"From",airportShort:"CMB",airportLong:"Colombo,Sri Lanka"),
                    Spacer(),
                    _flightRouteConection(),
                    Spacer(),
                    OneWayAirportSelector(placeWhere:"To",airportShort:"SGN",airportLong:"Changi,Singapore")
                  ],
               // )
              
              )
              //child:OneWayAirportSelector()
            
            
          ],
        )
              
      )
    ],
    ),
  );
}



Widget _bookingClassReservation(BuildContext context){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal:8.0),
    child: Column(
      children: <Widget>[
      SizedBox(height:10),
      Container(
                        
        alignment: Alignment.center,
        width:MediaQuery.of(context).size.width,
        height:80.0,
        decoration: BoxDecoration(
           color:Colors.grey[200],
          borderRadius: BorderRadius.all(
          Radius.circular(20)
        ),

        ),

        

        child:Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
             // child:OneWayAirportSelector()
             child:PassengersClassSelection()
            )
            
          ],
        )
              
      )
    ],
    ),
  );
}


Widget _oneDateResevation(context,appState){
 return Padding(
    padding: const EdgeInsets.symmetric(horizontal:8.0),
    child: Column(
      children: <Widget>[
      SizedBox(height:10),
      Container(


        child:_onewaydate(context,appState),

                   
        alignment: Alignment.center,
        width:MediaQuery.of(context).size.width * 0.9,
        height:100.0,




            decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white60,Colors.white70],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
             // tileMode: TileMode.clamp,
            ),
               borderRadius: BorderRadius.all(
            Radius.circular(20)  
          ),
          ),


              
      )
    ],
    ),
  );
}




Widget _twoDateResevation(context,appState){
 return Padding(
    padding: const EdgeInsets.symmetric(horizontal:8.0),
    child: Column(
      children: <Widget>[
      SizedBox(height:10),
      Container(


        child:_twowaydate(context,appState),

                   
        alignment: Alignment.center,
        width:MediaQuery.of(context).size.width * 0.9,
        height:100.0,



          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white,Colors.white70,Colors.white60],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              tileMode: TileMode.clamp,
            ),
            borderRadius: BorderRadius.all(
                Radius.circular(20)  
            ),
          ),


              
      )
    ],
    ),
  );
}

}



Widget _flightRouteConection(){
  return Column(
//SizedBox(height:10.0),
    children: <Widget>[
      
      

Container(
  child:   Transform.rotate(
  
    angle: 45,
  
    child: IconButton(
  
      icon: Icon(
  
        Icons.flight,
  
         color:Colors.blue[900],
  
        size:40
  
      ),
  
      onPressed: null,
  
    ),
  
    
  
  ),
)

    ]

  );

}


Widget _onewaydate(context,appState){
  return Row(
    mainAxisAlignment:MainAxisAlignment.center,
    children: <Widget>[
      Container(
        padding:EdgeInsets.symmetric(horizontal:0, vertical:MediaQuery.of(context).size.height * 0.009),
        child:Column(
          children: <Widget>[
          
          
         Text(
              'Departure Date',
              style:TextStyle(
                fontSize:13.5,
                fontWeight:FontWeight.bold,
                fontFamily:'Arial'
              )
            ),

            CalenderPopUp()

          ],
        )
      )
    ]
  );
}




Widget _twowaydate(context,appState){
  return Row(
    mainAxisAlignment:MainAxisAlignment.center,
    children: <Widget>[
      Container(
        padding:EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height * 0.009),
        child:Column(
          children: <Widget>[
           
         Text(
              'Departure Date',
              style:TextStyle(
                fontSize:13.5,
                fontWeight:FontWeight.bold,
                fontFamily:'Arial'
              )
            ),

            CalenderPopUp()

          ],
        )
      ),


      SizedBox(width:MediaQuery.of(context).size.width * 0.25),

      Container(
        padding:EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height * 0.009),
        child:Column(
          children: <Widget>[
            
         Text(
              'Arrival Date',
              style:TextStyle(
                fontSize:13.5,
                fontWeight:FontWeight.bold,
                fontFamily:'Arial'
              )
            ),

             CalenderPopUp()

          ],
        )
      )


    ]
  );
}


Widget _resetButton(IconData iconName,context,String btnName){
       return RaisedButton(
            onPressed: () {
              if(btnName == 'Search'){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
    	                builder: (context) => SearchFlightList()
                    )
                  );                                        
              }
            },
                padding:EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width * 0.0005,vertical:8),

                            child: Padding(
                              padding:EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width * 0.05,vertical:2),
                              child: Column(
                                children: <Widget>[

                                  Row(
                                    children: <Widget>[

                                     Icon(
                                      iconName,
                                      size:30
                                     ),

                                     SizedBox(width:5),
                                     
                                     Text(
                                      btnName, 
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight:FontWeight.bold,
                                      )
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                              elevation:10.0,
                              color: Colors.blue[900],
                              splashColor: Colors.blue[200],
                              animationDuration: Duration(seconds: 2),
                              colorBrightness: Brightness.dark,

                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(25),
                                side: BorderSide(color: Colors.blue[600]),
                              )

                             );
}