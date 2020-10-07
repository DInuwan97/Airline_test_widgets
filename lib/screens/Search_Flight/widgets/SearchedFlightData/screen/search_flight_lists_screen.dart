import 'package:flutter/material.dart';
import 'package:myapp1/screens/Search_Flight/widgets/SearchedFlightData/widgets/flight_list.dart';
import 'package:myapp1/screens/Search_Flight/widgets/SearchedFlightData/widgets/search_flight_category_selector.dart';

import '../../../../side_screen_drawer.dart';

class SearchFlightList extends StatefulWidget {
  @override
  _SearchFlightListState createState() => _SearchFlightListState();
}

class _SearchFlightListState extends State<SearchFlightList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
            appBar: AppBar(
            title: Text('Search Data',
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
          child: Column(
            
            children: <Widget>[
              SearchFlightListCategorySelector(),

              Expanded(
               child: Container(
               height:500.0,
               
               decoration: BoxDecoration(

      
                  // image: new DecorationImage(
                  //   image: new ExactAssetImage('assets/images/sky01.jpeg'),
                  //   fit: BoxFit.cover,
                  //   colorFilter:ColorFilter.srgbToLinearGamma()
                  // ),
           
                   gradient: LinearGradient(
                    colors: [Colors.white,Colors.white70],
                    ),
    
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(40.0),
                   topRight: Radius.circular(40.0)
                 )

               ),

               child:Padding(
                 padding: const EdgeInsets.all(12.0),
                 child: Column(
                   children: <Widget>[
                     Expanded(
                       child:Container(
                         child:ListView.builder(
                           itemCount:2,
                           itemBuilder:(BuildContext context,int index){
                             return FlightList();
                           }
                         )
                       )
                     )
                   ],
                 ),
               )
   
             ),
              )
            ],
          ),
        ),
    );
  }
}