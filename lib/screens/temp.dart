
import 'dart:math';

import 'package:flutter/material.dart';

class SingleTrip extends StatefulWidget {
  @override
  _SingleTripState createState() => _SingleTripState();
}

class _SingleTripState extends State<SingleTrip> {

Color firstColor = Colors.blue[900];
Color secondColor = Color(0xFF0D47A9);
Color thirdColor = Color(0xFF0D47B9);
Color fourthColor = Color(0xFF0D47C9);

  @override
  Widget build(BuildContext context) {
       return Column(
      
      
      children: <Widget>[

  SizedBox(height:10.0),
         
        Stack(
          children: <Widget>[
          
              ClipPath(
               
                
                child: Container(
                  
                padding:EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
              width:MediaQuery.of(context).size.width*0.9,
              height:430.0,
              
                decoration: BoxDecoration(
              
                  image: new DecorationImage(
                  image: new ExactAssetImage('assets/images/airline_horizontal.png'),
                  fit: BoxFit.contain,
                  
                  alignment:Alignment.topCenter
                ),
                gradient: LinearGradient(
                  colors:[ 
                    firstColor,
                    secondColor,
                    thirdColor,
                    fourthColor,
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(14)
                ),
               // border:Border.all(width: 2.0, color: Colors.black )
              ),

              
              
              child:Column(

                 
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                     SizedBox(height:MediaQuery.of(context).size.width*0.25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: <Widget>[
                            //SizedBox(width:90.0),
                            _airlineDetails(),
                            Spacer(),
                            _airlineLogos(),
                                 
                        ],
                      ),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _onSheduledBadge(),
                        ],
                      ),


                      SizedBox(height:10.0),

                      Row(
                        children: <Widget>[
                          _origin(),
                          Spacer(),
                          SizedBox(height:40.0),
                          _flightRouteConection(),
                          Spacer(),
                          _destination(),     
                        ],
                      ),


                       SizedBox(height:10.0),

                      Row(
                        children: <Widget>[
                          _sheduledTimeDate("08:30","20 July MON",Icons.flight_takeoff),
                          Spacer(),
                          _sheduledTimeDate("23:30","20 July MON",Icons.flight_land)
                        ],
                      )



                      
                  ],
             
              )
              
            ),
              )

    
          ]
        ),
        
      ],
    );
  }
}

Widget _airlineDetails(){
  return Column(
    crossAxisAlignment:CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,

    children: <Widget>[

    SizedBox(height:10.0),
      Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(

                  text:"Sri Lankan Airlines \n",                  
                  style:TextStyle(
                    color:Colors.white,
                    fontSize: 14,
                    fontFamily: 'Oxygen',
                    fontWeight:FontWeight.bold,   
                  ),
                  
                ),

                TextSpan(

                  text:"UL - 306 \n",  
                  style:TextStyle(
                    color:Colors.white,
                    fontSize: 12,
                    fontFamily: 'Oxygen',
                    fontWeight:FontWeight.bold, 
                  )

                )
              ]
            )
          ),
          
        ],


      )
    ],
  );
}


Widget _airlineLogos(){
  return Column(
    children: <Widget>[
      Container(
        
        height:20.0, 
        width:20.0,
        //color:Colors.white,
        child:Image.asset(
          "assets/images/logo_small.png",
          fit:BoxFit.fitWidth,
         
        ),
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.white, spreadRadius: 6),
            ],
          )
      )
    ],
  );
}


Widget _onSheduledBadge(){
   return Container(
     padding:EdgeInsets.symmetric(horizontal:5.0,vertical:4.0),
    decoration:BoxDecoration(
      color:Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20.0)
        )
    ),

    child: Row(
      children: <Widget>[

        Icon(
          Icons.check_circle,
          color:Colors.greenAccent[400]
        ),
          Text(
            "On Sheduled",
            style:TextStyle(
              color:Colors.blue[900],
              fontSize: 13.0,
              fontWeight:FontWeight.bold
            )
          )
      ],
    )
  );
}


Widget _origin(){
  return Column(
   // crossAxisAlignment:CrossAxisAlignment.start,
    //mainAxisAlignment:MainAxisAlignment.spaceBetween,
    children: <Widget>[

      Text("CMB",
      textAlign:TextAlign.center,
          style:TextStyle(
          fontSize:25,
          color:Colors.white,
          fontWeight:FontWeight.bold
        )
      ),

      Text(
        "Colombo,Sri Lanka",
        style:TextStyle(
          color:Colors.white,
          fontFamily:'Oxygen',
          fontSize:10.0,
          fontWeight:FontWeight.bold
        )
      )
    ],
  );
}



Widget _destination(){
  return Column(
    //crossAxisAlignment:CrossAxisAlignment.start,
   // mainAxisAlignment:MainAxisAlignment.spaceBetween,
    children: <Widget>[

      Text("SFO",
      textAlign:TextAlign.center,
        style:TextStyle(
          fontSize:25,
          color:Colors.white,
          fontWeight:FontWeight.bold
        )
      ),

          Text(
        "San Fran Sisco,USA",
         textAlign:TextAlign.center,
        style:TextStyle(
          color:Colors.white,
          fontFamily:'Oxygen',
          fontSize:10.0,
          fontWeight:FontWeight.bold
        )
      )
    ],
  );
}


Widget _sheduledTimeDate(String time,String date,IconData iconName){
  return Column(
    crossAxisAlignment:CrossAxisAlignment.center,
    children: <Widget>[

      Padding(
        padding: const EdgeInsets.symmetric(horizontal:12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


          Icon(
            iconName,
            size:16.0,
            color:Colors.white
          ),

          SizedBox(width:5.0),

        Text(
        time,
          textAlign:TextAlign.center,
          style:TextStyle(
            color:Colors.white,
            fontFamily:'Oxygen',
            fontSize:15.0,
            fontWeight:FontWeight.bold
          )
        ),
          ],
        ),
      ),
      
     Text(
        date,
        textAlign:TextAlign.center,
        style:TextStyle(
          color:Colors.white,
          fontFamily:'Oxygen',
          fontSize:13.0,
          fontWeight:FontWeight.bold
        )
      )
    ],
  );
}





Widget _flightRouteConection(){
  return Column(
//SizedBox(height:10.0),
    children: <Widget>[

      

Transform.rotate(
  angle: 90 * pi / 180,
  child: IconButton(
    icon: Icon(
      Icons.flight,
      color: Colors.white,
      size:35
    ),
    onPressed: null,
  ),
),
     
      
    ],
  );
}