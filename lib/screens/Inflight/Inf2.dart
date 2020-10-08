import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';







class Inf2 extends StatefulWidget {
  @override
  _Inf2State createState() => _Inf2State();
}

class _Inf2State extends State<Inf2> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) => Drawer(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/inflight.jpg"), fit: BoxFit.cover),
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
                      margin: EdgeInsets.only(top: 5, bottom: 10, right: 20, left:80),
                      child: Text(
                        "Inflight Services",
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
                        "Services Details",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize:20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      
                    ),
                    
                    Divider(
                      color: Colors.black,
                      thickness: 0.35,
                      height: 1,
                    ),
                    ListTile(
                      onTap: () {},
                      
                      title: Text(
                        "In order to minimize contact between passengers and crew we have adapted our standard inflight service. In accordance with the Croatian Institute of Public Health recommendations bottled water is available to passengers.",
                        style: TextStyle(color: Colors.black,fontSize:15),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.food_bank,
                        color: Colors.black,
                      ),
                      
                      title: Text(
                        "Sky Shop",
                        style: TextStyle(color: Colors.black,fontSize:20,fontStyle: FontStyle.italic),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      
                      title: Text(
                        "Sky Shop products are an addition to our regular inflight service, which is still included in the ticket price as before."

"You can now buy coffee, tea, juices, meals, snacks. All products on offer can be found in the catalogue, which you can find on board and on our website."

"We offer you a wide range of Croatian products and different articles such as "

"beverages,"
"watches,"
"souvenirs,"
"books,"
"games for children"
"The offer will be expanded gradually in accordance with your needs.",
                        style: TextStyle(color: Colors.black,fontSize:15),
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


