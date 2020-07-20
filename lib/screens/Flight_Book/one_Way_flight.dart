import 'package:flutter/material.dart';

class BookOneWayFlight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
       children: <Widget>[
        
         SafeArea(
           
           child:ListView(
             
             children: <Widget>[
               
               Column(
                 crossAxisAlignment:CrossAxisAlignment.center,
                 children: <Widget>[
                  SizedBox(height:20),
                   Container(
                      
                      alignment: Alignment.center,
                      width:MediaQuery.of(context).size.width * 0.94,
                      height:150.0,
                      decoration: BoxDecoration(
                        color:Colors.orange,
                        borderRadius: BorderRadius.all(
                        Radius.circular(14)
                      ),
                      )
            

                   ),

                     SizedBox(height:20),
                   Container(
                      
                      alignment: Alignment.center,
                      width:MediaQuery.of(context).size.width * 0.94,
                      height:90.0,
                      decoration: BoxDecoration(
                        color:Colors.orange,
                        borderRadius: BorderRadius.all(
                        Radius.circular(14)
                      ),
                      )
            

                   ),

                     SizedBox(height:20),
                   Container(
                      
                      alignment: Alignment.center,
                      width:MediaQuery.of(context).size.width * 0.94,
                      height:100.0,
                      decoration: BoxDecoration(
                        color:Colors.orange,
                        borderRadius: BorderRadius.all(
                        Radius.circular(14)
                      ),
                      )
            

                   )
                   

                   
                 ],
               )
             ],
           )
         )
       ]
    );
  }
}