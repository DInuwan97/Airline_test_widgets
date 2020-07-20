import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myapp1/screens/Search_Flight/search_flight_model/airport_list.dart';
import 'package:myapp1/screens/Search_Flight/search_flight_model/booking_details_container.dart';
import 'package:myapp1/screens/Search_Flight/search_flight_model/one_Way_search.dart';
import 'package:myapp1/screens/Search_Flight/search_flight_model/search_category.dart';
import 'package:myapp1/screens/Search_Flight/search_flight_model/search_flight_container_data.dart';
import 'package:myapp1/screens/Search_Flight/search_flight_model/two_way_selector_date.dart';
import 'package:myapp1/screens/Search_Flight/widgets/OneWay/ariport_selectore_dropdown.dart';
import 'package:myapp1/screens/Search_Flight/widgets/search_flight_categories.dart';
import 'package:provider/provider.dart';

import '../../app_state.dart';
import '../side_screen_drawer.dart';
import 'background_ui/search_flight_background.dart';

  

class FlightSearch extends StatelessWidget {
const FlightSearch({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {


print("The key is $key");
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
            title: Text('Search Flight',
              style:TextStyle(
                fontSize:18
              )
            ),
            elevation: 0.0,
          ),

          drawer: SideNavigationDrawer(),

          backgroundColor:Colors.blue[900],
          body:ChangeNotifierProvider<AppState>(
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

                        //         Padding(
                        //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        //   child: Row(
                        //    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: <Widget>[
                        //         Text(
                        //           'How are you booking ? ',
                        //            style:fadedTextStyle
                        //         ),
                        //         Spacer(),
                                  
                        //         Icon(
                        //           Icons.radio_button_checked,
                        //           color:Color(0x99FFFFFF),
                        //           size:30
                        //         )
                        //     ],
                        //     ),
                        // ),

                        
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


                          // SingleChildScrollView(
                          //   child:Column(
                          //     children: <Widget>[
                                
                          //     ],
                          //   )
                          // ),

                          Padding(
                          padding:const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Consumer<AppState>(
                            builder:(context, appState,_) =>  Column(
                             
                              children: <Widget>[
                                
                                      for(final aiports in airportDetail.where((e) =>  e.containerIds.contains(appState.selectedCategoryId))) 
                                       GestureDetector(
                                          onTap:(){},
                                          child:_airpotDetailsContainer(context)
                                       ),

                                       GestureDetector(
                                        child: _dateResevation(context,appState)
                                       ),

                                      for(final bookingclasses in bookingDetail.where((e) =>  e.containerIds.contains(appState.selectedCategoryId))) 
                                       GestureDetector(   
                                          onTap:(){},                                
                                          child:_bookingClassReservation(context)                                        
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
          )

    );
  }



Widget _airpotDetailsContainer(BuildContext context){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal:8.0),
    child: Column(
      children: <Widget>[
      SizedBox(height:50),
      Container(
                        
        alignment: Alignment.center,
        width:MediaQuery.of(context).size.width * 0.9,
        height:130.0,
        decoration: BoxDecoration(
          color:Colors.grey[200].withOpacity(0.85),
          borderRadius: BorderRadius.all(
          Radius.circular(8)
        ),

        ),

        child:Column(
          children: <Widget>[
            
              Row(
                children: <Widget>[
           
                    OneWayAirportSelector(placeWhere:"From",airportShort:airportListDetails[1].shortName,airportLong:"Colombo,Sri Lanka"),
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
        width:MediaQuery.of(context).size.width * 0.9,
        height:80.0,
        decoration: BoxDecoration(
          color:Colors.green[200].withOpacity(0.85),
          borderRadius: BorderRadius.all(
          Radius.circular(8)
        ),

        ),

        child:Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
             // child:OneWayAirportSelector()
            )
            
          ],
        )
              
      )
    ],
    ),
  );
}


Widget _dateResevation(context,appState){
 return Padding(
    padding: const EdgeInsets.symmetric(horizontal:8.0),
    child: Column(
      children: <Widget>[
      SizedBox(height:10),
      Container(
                        
        alignment: Alignment.center,
        width:MediaQuery.of(context).size.width * 0.9,
        height:90.0,
        decoration: BoxDecoration(
          color:Colors.orange.withOpacity(0.85),
          borderRadius: BorderRadius.all(
          Radius.circular(8)
        ),

        ),

        child:Column(
          children: <Widget>[
            
            Row(
              children: <Widget>[


                for(final oneWayDate in oneWayDepartureDetail.where((e) =>  e.containerIds.contains(appState.selectedCategoryId))) 
                Column(
                  children: <Widget>[
                    // OneWayAirportSelector()
                  ],
                ),


                for(final oneWayDate in twoWayDepartureDetail.where((e) =>  e.containerIds.contains(appState.selectedCategoryId))) 
                Column(
                  children: <Widget>[
                    // OneWayAirportSelector()
                  ],
                )


              ],
            )

             
            
            
          ],
        )
              
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

      

Transform.rotate(
  angle: 45,
  child: IconButton(
    icon: Icon(
      Icons.flight,
       color:Colors.blue[900],
      size:35
    ),
    onPressed: null,
  ),
  
)

    ]

  );
}