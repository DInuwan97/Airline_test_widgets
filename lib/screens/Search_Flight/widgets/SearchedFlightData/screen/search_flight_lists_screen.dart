import 'package:flutter/material.dart';
import 'package:myapp1/models/flight_details.dart';
import 'package:myapp1/screens/Search_Flight/widgets/SearchedFlightData/widgets/flight_list.dart';
import 'package:myapp1/screens/Search_Flight/widgets/SearchedFlightData/widgets/search_flight_category_selector.dart';
import 'package:provider/provider.dart';

import '../../../../../app_state.dart';
import '../../../../side_screen_drawer.dart';
import '../../../../single_trip.dart';

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
                 padding: const EdgeInsets.all(1.0),
                  child: ChangeNotifierProvider<AppState>(
            create: (_) => AppState(),
            child: Stack(
              children: <Widget>[
                SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Consumer<AppState>(
                            builder: (context, appState, _) => Column(
                              children: <Widget>[
                                for (final flight in sheduledFlights.where(
                                    (e) => e.fligtItemId
                                        .contains(appState.selectedCategoryId)))
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                SingleTrip(flight: flight),
                                          ),
                                        );
                                      },
                                      child: FlightList(flight: flight))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )

    
            )



                 
               )
   
             ),
              )
            ],
          ),
        ),
    );
  }
}