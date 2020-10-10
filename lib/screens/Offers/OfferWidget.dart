import 'package:flutter/material.dart';
import 'package:myapp1/models/offered_trips.dart';
import 'package:myapp1/screens/Offers/OfferCard.dart';
import 'package:provider/provider.dart';
import '../../app_state.dart';
import './SingleOffer/SingleOfferOuterView.dart';


class OfferWidget extends StatefulWidget {
  @override
  _OfferWidgetState createState() => _OfferWidgetState();
}

class _OfferWidgetState extends State<OfferWidget> {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppState>(
       create:(_) => AppState(),
        child:Stack(
            children: <Widget>[
                SafeArea(
                    child:Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                           Padding(
                padding:const EdgeInsets.symmetric(horizontal: 0.0),
                child: Consumer<AppState>(
                   builder:(context, appState,_) =>  Column(

                               children: <Widget>[
                               for(final offer in sheduledOffers.where((e) =>  e.offerItemId.contains(appState.selectedCategoryId))) 

                                  GestureDetector(
                                    onTap: (){
                                       Navigator.of(context).push(MaterialPageRoute(                               
                                          builder:(context)=>SingleOfferOuterView(offer)
                                       ),
                                      );
                                    },
                                    child: OfferCard(
                                     offer:offer
                                    )
                                  )                                     
                              ],
                   )
                )
              )
                  ],

                    )
                )
            ]
        )
    );
  }
}