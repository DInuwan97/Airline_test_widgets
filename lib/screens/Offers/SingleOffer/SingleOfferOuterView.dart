import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp1/models/offered_trips.dart';

class SingleOfferOuterView extends StatelessWidget {

  final OfferedTrips offer;
  const SingleOfferOuterView(this. offer);

  


  @override
  Widget build(BuildContext context) {
     var appBar = AppBar(
       title: Text(
          offer.name,
          style:TextStyle(
            color:Colors.black
          )
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
    );

    final windowWidth = MediaQuery.of(context).size.width;
    final windowHeight = MediaQuery.of(context).size.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    final appBarHeight = appBar.preferredSize.height;
    final bodyHeight =
        windowHeight - (statusBarHeight + appBarHeight + windowHeight * 0.079);
    final faresHeight = bodyHeight -
        (bodyHeight * 0.4 + 50 + windowHeight * 0.035 + windowHeight * 0.09);

    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     offer.name,
      //     style:TextStyle(
      //       color:Colors.white
      //     )
      //   ),
      //   elevation: 0.0,
      //   //backgroundColor: Colors.transparent,
      // ),

      body:Container(
            decoration: BoxDecoration(

                    gradient: LinearGradient(
                      colors: [Colors.blue[200],Colors.blue[100],Colors.white30],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
    
                //  borderRadius: BorderRadius.only(
                //    topLeft: Radius.circular(40.0),
                //    topRight: Radius.circular(40.0)
                //  )

            ),
        child: ListView(
           padding: EdgeInsets.symmetric(horizontal: 0.0),
          children: <Widget>[

                  Stack(children: <Widget>[

              Container(
                height:250,
                width:MediaQuery.of(context).size.width,
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(70.0),
                  boxShadow:[BoxShadow(
                    color:Colors.black26,
                    offset:Offset(0.1,2.0),
                    blurRadius : 6.0
                  )]
                ),


                child: Hero(
                  tag:offer.imageUrl,
                    child:ClipRRect(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60),bottomRight: Radius.circular(60)),
                      child:Image(
                        image:AssetImage(offer.imageUrl),
                        fit:BoxFit.cover
                      )
                    )
                )

                
               
              ),




               Positioned(
                                left: 20.0,
                                bottom: 20.0,

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      offer.city,
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
                                        Icon(
                                          FontAwesomeIcons.locationArrow,
                                          size: 18.0,
                                          color: Colors.white,
                                          
                                        ),
                                        SizedBox(width: 5.0),
                                        Text(
                                          offer.country,
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
            

         travellingClassWidget(context),

         offerDetailsSecondCotainer(context),

         travelDetailsContainer(context)
            
          ],
        ),
      ),
      
    );
  }



Widget travellingClassWidget(BuildContext context){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical:8.0,horizontal:12.0),
    child: Container(
      height:110,
      width:MediaQuery.of(context).size.width,
          decoration: BoxDecoration(

              gradient: LinearGradient(
                     colors: [Colors.blueAccent,Colors.blue[600],Colors.blue[300]],
                    //begin: Alignment.topCenter,
                    //end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(20.0)
                )
              ),

      child:Column(
        children: <Widget>[
          Row(
            children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:20,horizontal:15),
                      child: Column(
                        children: <Widget>[
                          RichText(
                                text: TextSpan(
                                text: offer.travelClass,
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize:18,
                                  fontFamily: 'Oxygen',
                                  letterSpacing:1.7
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' CLASS', 
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600
                                    )
                                  ),
                                ],
                              ),
                          ),
                        ],
                      ),

                      
                    ),


                    //Spacer(),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:2,horizontal:20),
                      
                      child: Column(
                        
                        children: <Widget>[                        
                          RaisedButton(                           
                            onPressed: () {
                             Navigator.push(context,
                              MaterialPageRoute(
    	                                            
                              )
                             );
                            },
                            padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * 0.01,vertical: 0),
                            
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal:3.0),
                                child: const Text('BOOK NOW',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold
                                    )
                                ),
                              ),

