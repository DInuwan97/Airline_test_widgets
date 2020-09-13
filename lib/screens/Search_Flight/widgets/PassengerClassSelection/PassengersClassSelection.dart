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
        SizedBox(height:10),
           RaisedButton(
             color:Colors.grey[200],
             elevation: 0,
                child: Container(
                width:MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.height * 0.09,
                color:Colors.grey[200],
                  
              //padding: const EdgeInsets.all(10.0),
              child:
                  const Text('Gradient Button', style: TextStyle(fontSize: 20)),
            ),
              onPressed:(){
                SelectDialog.showModal<String>(
                  context
                );
              }

           )

      ]
    );
  }
}