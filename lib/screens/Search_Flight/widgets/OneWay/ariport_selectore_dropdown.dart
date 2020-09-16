import 'dart:math';
import 'package:select_dialog/select_dialog.dart';
import 'package:fancy_alert_dialog/fancy_alert_dialog.dart';
import 'package:flutter/material.dart';




class OneWayAirportSelector extends StatefulWidget {

  final String placeWhere,airportShort,airportLong;
  OneWayAirportSelector({Key key, this.placeWhere, this.airportShort, this.airportLong}) : super(key: key);

  @override
  _OneWayAirportSelectorState createState() => _OneWayAirportSelectorState();
}

class _OneWayAirportSelectorState extends State<OneWayAirportSelector> {


  AirportListModel airportShortName = AirportListModel(shortName:"CRT") ;
  AirportListModel airportLongName = AirportListModel(longName:"Select");
  String shrtName = ".......";
  

 


   @override
  Widget build(BuildContext context) {

    // return Column(
       //children: <Widget>[
         // _origin(widget.placeWhere,widget.airportShort,widget.airportLong),

      // ],
       //child: _origin(widget.placeWhere,widget.airportShort,widget.airportLong),

     //);

     return Column(children: <Widget>[
        
          RaisedButton(
              child: _origin(widget.placeWhere,shrtName.toString(),airportLongName.toString()),
              color:Colors.grey[200].withOpacity(0.1),
              padding: EdgeInsets.symmetric(vertical:30,horizontal:15),
              elevation: 0,

             

              splashColor: Colors.blue[200],
              animationDuration: Duration(seconds: 2),
              colorBrightness: Brightness.dark,


              onPressed: () {
                SelectDialog.showModal<AirportListModel>(
                  
                  context,
              
                  label: "Select Airport",
                  items:airportListDetails,
                  selectedValue:airportShortName,
                  itemBuilder:
                  
                   (BuildContext context, AirportListModel item, bool isSelected) {
                    return Container(
                      width:MediaQuery.of(context).size.width * 1.4,
                      decoration: !isSelected
                          ? null
                          : BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue[100],
                             
                            ),
                      child: ListTile(
                     
                        selected: isSelected,
                        title: Text(
                          item.shortName,
                          style:TextStyle (
                            fontWeight:FontWeight.bold,
                            fontFamily: 'Arial',
                            fontSize:20
                          )
                        ),
                        subtitle: Text(
                          item.longName,
                          style: TextStyle(
                            fontWeight:FontWeight.bold
                          )
                        ),
                      ),
                    );
                  },
                  onChange: (selected) {
                    setState(() {
                      airportShortName = selected;
                      airportLongName = selected;
                      shrtName = selected.shortName;
                      print(selected.shortName);
                      print(airportLongName );
                    });
                  },
                );
              },
            ),





     ],
     );


   
  }
}





  
Widget _origin(String placeWhere,String airportShort,String airportLong){
  return Column(
    //crossAxisAlignment:CrossAxisAlignment.start,
    //mainAxisAlignment:MainAxisAlignment.spaceBetween,
    children: <Widget>[

      Text(
        placeWhere,
        style:TextStyle(
          color:Colors.black,
          fontFamily:'Arial',
          fontSize:15.0,
          fontWeight:FontWeight.bold
        )
      ),

      Text(airportShort,
      textAlign:TextAlign.center,
          style:TextStyle(
          fontSize:25,
          color:Colors.blue[900],
          fontWeight:FontWeight.bold
        )
      ),

      Text(
        airportLong,
        style:TextStyle(
          color:Colors.blue[900],
          fontFamily:'Oxygen',
          fontSize:10.0,
          fontWeight:FontWeight.bold
        )
      )
    ],
  );
}



Widget _destination(){
  return Column(
    //crossAxisAlignment:CrossAxisAlignment.start,
   // mainAxisAlignment:MainAxisAlignment.spaceBetween,
    children: <Widget>[

      Text("CMB",
      textAlign:TextAlign.center,
        style:TextStyle(
          fontSize:25,
          color:Colors.blue[900],
          fontWeight:FontWeight.bold
        )
      ),

          Text(
        "colombo,Sri Lanka",
         textAlign:TextAlign.center,
        style:TextStyle(
           color:Colors.blue[900],
          fontFamily:'Oxygen',
          fontSize:10.0,
          fontWeight:FontWeight.bold
        )
      )
    ],
  );
}



Widget _flightRouteConection(){
  return Column(
//SizedBox(height:10.0),
    children: <Widget>[

      

Transform.rotate(
  angle: 90 * pi / 180,
  child: IconButton(
    icon: Icon(
      Icons.flight,
       color:Colors.blue[900],
      size:35
    ),
    onPressed: null,
  ),
  
)

    ]

  );
}



// class UserModel {
//   final String id;
//   final String createdAt;
//   final String name;
//   final String avatar;


//   UserModel({this.id, this.createdAt, this.name, this.avatar});


//   @override
//   String toString() => name;

//   @override
//   operator ==(o) => o is UserModel && o.id == id;

//   @override
//   int get hashCode => id.hashCode^name.hashCode^createdAt.hashCode;

// }

// final List<UserModel> userList = [
//   UserModel(
//     id:"1",
//     createdAt:"2020/07/22",
//     name:"Dinuka Perera",
//     avatar:"https://i.imgur.com/lTy4hiN.jpg"
//   ),
//   UserModel(
//     id:"2",
//     createdAt:"2020/07/22",
//     name:"Dinuwan Kalubowila",
//     avatar:"https://i.imgur.com/lTy4hiN.jpg"
//   ),
//   UserModel(
//     id:"3",
//     createdAt:"2020/07/22",
//     name:"Pawan Piumal",
//     avatar:"https://i.imgur.com/lTy4hiN.jpg"
//   ),
//   UserModel(
//     id:"4",
//     createdAt:"2020/07/22",
//     name:"Sachin Piumal",
//     avatar:"https://i.imgur.com/lTy4hiN.jpg"
//   ),
//   UserModel(
//     id:"5",
//     createdAt:"2020/07/22",
//     name:"iroshan Krish",
//     avatar:"https://i.imgur.com/lTy4hiN.jpg"
//   )
// ];







class AirportListModel{
  
  final String airportId;
  final String shortName;
  final String longName;

  AirportListModel({this.airportId, this.shortName, this.longName});

  @override
  String toString() => longName;

  @override
  operator ==(o) => o is AirportListModel && o.airportId == airportId;

  @override
  int get hashCode => airportId.hashCode^longName.hashCode^shortName.hashCode;
}


final List<AirportListModel> airportListDetails =[
 AirportListModel(
    airportId:"1",
    shortName:"SGN",
    longName:"Changi,Singapore"
  ),
  AirportListModel(
    airportId:"2",
    shortName:"JKF",
    longName:"New York City,USA"
  ),
   AirportListModel(
    airportId:"3",
    shortName:"MTL",
    longName:"Mattala,Sri Lanka"
  ),
   AirportListModel(
    airportId:"4",
    shortName:"CNB",
    longName:"Canbera,Australia"
  )
];