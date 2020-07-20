import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myapp1/models/flight_details.dart';
import 'package:myapp1/screens/side_screen_drawer.dart';
import 'package:myapp1/shapes/custome_shape_clipper.dart';
import 'package:provider/provider.dart';

  Color firstColor = Colors.blue[900];
  Color secondColor = Color(0xFF0D47A9);
  Color thirdColor = Color(0xFF0D47B9);
  Color fourthColor = Color(0xFF0D47C9);


class SingleTrip extends StatelessWidget {
   final SheduledOnewayFlight flight;

  const SingleTrip({Key key, this.flight}) : super(key: key);



  
 


  @override
  Widget build(BuildContext context) {

      return Scaffold(

        
      appBar: AppBar(
        title:Text(flight.originShort +" to " +flight.destinationShort,
          style:TextStyle(
            fontSize:15.0
          )
        ),

      ),
      drawer: SideNavigationDrawer(),

        body:Provider<SheduledOnewayFlight>.value(
          value:flight,
          child:Stack(
            //fit:StackFit.expand,

              children: <Widget>[
                SafeArea(
                  child:ListView(
      
    children: <Widget>[
      SizedBox(height:20.0),

      Column(
        children: <Widget>[
         // ClipPath(



             Container(

              
               alignment: Alignment.topCenter,
                width:MediaQuery.of(context).size.width * 0.95,
                height:570.0,
                decoration: BoxDecoration(
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
                  )
                ),


                child:Column(


                  children: <Widget>[



                ClipPath(
                    clipper: CustomeShapeClipper(),
                    child: Container(

                    alignment: Alignment.topCenter,
                    width:MediaQuery.of(context).size.width * 0.95,
                    height:170.0,
                    decoration: BoxDecoration(
                      color:Colors.deepPurple[900],
                      borderRadius: BorderRadius.all(
                        Radius.circular(14)
                      )
                    ),

                    child:Container(
                      margin:EdgeInsets.all(10),
                      alignment: Alignment.topCenter,
                      width:MediaQuery.of(context).size.width * 0.95,
                      height:120.0,

                        decoration: BoxDecoration(
                          image: new DecorationImage(
                            image: new ExactAssetImage('assets/images/airline_horizontal.png'),
                            fit: BoxFit.contain,
                            alignment:Alignment.topCenter
                          ) 

                      ),

                      child:Column(
                        //crossAxisAlignment:CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Column(children: <Widget>[
                             Container(
                               alignment: Alignment.topRight,
                               child:_oneWorldLogo(),
                             )
                          ],)
                      ],
                      )

                    )
                  )
                ),



                 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:12.0),
                child: Column(

                   
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                       SizedBox(height:1),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,

                          children: <Widget>[
                             
                              _airlineDetails(),
                              Spacer(),
                             
                             // SizedBox(width:18.0),
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

                        Container(
                          child:Column(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.center,
                                width:MediaQuery.of(context).size.width * 0.95,
                                height:170.0,
                                  decoration: BoxDecoration(
                                    color:Colors.grey[300],
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(14)
                                    )
                                  ),


                                child:Padding(
                                  padding: const EdgeInsets.symmetric(horizontal:8.0,vertical:3.0),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                            _origin(),
                                            Spacer(),
                                          
                                           _flightRouteConection(),

                                            Spacer(),
                                            _destination(),     
                                      ],
                                      ),

                                      SizedBox(height:10.0),

                                      Row(
                                        children: <Widget>[
                                         _sheduledTimeDate(flight.depatureTime,flight.departureDate,Icons.flight_takeoff),
                                          Spacer(),
                                          _sheduledTimeDate(flight.arrivalTime,flight.arrivalDate,Icons.flight_land)
                                        ],
                                      ),

                                      SizedBox(height:8.0),

                                      Divider(
                                        color:Colors.blue[900],
                                         thickness: 3,
                                          //indent: 200,
                                      ),

                                      Row(
                                        children: <Widget>[
                                            _renderIcons(flight.depatureTerminal,flight.depatureGate),
                                            Spacer(),
                                            _renderIcons(flight.arrivalTerminal,flight.arrivalGate)
                                        ],
                                      ),

                                        Divider(
                                        color:Colors.blue[900],
                                         thickness: 3,
                                        // endIndent: 200,
                                      ),
                                    ],
                                  ),
                                ),
   
                              )
                            ],
                          )
                        ),
                      
                                SizedBox(height:10.0),

                                  Text(
                                    'Book Flight Now',
                                    style:TextStyle(
                                      fontSize:20.0,
                                      color:Colors.white,
                                      fontWeight:FontWeight.bold
                                    )
                                  ),

                                  SizedBox(height:10.0),
                   
                              RaisedButton(
                              onPressed: () {},
                              padding:EdgeInsets.symmetric(
                                horizontal:MediaQuery.of(context).size.width * 0.18,
                                vertical:8
                              ),
                              child: const Text(
                                'LKR 97,500/=', 
                                style: TextStyle(
                                  fontSize: 30,
                                  
                                )
                              ),
                              elevation:10.0,
                              color: Colors.deepPurple[900],
                              splashColor: Colors.blue[200],
                              animationDuration: Duration(seconds: 2),
                              colorBrightness: Brightness.dark,

                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(8.0),
                                side: BorderSide(color: Colors.deepPurple[900]),
                              )

                             ),
                                           
                    ],       
                ),
              )

              ],
             )
            ),       
        ],
      ),
    ],
  
                  )
                )
              ],
          )
        )

      );

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

                  text:flight.flightNum,  
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

