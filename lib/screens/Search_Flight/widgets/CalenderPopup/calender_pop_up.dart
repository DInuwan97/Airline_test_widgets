import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalenderPopUp extends StatefulWidget {
  @override
  _CalenderPopUpState createState() => _CalenderPopUpState();
}

class _CalenderPopUpState extends State<CalenderPopUp> {

DateTime _dateTime = DateTime.now();
String dname;
// formatDate(DateTime(20,09,13),[yy, '-', M, '-', d])
  @override
  Widget build(BuildContext context) {
    return Column(
     
      children: <Widget>[


         IconButton(
           icon:Icon(
              Icons.calendar_today,
              color:Colors.blue[900],
              size:35
            ),
            onPressed:(){
             // dname = DateFormat('EEE d MMM').format(_dateTime);
              showDatePicker(
               
                context:context,
                initialDate: _dateTime == null ? DateTime.now() : _dateTime,
                firstDate:DateTime(2001),
                lastDate: DateTime(2222)
              ).then((date){
                setState(() {
                 _dateTime = date; 
                });
                // print(DateFormat('EEE d MMM').format(_dateTime));
              });
              

              onChange:(){
                setState(() {
                  dname = DateFormat('EEE d MMM').format(_dateTime);
                  print(dname);
                });
              };

               print(dname);
           }
         ),
        //   SizedBox(width:30),
        // Text(
        //            DateFormat('EEE d MMM').format(_dateTime),
        //            style:TextStyle(
        //               fontWeight:FontWeight.bold,
        //               fontSize:15
        //            )
        //        ),
         
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment:CrossAxisAlignment.center,
          children: <Widget>[
               Text(
                   DateFormat('EEE d MMM').format(_dateTime),
                   style:TextStyle(
                      fontWeight:FontWeight.bold,
                      fontSize:18
                   )
               ),
            
          ],
        )

      ],
    );
  }
}


String _convertDate(var selectedDate){

   var splitDate = selectedDate.split('-');
   //var monthNumber = splitDate[1].toString();
  // String monthName;

  // switch (monthNumber.toString()){
  //   case '01' : monthName = 'January';
  //               break;
  //   case '02' : monthName = 'February';
  //               break;
  //   case '03' : monthName = 'March';
  //               break;
  //   case '04' : monthName = 'April';
  //               break;
  //   case '05' : monthName = 'May';
  //               break;
  //   case '06' : monthName = 'June';
  //               break;
  //   case '07' : monthName = 'July';
  //               break;
  //   case '08' : monthName = 'August';
  //               break;
  //   case '09' : monthName = 'September';
  //               break;
  //   case '10' : monthName = 'October';
  //               break;
  //   case '11' : monthName = '';
  //               break;
  //   case '12' : monthName = 'January';
  //               break;
  // }

  return selectedDate;

}