                              elevation: 20.0,
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
                                                                          
                                ),
                               
                              )
                              ),
                        ],

                      ),

                      
                    ),

                   

            ],
          ),




          Row(
            children: <Widget>[
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 16.0),
                               child: Container(
                                  width:80.0,
                                  height: 25,
                                      decoration:BoxDecoration(
                                          color:Colors.yellow[700],
                                          borderRadius: BorderRadius.circular(40.0)
                                      ),
                                 child: Padding(
                                   padding: const EdgeInsets.symmetric(vertical:3.0,horizontal:10.0),
                                   child: RichText(
                                      text: TextSpan(
                                      text: 'USD 210',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize:15,
                                        fontFamily: 'Oxygen',
                                        color:Colors.white
                                      )
                          
                                    ),
                          ),
                                 ),
                               ),
                             ),

                          
            ], 
          )



        ],
      )
    ),
  );
}


Widget offerDetailsSecondCotainer(BuildContext context){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical:0.0,horizontal:12.0),
    child: Container(
         height:155,
         width:MediaQuery.of(context).size.width,
            decoration: BoxDecoration(

                gradient: LinearGradient(
                    colors: [Colors.blueAccent,Colors.blue[600],Colors.blue[300]],
                    //end: Alignment.topCenter,
                    //begin: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.all(
                      Radius.circular(20.0)
                  )
                ),




          child: Column(
            children: <Widget>[

                Row(
                  children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.only(left:15.0),
                      child: Icon(
                        Icons.note,
                        color: Colors.white,
                        size:18
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:8.0,horizontal:2.0),
                      child: Text(
                        'Travel Details',
                        style:TextStyle(
                          color:Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize:17
                        )
                      ),
                    ),
                   
                  ],
                ),



                
                Row(
                  children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.only(top:5.0,left:15.0),
                      child: Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                        size:14
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(top:5.0,left:2.0),
                      child: Text(
                        'Outbound Period',
                        style:TextStyle(
                          color:Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize:15
                        )
                      ),
                    ),

                  ],
                ),

                 Row(
                  children: <Widget>[
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal:32.0),
                      child: Text(
                        '${offer.outBoundPeriod[0]} - ${offer.outBoundPeriod[1]}',
                        style:TextStyle(
                          color:Colors.white70,
                          fontWeight: FontWeight.w900,
                          fontSize:13
                        )
                      ),
                    ),
                   ],
                  ),




                  Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:15.0,top:25.0),
                      child: Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                        size:14
                      ),
                    ),

                    
                    Column(
                      children: <Widget>[  
                        Padding(
                          padding: const EdgeInsets.only(top:25.0,left:2.0),
                          child: Text(
                            'Travel Compltion Date',
                            style:TextStyle(
                              color:Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize:15
                            )
                          ),
                        ),
                      ],
                    ),


                  Spacer(),

                  Column(
                  children: <Widget>[

                    
                  Row(
                    
                  children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(top:25.0),
                      child: Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                        size:14
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top:25.0,left:2.0,right:30.0),
                      child: Text(
                        'Book by',
                        style:TextStyle(
                          color:Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize:15
                        )
                      ),
                    ),

                  

                  ],
                ),
                      ],
                    )

                  ],
                ),

                 Row(
                  children: <Widget>[
                     Column(
                       children: <Widget>[
                         Padding(
                          padding: const EdgeInsets.only(left:32.0),
                          child: Text(
                            offer.travelCompletionPeriod,
                            style:TextStyle(
                              color:Colors.white70,
                              fontWeight: FontWeight.w900,
                              fontSize:13
                            )
                          ),
                        ),
                       ],
                     ),
                      Spacer(),


                      Column(
                       children: <Widget>[


                         Row(
                           children: <Widget>[
                             Padding(
                              padding: const EdgeInsets.only(right:15.0),
                              child: Text(
                                offer.bookingDeadline,
                                style:TextStyle(
                                  color:Colors.white70,
                                  fontWeight: FontWeight.w900,
                                  fontSize:13
                                )
                              ),
                            ),
                           ],
                         ),
             
                       ],
                     ),
                   ],
                  )


            ],
          )



    ),
  );
}



