import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';







class Pas2 extends StatefulWidget {
  @override
  _Pas2State createState() => _Pas2State();
}

class _Pas2State extends State<Pas2> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) => Drawer(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/passenger1.jpg"), fit: BoxFit.cover),
            gradient: LinearGradient(
              
              colors: [Colors.lightBlue, Colors.blue[900]],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              tileMode: TileMode.clamp,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 10, right: 50, left:120),
                      child: Text(
                        "Passangers",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize:35
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 35, bottom: 10),
                      
                      child: Text(
                        "Passanger Details",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      
                    ),
                    
                    Divider(
                      color: Colors.white,
                      thickness: 0.35,
                      height: 1,
                    ),
                    ListTile(
                      onTap: () {},
                      
                      title: Text(
                        "Women who are less than 28 weeks pregnant and are experiencing no complications during their pregnancy are accepted on board without a doctor’s approval. Provided they are more than 28 weeks and less than 36 weeks pregnant, a valid doctor’s approval, not more than 7 days old, is requested. In case it is confirmed that the child birth would not occur within 4 weeks of the start of the journey, there are no medical obstacles for travelling by air.",
                        style: TextStyle(color: Colors.white,fontSize:15),
                      ),
                    ),
                    
                    
                    
                    
                    
                    
                    
                    

                    ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


