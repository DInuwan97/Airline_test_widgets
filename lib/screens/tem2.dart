// import 'dart:math';

// import 'package:fancy_alert_dialog/fancy_alert_dialog.dart';
// import 'package:flutter/material.dart';
// import 'package:myapp1/screens/Search_Flight/search_flight_model/airport_list.dart';

// import 'airports.dart';

// class OneWayAirportSelector extends StatelessWidget {
 
// final String placeWhere,airportShort,airportLong;

//   const OneWayAirportSelector({Key key, this.placeWhere, this.airportShort, this.airportLong}) : super(key: key); 
//  //const OneWayAirportSelector(String placeWhere,String airportShort,String airportLong, this.placeWhere, this.airportShort, this.airportLong);

//   @override
//   Widget build(BuildContext context) {

//       String dropdownValue = 'One';
//      return  Padding(
//           padding:EdgeInsets.symmetric(vertical:30.0,horizontal:0.0),

//        child: Center(
         
//           child: RaisedButton(
//             color:Colors.grey[200].withOpacity(0.1),
//             padding: EdgeInsets.symmetric(vertical:5),
//               elevation: 0,
//               shape: RoundedRectangleBorder(
//                                 borderRadius: new BorderRadius.circular(8.0),
//                                 side: BorderSide(color: Colors.deepPurple[900]),
//                               ),
//             splashColor: Colors.blue[200],
//             animationDuration: Duration(seconds: 2),
//             colorBrightness: Brightness.dark,
//             child: _origin(placeWhere,airportShort,airportLong),
//             onPressed: () {
//               FancyAlertDialog.showFancyAlertDialog(
//                 context,
//                 'Info Fancy Alert Dialog Box',
//                 'This is a info alert dialog box. This plugin is used to help you easily create fancy dialog',
//                 Colors.blue,
//                 icon: Icon(
//                   Icons.flight,
//                   color: Colors.white,
//                 ),
//                 labelPositiveButton: 'OK',
//                 onTapPositiveButton: () {
//                   Navigator.pop(context);
//                   print('tap positive button');
//                 },
//                 labelNegativeButton: 'Cancel',
//                 onTapNegativeButton: () {
//                   Navigator.pop(context);
//                   print('tap negative button');
//                 },
//               );

//             }
//           )
//        ),
//      );
//   }


// }



  
// Widget _origin(String placeWhere,String airportShort,String airportLong){
//   return Column(
//     //crossAxisAlignment:CrossAxisAlignment.start,
//     //mainAxisAlignment:MainAxisAlignment.spaceBetween,
//     children: <Widget>[

//       Text(
//         placeWhere,
//         style:TextStyle(
//           color:Colors.black,
//           fontFamily:'Arial',
//           fontSize:15.0,
//           fontWeight:FontWeight.bold
//         )
//       ),

//       Text(airportShort,
//       textAlign:TextAlign.center,
//           style:TextStyle(
//           fontSize:25,
//           color:Colors.blue[900],
//           fontWeight:FontWeight.bold
//         )
//       ),

//       Text(
//         airportLong,
//         style:TextStyle(
//           color:Colors.blue[900],
//           fontFamily:'Oxygen',
//           fontSize:10.0,
//           fontWeight:FontWeight.bold
//         )
//       )
//     ],
//   );
// }



// Widget _destination(){
//   return Column(
//     //crossAxisAlignment:CrossAxisAlignment.start,
//    // mainAxisAlignment:MainAxisAlignment.spaceBetween,
//     children: <Widget>[

//       Text("CMB",
//       textAlign:TextAlign.center,
//         style:TextStyle(
//           fontSize:25,
//           color:Colors.blue[900],
//           fontWeight:FontWeight.bold
//         )
//       ),

//           Text(
//         "colombo,Sri Lanka",
//          textAlign:TextAlign.center,
//         style:TextStyle(
//            color:Colors.blue[900],
//           fontFamily:'Oxygen',
//           fontSize:10.0,
//           fontWeight:FontWeight.bold
//         )
//       )
//     ],
//   );
// }



// Widget _flightRouteConection(){
//   return Column(
// //SizedBox(height:10.0),
//     children: <Widget>[

      

// Transform.rotate(
//   angle: 90 * pi / 180,
//   child: IconButton(
//     icon: Icon(
//       Icons.flight,
//        color:Colors.blue[900],
//       size:35
//     ),
//     onPressed: null,
//   ),
  
// )

//     ]

//   );
// }