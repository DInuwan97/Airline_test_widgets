import 'package:select_dialog/select_dialog.dart';
import 'package:fancy_alert_dialog/fancy_alert_dialog.dart';
import 'package:flutter/material.dart';

class PassengersClassSelection extends StatefulWidget {
  @override
  _PassengersClassSelectionState createState() => _PassengersClassSelectionState();
}

class _PassengersClassSelectionState extends State<PassengersClassSelection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height:10,width:10),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal:1),
             child: GestureDetector(
               
                  child: Container(
                  //margin: EdgeInsets.symmetric(horizontal:8),
                  width:MediaQuery.of(context).size.width * 2.5,
                  height:MediaQuery.of(context).size.height * 0.125,
                  
            decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue[200],Colors.white],
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
             // tileMode: TileMode.clamp,
            ),
               borderRadius: BorderRadius.all(
            Radius.circular(20)  
          ),
              boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 15,
              ),
            ],
          ),
                  
                    
                //padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height:15.0),
                    Text( 
                      '01 Adult in', 
                      textAlign:TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight:FontWeight.bold,
                    ),
                ),

                SizedBox(height:7.0),

                Text( 
                      'BUSINESS CLASS', 
                      textAlign:TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight:FontWeight.bold,
                        fontFamily:'Arial'
                    ),

                )
                ]
                )

        
              ),
                onTap:(){
                  SelectDialog.showModal<String>(
                    context
                  );
                }

             ),
           )

      ]
    );
  }
}