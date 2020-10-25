import 'package:flutter/material.dart';
import 'package:myapp1/models/flight_details.dart';

class ArrivedFlightList extends StatelessWidget {
  final SheduledOnewayFlight flight;

  const ArrivedFlightList({Key key, this.flight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(height: 20.0),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.95,
              height: 190.0,
              decoration: BoxDecoration(
                   gradient: LinearGradient(
                                                colors: [Colors.blueAccent,Colors.blue[300]],
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter,
                    tileMode: TileMode.clamp,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(14))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: 10.0),
                      _iconDestination(),
                      SizedBox(width: 10.0),
                      _originAndDestination(),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: _originAndDestinationIcon(),
                      )
                    ],
                  ),
                ],
              )),
        )
      ],
    );
  }

  Widget _originAndDestinationIcon() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        //_flightOntimeArrivedStatus(),
        Text(flight.destinationShort,
            textAlign: TextAlign.center, 
            style: TextStyle(
              fontSize: 25,
              color:Colors.white,
              fontWeight: FontWeight.bold
              )
            ),
        SizedBox(height: 25.0),
        Icon(Icons.swap_vert, color: Colors.white, size: 40),
         SizedBox(height: 25.0),
        Text(flight.originShort,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              color:Colors.white,
              fontWeight: FontWeight.bold
            )),
        //_flighDelayedTimeStatus()
      ],
    );
  }

  Widget _originAndDestination() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        RichText(
            text: TextSpan(children: <TextSpan>[
          TextSpan(
              text: "Destination \n",
              style: TextStyle(color: Colors.white, fontSize: 14,fontWeight: FontWeight.bold)),
          TextSpan(
              text: flight.destinationLong,
              style: TextStyle(fontSize: 17, color: Colors.white,fontWeight: FontWeight.bold))
        ]
        )
        ),

        
      _onSheduledBadge('On Seduled : 01:12 PM'),
      

        SizedBox(height: 30.0),
       // _onSheduledBadge(),
         SizedBox(height: 30.0),
        RichText(
            text: TextSpan(children: <TextSpan>[
          TextSpan(
              text: "Origin \n",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold
              )),
          TextSpan(
              text: flight.originLong,
              style: TextStyle(fontSize: 17, color: Colors.white,fontWeight: FontWeight.bold))
        ])),
        _onSheduledBadge('On Seduled : 05:32 PM'),
        // Text("Actual : 10:12 AM",
        //     style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _iconDestination() {
    return Container(
        child: Column(
      children: <Widget>[
        Icon(Icons.airplanemode_active, size: 30,color:Colors.white),
        SizedBox(height: 5.0),
        Icon(Icons.fiber_manual_record, color: Colors.white, size: 8.0),
        SizedBox(height: 5.0),
        Icon(Icons.fiber_manual_record, color: Colors.white, size: 8.0),
        SizedBox(height: 5.0),
        Icon(Icons.fiber_manual_record, color: Colors.white, size: 8.0),
        SizedBox(height: 5.0),
        Icon(Icons.fiber_manual_record, color: Colors.white, size: 8.0),
        SizedBox(height: 5.0),
        Icon(Icons.fiber_manual_record, color: Colors.white, size: 8.0),
        SizedBox(height: 5.0),
        Icon(Icons.fiber_manual_record, color: Colors.white, size: 8.0),
        SizedBox(height: 5.0),
        Icon(Icons.fiber_manual_record, color: Colors.white, size: 8.0),
        SizedBox(height: 5.0),
        Icon(Icons.location_on, color: Colors.white, size: 30.0)
      ],
    ));
  }

  Widget _flightOntimeArrivedStatus() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 4.0),
        decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        child: Row(
          children: <Widget>[
            Text("OnTime",
                style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold))
          ],
        ));
  }

  Widget _flighDelayedTimeStatus() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 4.0),
        decoration: BoxDecoration(
            color: Colors.red[400],
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        child: Row(
          children: <Widget>[
            Text("Delayed",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold))
          ],
        ));
  }




    Widget _onSheduledBadge(String day) {
    return Container(
        //padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
        child: Row(
          children: <Widget>[
            Icon(Icons.check_circle, color: Colors.greenAccent[400],size:16),
            Text(day,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 11.5,
                    fontWeight: FontWeight.bold))
          ],
        )
    );
  }
}