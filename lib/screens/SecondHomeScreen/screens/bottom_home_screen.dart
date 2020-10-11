import 'package:flutter/material.dart';
import 'package:myapp1/models/country_model.dart';
import 'package:myapp1/models/offered_trips.dart';
import 'package:myapp1/screens/Offers/SingleOffer/SingleOfferOuterView.dart';

class BottomHomeScreen extends StatelessWidget {


TextStyle dropdownStyle = new TextStyle(
  color:Colors.blue[900],
  fontSize: 16.0,
  fontWeight:FontWeight.bold
);

TextStyle dropdownMenuItemStyle = new TextStyle(
  color:Colors.black,
  fontSize: 16.0
);



  @override
  Widget build(BuildContext context) {
 
     return Column(
       children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: Text('Best Fares from Croatia',
                    textAlign: TextAlign.center,
                      style:TextStyle(
                        fontSize:20.0,
                        color:Colors.blue[900],
                        fontWeight: FontWeight.w900
                      ),
                     
                    ),
              ),


         Padding(
           padding: const EdgeInsets.only(top:2.0),
           child: Container( 

              height:MediaQuery.of(context).size.height * 0.28,
              width:MediaQuery.of(context).size.width * 1.1,
                decoration:BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                        boxShadow:[BoxShadow(
                          color:Colors.white,
                        )],

                          gradient: LinearGradient(
                      colors: [Colors.blue[100],Colors.white10],
                      end: Alignment.bottomLeft,
                      begin: Alignment.topRight,
                    ),
                ),


                child:ListView.builder(
                  itemCount:sheduledOffers.length,
                  scrollDirection:Axis.horizontal,
                  itemBuilder: (BuildContext context,int index){
                      return GestureDetector(
                          
                                onTap: (){
                                       Navigator.of(context).push(MaterialPageRoute(                               
                                          builder:(context)=>SingleOfferOuterView(sheduledOffers[index])
                                       ),
                                      );
                                    },

                          child:oneContainer(context,index)


                      );
                  }
                )




           ),
         ),
       ],
     );
     
    
  }


  Widget oneContainer(BuildContext context,int index){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width:200,
        height:MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
             image: DecorationImage(
            image: AssetImage(sheduledOffers[index].imageUrl),
            fit: BoxFit.fill,
          ),
        ),

              child:Column(
                children: <Widget>[
                  Container(


                  child: sheduledOffers[index].isFeatured == true
                      ? Container(
                          alignment: Alignment.topRight,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 7,
                              horizontal: 20,
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
                                fontWeight: FontWeight.w900,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        )
                      : null,
                  ),

              SizedBox(height:96),

            Container(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 13,
                ),
                decoration: BoxDecoration(
                  //color: Color.fromRGBO(255, 255, 255, 0.9),
                   color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      sheduledOffers[index].city,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w900),
                    ),
                    if (sheduledOffers[index].travelClass != null)
                      Text(
                        sheduledOffers[index].travelClass,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
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