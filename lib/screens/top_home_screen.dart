import 'package:flutter/material.dart';
import 'package:myapp1/models/flight_details.dart';

class TopHomeScreen extends StatelessWidget {

  final SheduledOnewayFlight flight;

  const TopHomeScreen({Key key, this.flight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(height:20.0),
        Padding(
          padding:EdgeInsets.symmetric(horizontal: 0),
          child: Container(
            alignment: Alignment.center,
            width:MediaQuery.of(context).size.width * 0.95,
            height:190.0,
            decoration: BoxDecoration(
              color:Colors.orange,
              borderRadius: BorderRadius.all(
                Radius.circular(14)
              )
            ),

            child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.start,
                children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                          SizedBox(width:10.0),
                         _iconDestination(),
                          SizedBox(width:10.0),
                         _originAndDestination(),
                          Spacer(),
                          
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal:16.0),
                           child: _originAndDestinationIcon(),
                         )
                      ],
                    ),
                ],
           
            )
            
          ),
        )
      ],
    );
  }
Widget _originAndDestinationIcon(){
  return Column(
    crossAxisAlignment:CrossAxisAlignment.center,
    mainAxisAlignment:MainAxisAlignment.spaceBetween,
    children: <Widget>[

     _flightOntimeArrivedStatus(),
      Text(flight.destinationShort,
      textAlign:TextAlign.center,
        style:TextStyle(fontSize:25)
      ),
      SizedBox(height:1.0),


      Icon(Icons.swap_vert,
        color:Colors.black,
        size:40
      ),


      Text(flight.originShort,
        textAlign:TextAlign.center,
        style:TextStyle(
          fontSize:25,
         
        
        )
      ),
      _flighDelayedTimeStatus()

    ],
  );
}

Widget _originAndDestination(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment:MainAxisAlignment.spaceBetween,
    children: <Widget>[
      RichText(
        text:TextSpan(
          children: <TextSpan>[

            TextSpan(
              text:"Destination \n",
              
              style:TextStyle(
                color:Colors.black,
                fontSize: 14
              )
              
            ),

            TextSpan(
              text:flight.destinationLong,
              style:TextStyle(
                fontSize:17,
                color:Colors.black
              )
            )
          ]
        )
      ),
      Text("Seduled : 10:12 AM",
        style:TextStyle(
          fontSize:10,
          fontWeight:FontWeight.bold
        )
      ),
      Text("Actual : 10:12 AM",
        style:TextStyle(
          fontSize:10,
          fontWeight:FontWeight.bold
        )
      ),
  


      SizedBox(height:45.0),

        

      RichText(
        
        text:TextSpan(

          
          children: <TextSpan>[
           

          

            TextSpan(
              
            
              text:"Origin \n",

              style:TextStyle(
                color:Colors.black,
                fontSize: 14,
               
              )
              
            ),

            

            TextSpan(
              text:flight.originLong,
              style:TextStyle(
                fontSize:17,
                color:Colors.black
              )
            )
          ]
        )
      ),

      Text("Seduled : 10:12 AM",
        style:TextStyle(
          fontSize:10,
          fontWeight:FontWeight.bold
        )
      ),
      
      Text("Actual : 10:12 AM",
        style:TextStyle(
          fontSize:10,
          fontWeight:FontWeight.bold
        )
      ),

      


    ],
  );
}

Widget _iconDestination(){
  return Container(
    child:Column(
      children: <Widget>[
        Icon(
          Icons.airplanemode_active,
          size:30
        ),

        SizedBox(height:5.0),
         Icon(
          Icons.fiber_manual_record,
          color:Colors.black,
          size:8.0
        ),

        SizedBox(height:5.0),
         Icon(
          Icons.fiber_manual_record,
          color:Colors.black,
          size:8.0
        ),
        
        SizedBox(height:5.0),
         Icon(
          Icons.fiber_manual_record,
          color:Colors.black,
          size:8.0
        ),
        SizedBox(height:5.0),
         Icon(
          Icons.fiber_manual_record,
          color:Colors.black,
          size:8.0
        ),
          SizedBox(height:5.0),
         Icon(
          Icons.fiber_manual_record,
          color:Colors.black,
          size:8.0
        ),
          SizedBox(height:5.0),
         Icon(
          Icons.fiber_manual_record,
          color:Colors.black,
          size:8.0
        ),
        SizedBox(height:5.0),
         Icon(
          Icons.fiber_manual_record,
          color:Colors.black,
          size:8.0
        ),
     
    
        SizedBox(height:5.0),
        Icon(
          Icons.location_on,
          color:Colors.black,
          size:30.0
        )
      ],
    )
  );
}


Widget _flightOntimeArrivedStatus(){
  return Container(
     padding:EdgeInsets.symmetric(horizontal:5.0,vertical:4.0),
    decoration:BoxDecoration(
      color:Colors.green[900],
        borderRadius: BorderRadius.all(
          Radius.circular(20.0)
        )
    ),

    child: Row(
      children: <Widget>[
          Text(
            "OnTime",
            style:TextStyle(
              color:Colors.white,
              fontSize: 10.0,
              fontWeight:FontWeight.bold
            )
          )
      ],
    )
  );
}



Widget _flighDelayedTimeStatus(){
  return Container(
     padding:EdgeInsets.symmetric(horizontal:5.0,vertical:4.0),
    decoration:BoxDecoration(
      color:Colors.red[900],
        borderRadius: BorderRadius.all(
          Radius.circular(20.0)
        )
    ),

    child: Row(
      children: <Widget>[
          Text(
            "Delayed",
            style:TextStyle(
              color:Colors.white,
              fontSize: 10.0,
              fontWeight:FontWeight.bold
            )
          )
      ],
    )
  );
}



}

