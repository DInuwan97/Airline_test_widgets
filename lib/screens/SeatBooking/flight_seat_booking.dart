import 'package:flutter/material.dart';

class SeatBookingScreen extends StatefulWidget {
  @override
  _SeatBookingScreenState createState() => _SeatBookingScreenState();
}

class _SeatBookingScreenState extends State<SeatBookingScreen> {
  @override
  Widget build(BuildContext context) {

     var appBar = AppBar(
       title: Text(
         'Seat Booking',
          style:TextStyle(
            color:Colors.white
          )
        ),
        elevation: 0.0,
        backgroundColor: Colors.blue,
    );



    return Scaffold(
      appBar:appBar,
      body:Container(
        decoration: BoxDecoration(

          gradient: LinearGradient(
            colors: [Colors.blue[600],Colors.blue[400],Colors.white30],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),

        ),

        child:ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                
             
                 
                 Container(
                    height:600,
                width:MediaQuery.of(context).size.width * 1.1,
                decoration:BoxDecoration(
                  //borderRadius:BorderRadius.circular(10.0),
   
                ),
                  
                      //borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60),bottomRight: Radius.circular(60)),
                      child:Container(
                        margin: EdgeInsets.only(left:80),
                        width:100,
                        height:400,
                        child: Image(
                          image:AssetImage("assets/images/seat.png"),
                          fit:BoxFit.cover
                        ),
                      )
                    
                
                 ),

                  Positioned(
                                left: MediaQuery.of(context).size.width * 0.4,
                                bottom: 50.0,

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                     'UK',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 35.0,
                                        fontWeight: FontWeight.w800,
                                        fontFamily: 'Oxygen',

                                        letterSpacing: 1.2,
                                      ),
                                    ),
                                    Row(
                                      children: <Widget>[
                                       
                                        SizedBox(width: 5.0),
                                        Text(
                                          'London',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Oxygen',
                                            fontWeight:FontWeight.bold,
                                            fontSize:20.0
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                
                              ),
               
 
              ],
            ),
            
           
          ]
        )
      )
    );
  }


  Widget seatCntainer(){
    return Container(
           child: Image.asset(
              "assets/images/seat.png",
              fit: BoxFit.cover,
           ),
    );
  }
}