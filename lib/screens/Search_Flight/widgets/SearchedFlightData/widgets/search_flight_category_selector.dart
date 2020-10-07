import 'package:flutter/material.dart';

class SearchFlightListCategorySelector extends StatefulWidget {
  @override
  _SearchFlightListCategorySelectorState createState() => _SearchFlightListCategorySelectorState();
}

class _SearchFlightListCategorySelectorState extends State<SearchFlightListCategorySelector> {

int _selectedIndex = 0;
final List<Widget> categories = [
  
];



  @override
  Widget build(BuildContext context) {

 
  return Container(
        height:70.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                       colors: [Colors.blueAccent,Colors.blue[600],Colors.blue[300]],
                    ),
                ),

       child:Padding(
         padding: const EdgeInsets.symmetric(horizontal:25),
         child: Row(children: <Widget>[
           categoryBadge(0,'Sheduled Flights',Icons.timer),
            SizedBox(width: 10.0),
           categoryBadge(1,'Arrived Flights',Icons.flight_land)

         ],),
       )

  );


    
  }



Widget categoryBadge(int index,String name,IconData iconName){

     final TextStyle categoryTextStyle = TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
      color: Color(0xFFFFFFFF),
    );

    final TextStyle selectedCategoryTextStyle = categoryTextStyle.copyWith(
      color: Colors.blue,
    );

    return GestureDetector(

              onTap:(){
                setState(() {
                  _selectedIndex = index;
                });
              },


        child: Container(

       // margin:const EdgeInsets.symmetric(horizontal: 12.0),
       // padding: EdgeInsets.symmetric(horizontal:6.0),
        alignment: Alignment.center,
        width:150,
        height: 55,

        decoration:BoxDecoration(
          
          border:Border.all(color: index == _selectedIndex ? Colors.white : Color(0x99FFFFFF),width:3),
          borderRadius:BorderRadius.all(Radius.circular(50.0)),
          color:index == _selectedIndex ? Colors.white :  Colors.transparent
        ),

        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
             Icon(
               iconName,
               color:index == _selectedIndex ? Theme.of(context).primaryColor : Colors.white,
               size:25.0
              ),

              SizedBox(height: 2.0),

              Text(
                name,
                style:index == _selectedIndex ? selectedCategoryTextStyle : categoryTextStyle
              )
          ],
        )
      ),

);

  
}

}