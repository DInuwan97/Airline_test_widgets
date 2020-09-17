import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp1/models/offered_trips.dart';

class SingleOfferOuterView extends StatelessWidget {

  final OfferedTrips offer;
  const SingleOfferOuterView({Key key, this. offer}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(offer.name)
      ),

      body:ListView(
         padding: EdgeInsets.symmetric(horizontal: 0.0),
        children: <Widget>[

                Stack(children: <Widget>[

            Container(
              height:MediaQuery.of(context).size.width * 0.5,
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
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
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
          

      
          
        ],
      ),
      
    );
  }
}