Widget travelDetailsContainer(BuildContext context){

  return Padding(
    padding: const EdgeInsets.symmetric(vertical:8.0,horizontal:12.0),
    child: Container(
      height:180,
      width:MediaQuery.of(context).size.width,
      decoration: BoxDecoration(

          gradient: LinearGradient(
                     colors: [Colors.blueAccent,Colors.blue[600],Colors.blue[300]],
                    //begin: Alignment.topCenter,
                    //end: Alignment.bottomCenter,
          ),

          borderRadius: BorderRadius.all(
              Radius.circular(20.0)
          )

      ),

      child:Column(
        children: <Widget>[
          Row(
            children: <Widget>[
                   Padding(
                      padding: const EdgeInsets.only(left:15.0),
                      child: Icon(
                        Icons.info_outline,
                        color: Colors.white,
                        size:18
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:8.0,horizontal:2.0),
                      child: Text(
                        'Fare Conditions',
                        style:TextStyle(
                          color:Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize:17
                        )
                      ),
                    ),
            ],
          ),



          Row(
            children: <Widget>[

                    Padding(
                          padding: const EdgeInsets.only(top:9.0,left:15.0),
                          child: Text(
                            'Minimum Passengers',
                            style:TextStyle(
                              color:Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize:15
                            )
                          ),
                    ),

                    Spacer(),

                     Padding(
                      padding: const EdgeInsets.only(top:9.0,right:15.0),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size:18
                      ),
                    ),

            ],
          ),


          Row(
            children: <Widget>[

                    Padding(
                          padding: const EdgeInsets.only(top:1.0,left:15.0),
                          child: Text(
                            'Itinerary Change',
                            style:TextStyle(
                              color:Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize:15
                            )
                          ),
                    ),

                    Spacer(),

                      Padding(
                        padding: const EdgeInsets.only(right:15.0),
                          child: Text(
                            offer.itineraryChange,
                              style:TextStyle(
                                color:Colors.white70,
                                fontWeight: FontWeight.w900,
                                fontSize:13,
                                letterSpacing:1.0
                              ),
                              
                          ),
                      )
                        
            ],
          ),



          Row(
            children: <Widget>[

                    Padding(
                          padding: const EdgeInsets.only(top:1.0,left:15.0),
                          child: Text(
                            'Cancellation / Refund',
                            style:TextStyle(
                              color:Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize:15
                            )
                          ),
                    ),

                    Spacer(),

                      Padding(
                        padding: const EdgeInsets.only(right:15.0),
                          child: Text(
                            offer.cancellation,
                              style:TextStyle(
                                color:Colors.white70,
                                fontWeight: FontWeight.w900,
                                fontSize:13,
                                letterSpacing:1.0
                              ),
                              
                          ),
                      )
                        
            ],
          ),


            Row(
            children: <Widget>[

                    Padding(
                          padding: const EdgeInsets.only(top:1.0,left:15.0),
                          child: Text(
                            'Maximum Stay',
                            style:TextStyle(
                              color:Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize:15
                            )
                          ),
                    ),

                    Spacer(),

                    Padding(
                      padding: const EdgeInsets.only(right:15.0),
                        child: Text(
                          offer.maxStay,
                              style:TextStyle(
                              color:Colors.white70,
                              fontWeight: FontWeight.w900,
                              fontSize:13,
                              letterSpacing:1.0
                            ),                            
                        ),
                    )
                        
            ],
          ),

                    Row(
            children: <Widget>[

                    Padding(
                          padding: const EdgeInsets.only(top:1.0,left:15.0),
                          child: Text(
                            'Minimum Stay',
                            style:TextStyle(
                              color:Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize:15
                            )
                          ),
                    ),

                    Spacer(),

                      Padding(
                        padding: const EdgeInsets.only(right:15.0),
                          child: Text(
                            offer.minStay,
                              style:TextStyle(
                                color:Colors.white70,
                                fontWeight: FontWeight.w900,
                                fontSize:13,
                                letterSpacing:1.0
                              ),
                              
                          ),
                      )
                        
            ],
          ),


                    Row(
            children: <Widget>[

                    Padding(
                          padding: const EdgeInsets.only(top:1.0,left:15.0),
                          child: Text(
                            'Advance Purchase',
                            style:TextStyle(
                              color:Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize:15
                            )
                          ),
                    ),

                    Spacer(),

                      Padding(
                        padding: const EdgeInsets.only(right:15.0),
                          child: Text(
                            offer.advancePurchase,
                              style:TextStyle(
                                color:Colors.white70,
                                fontWeight: FontWeight.w900,
                                fontSize:13,
                                letterSpacing:1.0
                              ),
                              
                          ),
                      )
                        
            ],
          )
        ],
      )
    ),
  );

}


}