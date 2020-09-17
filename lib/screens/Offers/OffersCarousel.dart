import 'package:flutter/material.dart';
import 'package:myapp1/models/offered_trips.dart';
import 'package:myapp1/screens/Offers/OfferWidget.dart';

class OffersCarousel extends StatelessWidget {





  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child:Row(
                //mainAxisAlignment: MainAxisAlignment.
                children: <Widget>[
                  Text(
                  'Top Destinations',
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                )
                ],
              )
            ),

           OfferWidget()


            // Container(
            //   //height:500.0,

            //     // decoration: BoxDecoration(
            //     //   color:Colors.blue[400].withOpacity(0.85),
            //     //   borderRadius: BorderRadius.all(
            //     //     Radius.circular(20)
            //     //   ),
            //     // ),

            //     child:GestureDetector(
            //        onTap:(){},                                
            //        child:OfferWidget()
                
            //     )
            // )

        ],  
      ),
    );
  }
}