Widget _oneWorldLogo(){
  return Column(
    children: <Widget>[
      Container(
        
        height:30.0, 
        width:30.0,
        //color:Colors.white,
        child:Image.asset(
          "assets/images/one_world2.png",
          fit:BoxFit.fitWidth,
         
        ),
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            //color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.white, spreadRadius: 2),
            ],
          )
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

      Text(flight.originShort,
      textAlign:TextAlign.center,
          style:TextStyle(
          fontSize:25,
          color:Colors.blue[900],
          fontWeight:FontWeight.bold
        )
      ),

      Text(
        flight.originLong,
        style:TextStyle(
          color:Colors.blue[900],
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

      Text(flight.destinationShort,
      textAlign:TextAlign.center,
        style:TextStyle(
          fontSize:25,
          color:Colors.blue[900],
          fontWeight:FontWeight.bold
        )
      ),

          Text(
        flight.destinationLong,
         textAlign:TextAlign.center,
        style:TextStyle(
           color:Colors.blue[900],
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
            color:Colors.blue[900],
          ),

          SizedBox(width:5.0),

        Text(
        time,
          textAlign:TextAlign.center,
          style:TextStyle(
             color:Colors.blue[900],
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
           color:Colors.blue[900],
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
       color:Colors.blue[900],
      size:35
    ),
    onPressed: null,
  ),
  
),
     
     
      
    ],
  );
}

Widget _renderIcons(String terminal,String gate){
  return Column(
    crossAxisAlignment:CrossAxisAlignment.center,
    children: <Widget>[
      
      Padding(
         padding: const EdgeInsets.symmetric(horizontal:10.0),
         
        child: Text(
          "Terminal:" + terminal,
           textAlign:TextAlign.center,
          style:TextStyle(
             color:Colors.black,
            fontFamily:'Oxygen',
            fontSize:11.0,
            fontWeight:FontWeight.bold
          )
        ),
      ),


         Text(
        "Gate:" + gate,
         textAlign:TextAlign.center,
        style:TextStyle(
           color:Colors.black,
          fontFamily:'Oxygen',
          fontSize:11.0,
          fontWeight:FontWeight.bold
        )
      )

    ],
  );
  }







}


