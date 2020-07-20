import 'package:flutter/material.dart';
import 'package:myapp1/screens/Search_Flight/search_flight_model/search_category.dart';
import 'package:provider/provider.dart';

import '../../../app_state.dart';

class SearchFlightCategory extends StatelessWidget {

  final Category category;
  SearchFlightCategory({Key key,this.category}):super(key:key);

  @override
  Widget build(BuildContext context) {

    final TextStyle categoryTextStyle = TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.bold,
      color: Color(0xFFFFFFFF),
    );

    final TextStyle selectedCategoryTextStyle = categoryTextStyle.copyWith(
      color: Colors.blue,
    );

    final appState = Provider.of<AppState>(context);
    final isSelected = appState.selectedCategoryId == category.categoryId;

     return GestureDetector(
      onTap: (){
        if(!isSelected){
          appState.updateCategoryId(category.categoryId);
        }
      },
      child: Container(

        margin:const EdgeInsets.symmetric(horizontal: 6.0),
        padding: EdgeInsets.symmetric(horizontal:6.0),
        alignment: Alignment.center,
        width:100,
        height: 50,

        decoration:BoxDecoration(
          border:Border.all(color: isSelected ? Colors.white : Color(0x99FFFFFF),width:3),
          borderRadius:BorderRadius.all(Radius.circular(46.0)),
          color:isSelected ?Colors.white :  Colors.transparent
        ),

        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
             Icon(
               category.icon,
               color:isSelected ? Theme.of(context).primaryColor : Colors.white,
               size:25.0
              ),

              SizedBox(height: 2.0),

              Text(
                category.name,
                style:isSelected ? selectedCategoryTextStyle : categoryTextStyle
              )
          ],
        )
      ),
    );
  }
}