import 'package:flutter/material.dart';

class BookTwoWayFlight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
       children: <Widget>[
        
         SafeArea(
           
           child:ListView(
             
             children: <Widget>[
               // SizedBox(height:20,width:10),
               Column(
                 children: <Widget>[
                   Container(
                      
                      alignment: Alignment.center,
                      width:MediaQuery.of(context).size.width * 0.95,
                      height:190.0,
                      decoration: BoxDecoration(
                        color:Colors.red,
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