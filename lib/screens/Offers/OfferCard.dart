import 'package:flutter/material.dart';
import 'package:myapp1/models/offered_trips.dart';

class OfferCard extends StatelessWidget {



  final OfferedTrips offer;

  const  OfferCard({Key key, this.offer}) : super(key: key);

    Text _buildRatingStars(int rating){
    String stars = '';
    for(int i = 0 ; i < rating; i++){
      stars += '⭐';
    }
    stars.trim();
    return Text(stars);
  }

  
  @override
  Widget build(BuildContext context) {
    return Stack(
                     children:<Widget>[
                       Container(
                         margin:EdgeInsets.fromLTRB(40.0,5.0, 20.0, 5.0),
                         height:170.0,
                         width:double.infinity,
                         decoration:BoxDecoration(
                           color:Colors.white.withOpacity(0.7),
                           borderRadius: BorderRadius.circular(20.0)
                         ),

                         child: Padding(
                           padding:const EdgeInsets.fromLTRB(100.0,20.0,20.0,20.0),
                           child:Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment:CrossAxisAlignment.start,
                           children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: <Widget>[

                                  Container(
                                    width: 90.0,
                                    child: Text(offer.name,
                                      style:TextStyle(
                                        fontFamily:'Oxygen',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                  ),
                                  ),

                                  Column(
                                      children: <Widget>[
                                        // Text('\USD ${offer.price}',
                                        //   style:TextStyle(
                                        //     fontSize: 15.0,
                                        //     fontFamily:'Oxygen',
                                        //     fontWeight: FontWeight.w600
                                        //   )
                                        // ),

                                        //  Text('per pax',
                                        //   style:TextStyle(
                                        //     color:Colors.grey,
                                        //     fontFamily:'Oxygen'
                                        //   )
                                        // )
                                        Container(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                          gradient: LinearGradient(
                            colors: [
                              Colors.orange,
                              Colors.red,
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          )),
                      child: Text(
                        'FEATURED',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                    ),
                  )

                                      ],
                                  ),
                               
                                ],

                              ),
                              Text(
                                offer.type,
                                style:TextStyle(
                                  color:Colors.grey
                                )
                              ),
                              _buildRatingStars(offer.rating),
                              SizedBox(height:10.0),
                              Row(
                                children: <Widget>[
                                    Container(
                                     // padding:EdgeInsets.all(5.0),
                                      width:90.0,
                                      decoration:BoxDecoration(
                                          color:Theme.of(context).accentColor,
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                      alignment: Alignment.center,
                                      child:Padding(
                                        padding: const EdgeInsets.symmetric(horizontal:8,vertical:5),
                                        child: Row( 
                                          children: <Widget>[
                                            Icon(
                                              Icons.credit_card,
                                              color: Colors.white,
                                              size:15
                                            ),
                                            Text(
                                              '\ USD ${offer.price}',
                                              style:TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white
                                              )
                                            ),
                                          ],
                                        ),
                                      )

                                    ),

                                    SizedBox(width:10.0),

                                    // Container(
                                    //   width:70.0,

                                    //   decoration:BoxDecoration(
                                    //       color:Theme.of(context).accentColor,
                                    //       borderRadius: BorderRadius.circular(10.0)
                                    //   ),
                                    //   alignment: Alignment.center,
                                    //   child:Text(offer.startTimes[1])

                                    // )


                                ],
                              )
                           ],
                         )

                         )
                         
                         
                       ),


                        Positioned(
                          left:20.0,
                          top:15.0,
                          bottom:15.0,
                          child:ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child:Image(
                              width:110.0,
                              height: 20.0,
                              image:AssetImage(
                               offer.imageUrl
                              ),
                              fit:BoxFit.cover
                            )
                          ),
                        
                        )






                     ]
                   );
  }
}