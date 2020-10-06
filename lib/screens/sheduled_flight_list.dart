import 'package:flutter/material.dart';
import 'package:myapp1/models/flight_details.dart';
import 'package:myapp1/screens/side_screen_drawer.dart';
import 'package:myapp1/screens/single_trip.dart';
import 'package:myapp1/screens/top_home_screen.dart';
import 'package:provider/provider.dart';

import '../app_state.dart';

class SheduledFlightsList extends StatelessWidget {
  const SheduledFlightsList({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flight List', style: TextStyle(fontSize: 15.0)),
        ),
        drawer: SideNavigationDrawer(),
        body: ChangeNotifierProvider<AppState>(
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
                                      child: TopHomeScreen(flight: flight))
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

            // child:ListView.builder(
            //   itemCount: sheduledFlights.length,
            //   itemBuilder:(BuildContext cotext,int index){
            //       return ListTile(
            //         title:TopHomeScreen()
            //       );
            //   }
            // )
            ));
  }
}
