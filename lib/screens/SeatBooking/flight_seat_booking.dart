import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myapp1/screens/CheckIn/boardingpass.dart';

class SeatBookingScreen extends StatefulWidget {
 
    final String firstname;
  final String lastname;

  const SeatBookingScreen({this.firstname, this.lastname});

 
 @override
  _SeatBookingScreenState createState() => _SeatBookingScreenState();
}


  int _selectedIndex = 0 ,  _selectedIndex1_1 = 0 ,  _selectedIndex1_2 = 0 , _selectedIndex1_5 = 5 , _selectedIndex1_7  = 0;
class _SeatBookingScreenState extends State<SeatBookingScreen> {


  get firstname => firstname;
  //get lastname => lastname;

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


                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top:16.0,left:20),
                      child: Column(
                        children: <Widget>[


                          Container(
                            child:Text('From',
                              style:TextStyle(
                                fontSize:13,
                                fontWeight: FontWeight.w900,
                              )
                            )
                          ),


                          Container(
                            child:Text('SGN',
                              style:TextStyle(
                                fontSize:25,
                                fontWeight: FontWeight.bold,
                                color:Colors.blue[900]
                              )
                            )
                          ),

                           Container(
                            child:Text('Changi,Singapore',
                              style:TextStyle(
                                fontSize:13,
                                fontWeight: FontWeight.bold,
                              )
                            )
                          ),


                  
                        ],
                      ),
                    ),

                    Spacer(),
                    _flightRouteConection(),
                            Spacer(),

                    Padding(
                           padding: const EdgeInsets.only(top:16.0,right:20),
                      child: Column(
                        children: <Widget>[


                           Container(
                            child:Text('To',
                              style:TextStyle(
                                fontSize:13,
                                fontWeight: FontWeight.w900,
                              )
                            )
                          ),
                          Container(
                            child:Text('CNB',
                              style:TextStyle(
                                fontSize:25,
                                fontWeight: FontWeight.bold,
                                color:Colors.blue[900]
                              )
                            )
                          ),

                          Container(
                            child:Text('Canbera,Australia',
                              style:TextStyle(
                                fontSize:13,
                                fontWeight: FontWeight.bold,
                              )
                            )
                          ),


                 
                        ],
                      ),
                    )
                  ],
                ),
                
             
                 
                 Container(
                    height:600,
                width:MediaQuery.of(context).size.width * 1.1,
                decoration:BoxDecoration(
                  //borderRadius:BorderRadius.circular(10.0),
   
                ),
                  
                      //borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60),bottomRight: Radius.circular(60)),
                      child:Container(
                        margin: EdgeInsets.only(top:60),
                        width:60,
                        height:100,
                        child: Image(
                          image:AssetImage("assets/images/seats.png"),
                          fit:BoxFit.fitHeight
                        ),
                      )
                    
                
                 ),

                  //detailsContainer(),
                  Positioned(
                                left: MediaQuery.of(context).size.width * 0.3,
                                bottom: 20.0,

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[

   Row(
     children: <Widget>[
       Container(

         child: Image.asset(
           "assets/images/banner3.png",
           width:150,
           height:70
                                
                              ),
       ),
     ],
   ),


                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(left:15.0),
                                          child:Text(
                                            '1',
                                            style:TextStyle(
                                              fontWeight: FontWeight.w900
                                            )
                                          )
                                        ),


                                         Padding(
                                          padding: const EdgeInsets.only(left:30.0),
                                          child:Text(
                                            '2',
                                            style:TextStyle(
                                              fontWeight: FontWeight.w900
                                            )
                                          )
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.only(left:30.0),
                                          child:Text(
                                            '3',
                                            style:TextStyle(
                                              fontWeight: FontWeight.w900
                                            )
                                          )
                                        ),

                                              Padding(
                                          padding: const EdgeInsets.only(left:25.0),
                                          child:Text(
                                            '4',
                                            style:TextStyle(
                                              fontWeight: FontWeight.w900
                                            )
                                          )
                                        )
                                      ],
                                    ),


                                    //1
                                    Row(
                                      children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: GestureDetector(
                                                onTap: (){
                                                  setState(() {

                                                    _selectedIndex1_1 == 0 ? _selectedIndex1_1 = 1 : _selectedIndex1_1 = 0 ; 
                                                  });
                                                },
                                                child: _selectedIndex1_1 == 1 ? freeSeatDesign(Colors.greenAccent) : freeSeatDesign(Colors.white),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: allocatedSeatDesign(),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: freeSeatDesign(Colors.white),
                                          ),
                                             Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: allocatedSeatDesign(),
                                          ),
                                      ],
                                    ),

                                    //2
                                     Row(
                                      children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: GestureDetector(
                                                onTap: (){
                                                  setState(() {
                                                    _selectedIndex1_2 == 0 ? _selectedIndex1_2 = 1 : _selectedIndex1_2 = 0 ;  
                                                  });
                                                },
                                                child: _selectedIndex1_2 == 1 ? freeSeatDesign(Colors.greenAccent) : freeSeatDesign(Colors.white),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                             child: freeSeatDesign(Colors.white),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                             child: freeSeatDesign(Colors.white),
                                          ),
                                             Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: allocatedSeatDesign(),
                                          ),
                                      ],
                                    ),




                                    //3
                                     Row(
                                      children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),

                                            child: allocatedSeatDesign(),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: freeSeatDesign(Colors.white),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: allocatedSeatDesign(),
                                          ),
                                             Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: freeSeatDesign(Colors.white),
                                          ),
                                      ],
                                    ),



                                        //4
                                     Row(
                                      children: <Widget>[
                                           Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: allocatedSeatDesign(),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: allocatedSeatDesign(),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                             child: freeSeatDesign(Colors.white),
                                          ),
                                             Padding(
                                            padding: const EdgeInsets.all(3.0),
                                           child: allocatedSeatDesign(),
                                          ),
                                      ],
                                    ),



                                        //5
                                     Row(
                                      children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: GestureDetector(
                                                onTap: (){
                                                  setState(() {
                                                    _selectedIndex1_5 == 0 ? _selectedIndex1_5 = 1 : _selectedIndex1_5 = 0 ; 
                                                  });
                                                },
                                                child: _selectedIndex1_5 == 1 ? freeSeatDesign(Colors.greenAccent) : freeSeatDesign(Colors.white),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: allocatedSeatDesign(),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: freeSeatDesign(Colors.white),
                                          ),
                                             Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: allocatedSeatDesign(),
                                          ),
                                      ],
                                    ),


                                    //6                                   
                                     Row(
                                      children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: allocatedSeatDesign(),
                                          ),
                                       
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: allocatedSeatDesign(),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                     child: allocatedSeatDesign(),
                                          ),
                                             Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: allocatedSeatDesign(),
                                          ),
                                      ],
                                    ),


                                    

                                    //6                                   
                                     Row(
                                      children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: GestureDetector(
                                                onTap: (){
                                                  setState(() {
                                                    _selectedIndex == 0 ? _selectedIndex = 1 : _selectedIndex = 0 ; 
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
                                           child: allocatedSeatDesign(),
                                          ),
                                             Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: allocatedSeatDesign(),
                                          ),
                                      ],
                                    ),


                                    

                                    //6                                   
                                     Row(
                                      children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(top:3.0,left:3.0,right:3.0,bottom:20),
                                            child: GestureDetector(
                                                onTap: (){
                                                  setState(() {
                                                    _selectedIndex1_7 == 0 ? _selectedIndex1_7 = 1 : _selectedIndex1_7 = 0 ; 
                                                  });
                                                },
                                                child: _selectedIndex1_7 == 1 ? freeSeatDesign(Colors.greenAccent) : freeSeatDesign(Colors.white),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top:3.0,left:3.0,right:3.0,bottom:20),
                                            child: allocatedSeatDesign(),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top:3.0,left:3.0,right:3.0,bottom:20),
                                            child: freeSeatDesign(Colors.white),
                                          ),
                                             Padding(
                                            padding: const EdgeInsets.only(top:3.0,left:3.0,right:3.0,bottom:20),
                                            child: freeSeatDesign(Colors.white),
                                          ),
                                      ],
                                    ),

                                    Row(
                                      children: <Widget>[
                                        
                                        RaisedButton(
                                          onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
    	                                           builder: (context)=>
                                                   
                                                   BoardingPass(
                                                     'John',
                                                     'Doe'
                                                    )

                                                 
                                                )
                                              );
                                          },
                                          padding: EdgeInsets.symmetric(
                                              horizontal: MediaQuery.of(context).size.width * 0.03,
                                              vertical: 8),
                                          child: const Text('CONFIRM',
                                              style: TextStyle(
                                                fontSize: 28,
                                              )),
                                          elevation: 10.0,
                                          color: Colors.blue[900],
                                          splashColor: Colors.blue[200],
                                          animationDuration:
                                              Duration(seconds: 2),
                                          colorBrightness: Brightness.dark,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(10.0),
                                            side: BorderSide(
                                                color: Colors.white,
                                                width:3.0                                               
                                            ),
                                           
                                          )
                                        ),
                                      ],
                                    )
                                    
                                  ],
                                ),


                                
                              ),

                             // Spacer(),

                             // detailsContainer2()
               
 
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



    Widget seatDesign(Color colorTheme){
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


  Widget detailsContainer(){
    return Padding(
      padding: const EdgeInsets.only(left:20.0,top:16.0),
      child: Container(
               height:MediaQuery.of(context).size.height * 0.1,
                          width:MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(

                         gradient: LinearGradient(
                         colors: [Colors.blueAccent,Colors.blue[600],Colors.blue[300]],
                      end: Alignment.topCenter,
                        begin: Alignment.bottomCenter,
                        ),

                         borderRadius: BorderRadius.all(
                          Radius.circular(20.0)
                        )

                        )
      ),
    );
      
    
  }

  
  Widget detailsContainer2(){
    return Padding(
      padding: const EdgeInsets.only(right:20.0,top:16.0),
      child: Container(
               height:MediaQuery.of(context).size.height * 0.1,
                          width:MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(

                         gradient: LinearGradient(
                         colors: [Colors.blueAccent,Colors.blue[600],Colors.blue[300]],
                      end: Alignment.topCenter,
                        begin: Alignment.bottomCenter,
                        ),

                         borderRadius: BorderRadius.all(
                          Radius.circular(20.0)
                        )

                        )
      ),
    );
      
    
  }



  Widget _flightRouteConection() {
    return Column(
//SizedBox(height:10.0),
      children: <Widget>[
        Transform.rotate(
          angle: 90 * pi / 180,
          child: IconButton(
            icon: Icon(Icons.flight, color: Colors.blue[900], size: 35),
            onPressed: null,
          ),
        ),
      ],
    );
  }
  
}