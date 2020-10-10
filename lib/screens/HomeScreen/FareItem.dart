import 'package:flutter/material.dart';
import 'package:myapp1/models/offered_trips.dart';
import 'package:myapp1/screens/Offers/SingleOffer/SingleOfferOuterView.dart';

class FareItem extends StatelessWidget {
  final bool isFeatured;
  final String city;
  final String fareClass;
  final String imagePath;
  final int tripId;

  const FareItem({
    @required this.isFeatured,
    @required this.city,
    @required this.fareClass,
    @required this.imagePath,
    @required this.tripId
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){
                                       Navigator.of(context).push(MaterialPageRoute(                               
                                          builder:(context)=>SingleOfferOuterView(sheduledOffers[tripId])
                                       ),
                                      );
                                    },


      child: Container(
        width: 180,
        padding: EdgeInsets.all(2),
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
          border: Border.all(
            color: Colors.grey[400],
            width: 1,
          ),
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: isFeatured == true
                  ? Container(
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
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    )
                  : null,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 3,
                  horizontal: 8,
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.9),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      city,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    if (fareClass != null)
                      Text(
                        fareClass,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
