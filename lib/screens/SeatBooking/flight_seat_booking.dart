import 'package:flutter/material.dart';

class SeatBookingScreen extends StatefulWidget {
  @override
  _SeatBookingScreenState createState() => _SeatBookingScreenState();
}


  int _selectedIndex = 0;
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
            colors: [Colors.blue[200],Colors.blue[100],Colors.blue[50]],
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
                        margin: EdgeInsets.only(left:MediaQuery.of(context).size.width * 0.35,top:60),
                        width:60,
                        height:100,
                        child: Image(
                          image:AssetImage("assets/images/seats.png"),
                          fit:BoxFit.fitHeight
                        ),
                      )
                    
                
                 ),

                  Positioned(
                                left: MediaQuery.of(context).size.width * 0.47,
                                bottom: 50.0,

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                       
                                    Row(
                                      children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: GestureDetector(
                                                onTap: (){
                                                  setState(() {
                                                    _selectedIndex = 1; 
                                                  });
                                                },
                                                child: _selectedIndex == 1 ? freeSeatDesign(Colors.greenAccent) : freeSeatDesign(Colors.white),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: allocatedSeatDesign(),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: freeSeatDesign(Colors.greenAccent),
                                          ),
                                             Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: freeSeatDesign(Colors.greenAccent),
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




  Widget allocatedSeatDesign(){
    return Container(
          width:30,
          height:30,
           decoration: BoxDecoration(
              color:Colors.red,
              borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(5.0),
                   topRight: Radius.circular(5.0),
                   bottomLeft: Radius.circular(5.0),
                   bottomRight: Radius.circular(5.0)
             )
        ),
    );
  }

    Widget freeSeatDesign(Color colorTheme){
    return Container(
          width:30,
          height:30,
           decoration: BoxDecoration(
              color:colorTheme,
              borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(5.0),
                   topRight: Radius.circular(5.0),
                   bottomLeft: Radius.circular(5.0),
                   bottomRight: Radius.circular(5.0)
             )
        ),
    );
  }
}