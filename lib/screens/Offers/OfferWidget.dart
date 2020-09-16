import 'package:flutter/material.dart';

class OfferWidget extends StatefulWidget {
  @override
  _OfferWidgetState createState() => _OfferWidgetState();
}

class _OfferWidgetState extends State<OfferWidget> {

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
    return Column(
      children: <Widget>[
            Stack(
                     children:<Widget>[
                       Container(
                         margin:EdgeInsets.fromLTRB(40.0,5.0, 20.0, 5.0),
                         height:170.0,
                         width:double.infinity,
                         decoration:BoxDecoration(
                           color:Colors.grey.withOpacity(0.2),
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
                                    child: Text("St. Mark\'s Basilica",
                                      style:TextStyle(
                                        fontFamily:'Oxygen',
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w600
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                  ),
                                  ),

                                  Column(
                                      children: <Widget>[
                                        Text('\LKR ${200}',
                                          style:TextStyle(
                                            fontSize: 15.0,
                                            fontFamily:'Oxygen',
                                            fontWeight: FontWeight.w600
                                          )
                                        ),

                                         Text('per pax',
                                          style:TextStyle(
                                            color:Colors.grey
                                          )
                                        )

                                      ],
                                  ),
                               
                                ],

                              ),
                              Text(
                                "Sightseeing Tour",
                                style:TextStyle(
                                  color:Colors.grey
                                )
                              ),
                              _buildRatingStars(4),
                              SizedBox(height:10.0),
                              Row(
                                children: <Widget>[
                                    Container(
                                      padding:EdgeInsets.all(5.0),
                                      width:70.0,
                                      decoration:BoxDecoration(
                                          color:Theme.of(context).accentColor,
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                      alignment: Alignment.center,
                                      child:Text("11.00 AM")

                                    ),

                                    SizedBox(width:10.0),

                                    Container(
                                      width:70.0,

                                      decoration:BoxDecoration(
                                          color:Theme.of(context).accentColor,
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                      alignment: Alignment.center,
                                      child:Text("12.30PM")

                                    )


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
                                "assets/images/venice.jpg"
                              ),
                              fit:BoxFit.cover
                            )
                          ),
                        
                        )






                     ]
                   ),



                   Stack(
                     children:<Widget>[
                       Container(
                         margin:EdgeInsets.fromLTRB(40.0,5.0, 20.0, 5.0),
                         height:170.0,
                         width:double.infinity,
                         decoration:BoxDecoration(
                           color:Colors.white,
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
                                    child: Text("Nevada",
                                      style:TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w600
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                  ),
                                  ),

                                  Column(
                                      children: <Widget>[
                                        Text('\LKR ${200}',
                                          style:TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w600
                                          )
                                        ),

                                         Text('per pax',
                                          style:TextStyle(
                                            color:Colors.grey
                                          )
                                        )

                                      ],
                                  ),
                               
                                ],

                              ),
                              Text(
                                "Hiking",
                                style:TextStyle(
                                  color:Colors.grey
                                )
                              ),
                              _buildRatingStars(4),
                              SizedBox(height:10.0),
                              Row(
                                children: <Widget>[
                                    Container(
                                      padding:EdgeInsets.all(5.0),
                                      width:70.0,
                                      decoration:BoxDecoration(
                                          color:Theme.of(context).accentColor,
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                      alignment: Alignment.center,
                                      child:Text("11.00 AM")

                                    ),

                                    SizedBox(width:10.0),

                                    Container(
                                      width:70.0,

                                      decoration:BoxDecoration(
                                          color:Theme.of(context).accentColor,
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                      alignment: Alignment.center,
                                      child:Text("12.30PM")

                                    )


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
                                "assets/images/stmarksbasilica.jpg"
                              ),
                              fit:BoxFit.cover
                            )
                          ),
                        
                        )






                     ]
                   )
      ],              
    );
  }
}