import 'package:flutter/material.dart';
import 'package:myapp1/models/flight_details.dart';
import 'package:myapp1/screens/Search_Flight/widgets/SearchedFlightData/widgets/arrived_flight_list.dart';
import 'package:myapp1/screens/Search_Flight/widgets/SearchedFlightData/widgets/flight_list.dart';
import 'package:myapp1/screens/Search_Flight/widgets/SearchedFlightData/widgets/search_flight_category_selector.dart';
import 'package:provider/provider.dart';

import '../../../../../app_state.dart';
import '../../../../side_screen_drawer.dart';
import '../../../../single_trip.dart';



class SearchFlightList extends StatefulWidget {
   final Function selectedIndexId;

  const SearchFlightList( {Key key, this.selectedIndexId}) : super(key: key);
  @override
  _SearchFlightListState createState() => _SearchFlightListState();
}

class _SearchFlightListState extends State<SearchFlightList> {

int _selectedIndex = 0;
  
//final SearchFlightListCategorySelector search_flight_category_selector;

 // _SearchFlightListState(this.search_flight_category_selector);

Widget createCategory() {

  return Container(
        height:70.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                       colors: [Colors.blueAccent,Colors.blue[600],Colors.blue[300]],
                    ),
                ),

       child:Padding(
         padding: const EdgeInsets.symmetric(horizontal:25),
         child: Row(children: <Widget>[
           categoryBadge(0,'Sheduled Flights',Icons.timer),
            SizedBox(width: 10.0),
           categoryBadge(1,'Arrived Flights',Icons.flight_land)

         ],),
       )

  );


    
  }


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
              createCategory(),
              

              Expanded(
               child: Container(
               height:500.0,
               
               decoration: BoxDecoration(

      
       
           
                   gradient: LinearGradient(
                     colors: [Colors.blue[200],Colors.blue[100],Colors.white70],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
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
                                      child: _selectedIndex == 1 ? FlightList(flight: flight) : ArrivedFlightList(flight: flight)
                                      )
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



  Widget categoryBadge(int index,String name,IconData iconName){

     final TextStyle categoryTextStyle = TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
      color: Color(0xFFFFFFFF),
    );

    final TextStyle selectedCategoryTextStyle = categoryTextStyle.copyWith(
      color: Colors.blue,
    );

    return GestureDetector(

              onTap:(){
                setState(() {
                  _selectedIndex = index;
                });
                //print(selectedIndexId());
                //SearchFlightList(selectedIndexId);
              },


        child: Container(

       // margin:const EdgeInsets.symmetric(horizontal: 12.0),
       // padding: EdgeInsets.symmetric(horizontal:6.0),
        alignment: Alignment.center,
        width:150,
        height: 55,

        decoration:BoxDecoration(
          
          border:Border.all(color: index == _selectedIndex ? Colors.white : Color(0x99FFFFFF),width:3),
          borderRadius:BorderRadius.all(Radius.circular(50.0)),
          color:index == _selectedIndex ? Colors.white :  Colors.transparent
        ),

        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
             Icon(
               iconName,
               color:index == _selectedIndex ? Theme.of(context).primaryColor : Colors.white,
               size:25.0
              ),

              SizedBox(height: 2.0),

              Text(
                name,
                style:index == _selectedIndex ? selectedCategoryTextStyle : categoryTextStyle
              )
          ],
        )
      ),

);

  
}
}