

import 'package:flutter/material.dart';
import 'package:myapp1/screens/SecondHomeScreen/shapes/custome_shape_clipper.dart';
import './../widgets/choice_chips.dart';

class TopHomeScreen extends StatefulWidget {
  @override
  _TopHomeScreenState createState() => _TopHomeScreenState();
}


final Shader linearGradient = LinearGradient(
  colors: <Color>[Colors.blue[900],Colors.black],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));


const TextStyle dropDownLabelStyle =
    TextStyle(color: Colors.white, fontSize: 16.0);
const TextStyle dropDownMenuItemStyle =
    TextStyle(color: Colors.black, fontSize: 16.0);

class _TopHomeScreenState extends State<TopHomeScreen> {

var selectedLocation_index = 0;

// Color firstColor = Color(0xFFF47D15);
// Color secondColor = Color(0xFFEF772C);

Color firstColor = Colors.blue[900];
Color secondColor = Color(0xFF0D47A9);
Color thirdColor = Color(0xFF0D47B9);
Color fourthColor = Color(0xFF0D47C9);

List<String> locations = [
  'Boston (BOS)',
  'New York City (JKF)'
];

var selectedLocationIndex = 0;
var isFlightSelected = true;


  @override
  Widget build(BuildContext context) {




    return Stack(
            children: <Widget>[
              
        ClipPath(
          clipper:CustomeShapeClipper(),
          child:Container(
            height: 310.0,

            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blueAccent,Colors.blue[600],Colors.blue[300]],
              ),

            //   image: DecorationImage(
            //   image: AssetImage('./assets/images/cloud1.jpg'),
            //   colorFilter: new ColorFilter.mode(
            //       Colors.black.withOpacity(0.2), BlendMode.dstATop),
            //   fit: BoxFit.cover,
            // ),
              //color:Colors.blue
            ),

            child:Column(
              children: <Widget>[
               // SizedBox(height:40.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:8.0),
                  child: Row(
                  
                     children: <Widget>[
                    //   Icon(Icons.location_on,
                    //   color:Colors.white,
                    //   size:30.0
                    //  ),

                    //  SizedBox(width:8.0),

                    //  PopupMenuButton(

                    //   onSelected: (index){
                    //       setState((){
                    //           selectedLocation_index = index;
                    //       });
                    //   },

                    //    child:Row(

                    //      children: <Widget>[
                    //        Text( locations[selectedLocation_index], style:dropDownLabelStyle),
                    //        Icon(Icons.keyboard_arrow_down,color:Colors.white)
                    //      ]

                    //    ),

                    //    itemBuilder:(BuildContext context) => <PopupMenuItem<int>>[
                    //      PopupMenuItem(
                    //        child:Text( locations[0], style:dropDownMenuItemStyle),
                    //        value:0
                    //      ),
                    //      PopupMenuItem(
                    //        child:Text( locations[1], style:dropDownMenuItemStyle),
                    //        value:1
                    //      )
                    //    ]
                    //  ),


                    //  Spacer(),

                    //  Icon(Icons.settings,
                    //   color:Colors.white,
                    //   size:30.0
                    //  ),




                   ],

                  ),
                ),

                //SizedBox(height:20.0),

                
                 
                    Text('Welcome',
                    textAlign: TextAlign.center,
                      style:TextStyle(
                        fontSize:23.0,
                        color:Colors.white,
                      ),
                     
                    ),


                            Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'CROATIA',
                                  textAlign: TextAlign.center,
                                    style:TextStyle(
                                    fontSize:30.0,
                                    color:Colors.white,
                                    letterSpacing:2.5,
                                    fontWeight: FontWeight.w900
                                  ),
                                ),
                              ),
                              Text(
                                'AIRLINES',
                              textAlign: TextAlign.center,
                              style:TextStyle(
                                fontSize:24.0,
                                color:Colors.blue[900],
                                fontWeight: FontWeight.w700,
                                //foreground: Paint()..shader = linearGradient,
                              ),
                              ),
                            ],
                          ),

           

                     SizedBox(height:20.0),

                 Padding(
                  padding:EdgeInsets.symmetric(horizontal:32.0),
                  child: Material(
                    elevation:5.0,

                    color:Colors.white,
                    borderRadius:BorderRadius.all(Radius.circular(40.0)),
                    child:TextField(
                  
                        
                      style:TextStyle(
                        color:Colors.blue[900]
                      ),
                      controller: TextEditingController(
                        text:'Where would you fly ?', 
                      ),

                 

                      cursorColor: Theme.of(context).primaryColor,

                      decoration:InputDecoration(
                        
                        contentPadding: EdgeInsets.symmetric(horizontal:32.0,vertical:14.0),
                        suffixIcon:Material(
                          elevation:2.0,
                          borderRadius:BorderRadius.all(Radius.circular(30.0)),
                          child:Icon(
                            Icons.search,
                            color:Colors.black  
                          )
                        ),
                        border:InputBorder.none
                      )
                    )
                  )
                ),
                  
          


                SizedBox(height:30.0),


                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[


                    InkWell(
                      child: ChoiceChips(Icons.flight_takeoff,"Flights",isFlightSelected),
                      onTap:(){
                        setState(() {
                          isFlightSelected = true;
                        });
                      }
                    ),

                    SizedBox(width:20.0),

                    InkWell(
                      child: ChoiceChips(Icons.hotel,"Hotels", !isFlightSelected),
                         onTap:(){
                        setState(() {
                          isFlightSelected = false;
                        });
                      }
                    ),


                  ],
                )
               
              ],
            )
          )
        )
      ],
    );
  }
}