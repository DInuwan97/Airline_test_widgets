import 'package:select_dialog/select_dialog.dart';
import 'package:fancy_alert_dialog/fancy_alert_dialog.dart';
import 'package:flutter/material.dart';
import '../../../Flight_Book/classSlelection.dart';



class PassengersClassSelection extends StatefulWidget {
  
  String personType = 'Adult';
  int count = 1;
  String classtype = 'Economy';   

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
             padding: const EdgeInsets.symmetric(horizontal:8),
             child: RaisedButton(
               color:Colors.grey[200],
               elevation: 0,
                  child: Container(
                  margin: EdgeInsets.symmetric(horizontal:8),
                  width:MediaQuery.of(context).size.width,
                  height:MediaQuery.of(context).size.height * 0.09,
                  color:Colors.grey[200],
                    
                //padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height:1.0),
                    Text( 
                      //widget.count.toString()+' '+widget.type+' in', 
                      widget.count.toString()+' '+widget.personType+' in',
                      textAlign:TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight:FontWeight.bold,
                    ),
                ),

                SizedBox(height:7.0),

                Text( 
                      //widget.classtype,
                      widget.classtype, 
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
                onPressed:(){
                  print("Class selection pressed");
                  // SelectDialog.showModal<String>(
                  //   context
                  // );
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    ClassSelector cs = new ClassSelector();
                    return cs;
                  }));
                }

             ),
           )

      ]
    );
  }
}