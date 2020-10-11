import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';







class Pas4 extends StatefulWidget {
  @override
  _Pas4State createState() => _Pas4State();
}

class _Pas4State extends State<Pas4> {
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
                        "Only cats and dogs (accompanying a passenger) can be transported in the passenger cabin, unless it is forbidden by the state where the pets are transported to and provided the Croatia Airlines rules and regulations are complied with. Passengers must collect all the information about regulations of the country they are travelling to and make sure they possess the required documents. It is necessary to make a reservation in advance and pet transport is always charged additionally." 

"Animals have to be transported in a proper container, big enough for the animal to be able to stand in. The size of the container is limited and its dimensions cannot exceed 115 cm. The bottom of the container has to be water-resistant and the maximum weight of the container with the pet is 8 kg. Only one pet container is allowed per passenger. The container with the pet must be stowed on the floor under the seat in front of the passenger for the whole duration of the flight.",
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


