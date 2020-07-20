import 'package:flutter/material.dart';
import 'package:myapp1/screens/Search_Flight/search_flight.dart';
import 'package:myapp1/screens/Search_Flight/search_flight_model/airport_list.dart';
import 'package:myapp1/screens/Search_Flight/widgets/OneWay/ariport_selectore_dropdown.dart';
import 'package:myapp1/widgets/bottom_nav_bar.dart';

class Airports extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


     


    return Scaffold(
      
      
      // body:SafeArea(
      //   child:ListView.builder(
      //     itemCount: airportListDetails.length,
      //     itemBuilder:(BuildContext context,int index){
      //       return ListTile(
      //         title:Text(
      //           airportListDetails[index].shortName
      //         ),
      //         subtitle:Text(
      //           airportListDetails[index].longName
      //         ),
      //          onTap: (){
      //           // Navigator.push(context,
      //           //   new MaterialPageRoute(
      //           //     builder: (context) => BottomNavBar(
      //           //       key:PageStorageKey(
      //           //         FlightSearch(
      //           //           key:PageStorageKey('Page3')
      //           //         )
      //           //       )
      //           //     )
                    
      //           //   )
      //           // );

      //             Navigator.of(context).push(MaterialPageRoute(
      //                                    builder:(context) => FlightSearch(
                                           
      //                                    )
      //                                  )
      //             );
      //         }

      //       );
      //     }
      //   )
      // ),


    );
  }
}