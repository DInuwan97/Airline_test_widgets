import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp1/models/offered_trips.dart';

class SingleOfferOuterView extends StatelessWidget {

  final OfferedTrips offer;
  const SingleOfferOuterView({Key key, this. offer}) : super(key: key);

  


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

      body:ListView(
         padding: EdgeInsets.symmetric(horizontal: 0.0),
        children: <Widget>[

                Stack(children: <Widget>[

            Container(
              height:250,
              width:MediaQuery.of(context).size.width,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(30.0),
                boxShadow:[BoxShadow(
                  color:Colors.black26,
                  offset:Offset(0.1,2.0),
                  blurRadius : 6.0
                )]
              ),


              child: Hero(
                tag:offer.imageUrl,
                  child:ClipRRect(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
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
                  colors: [Colors.blue,Colors.blue[400],Colors.blue[300]],
                  end: Alignment.bottomRight,
                  begin: Alignment.topLeft,
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
                                text: 'ECONOMY ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize:20,
                                  fontFamily: 'Oxygen',
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'CLASS', 
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


                    Spacer(),

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
                    colors: [Colors.blue,Colors.blue[400],Colors.blue[300]],
                    end: Alignment.bottomRight,
                    begin: Alignment.topLeft,
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
                        '05 Aug 2020 - 10 Oct 2020',
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
                            '21 Apr 2021, Friday',
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
                                '05 Oct 2021',
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
      height:155,
      width:MediaQuery.of(context).size.width,
      decoration: BoxDecoration(

          gradient: LinearGradient(
              colors: [Colors.blue,Colors.blue[400],Colors.blue[300]],
              end: Alignment.bottomRight,
              begin: Alignment.topLeft,
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
          )
        ],
      )
    ),
  );

}


}