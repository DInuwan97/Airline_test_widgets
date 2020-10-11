import 'package:flutter/material.dart';
import 'package:myapp1/screens/SecondHomeScreen/screens/top_home_screen.dart';
import 'package:myapp1/screens/side_screen_drawer.dart';

import 'bottom_home_screen.dart';

class MainHomeScreen extends StatelessWidget {

  final PageStorageKey key;

  MainHomeScreen({this.key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
             appBar: AppBar(
            title: Text('Home',
              style:TextStyle(
                fontSize:18
              )
            ),
            elevation: 0.0,
            flexibleSpace: Container(
            decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent,Colors.blue[600],Colors.blue[300]],
            ),

            //  image: DecorationImage(
            //   image: AssetImage('./assets/images/cloud1.jpg'),
            //   colorFilter: new ColorFilter.mode(
            //       Colors.black.withOpacity(0.2), BlendMode.dstATop),
            //   fit: BoxFit.cover,
            //  )





          ),
            )
          ),
        
        drawer: SideNavigationDrawer(),
     
     body:Container(

          decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blue[200],Colors.blue[100],Colors.white30],
                      end: Alignment.bottomLeft,
                      begin: Alignment.topRight,
                    ),
            ),
       child: Column(
       
    // child:ListView(
          children: <Widget>[
            TopHomeScreen(),
           // bookBtn(context),
            BottomHomeScreen(),
          ]
    // )

    ),
     ),
    
    );
 
  }



}